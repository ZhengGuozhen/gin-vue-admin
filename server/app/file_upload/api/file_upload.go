package api

import (
	"gin-vue-admin/app/file_upload/model"
	"gin-vue-admin/app/file_upload/service"
	"gin-vue-admin/global"
	"gin-vue-admin/model/request"
	"gin-vue-admin/model/response"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"strconv"
)

func UploadFile(c *gin.Context) {
	// @zgz 使用url参数和post form参数
	var requestData model.FileUploadRequest
	requestData.Pid, _ = strconv.ParseInt(c.DefaultQuery("pid", "0"), 10, 64)
	requestData.Meta = c.DefaultPostForm("meta", "{}")
	//global.GVA_LOG.Info(requestData.Meta)

	var file model.FileUpload
	noSave := c.DefaultQuery("noSave", "0")
	_, header, err := c.Request.FormFile("file")
	if err != nil {
		global.GVA_LOG.Error("接收文件失败!", zap.Any("err", err))
		response.FailWithMessage("接收文件失败", c)
		return
	}

	//err, file = service.UploadFile(header, noSave) // 文件上传后拿到文件路径
	err, file = service.UploadFile(header, noSave, requestData) // 文件上传后拿到文件路径

	if err != nil {
		global.GVA_LOG.Error("修改数据库链接失败!", zap.Any("err", err))
		response.FailWithMessage("修改数据库链接失败", c)
		return
	}
	response.OkWithDetailed(model.FileUploadResponse{File: file}, "上传成功", c)
}

func DeleteFile(c *gin.Context) {
	var file model.FileUpload
	_ = c.ShouldBindJSON(&file)
	if err := service.DeleteFile(file); err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Any("err", err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func GetFileList(c *gin.Context) {
	var pageInfo request.PageInfo
	_ = c.ShouldBindJSON(&pageInfo)
	err, list, total := service.GetFileRecordInfoList(pageInfo)
	if err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Any("err", err))
		response.FailWithMessage("获取失败", c)
	} else {
		response.OkWithDetailed(response.PageResult{
			List:     list,
			Total:    total,
			Page:     pageInfo.Page,
			PageSize: pageInfo.PageSize,
		}, "获取成功", c)
	}
}

func DownloadFile(c *gin.Context) {
	// 方法1
	//c.Writer.Header().Add("Content-Disposition", fmt.Sprintf("attachment; filename=%s", "文件重命名"))
	//c.Writer.Header().Add("Content-Type", "application/octet-stream")
	//c.File("./go.mod")

	// 方法2
	//const DOWNLOADS_PATH = "./"
	//fileName := "go.mod"
	//targetPath := filepath.Join(DOWNLOADS_PATH, fileName)
	////This ckeck is for example, I not sure is it can prevent all possible filename attacks - will be much better if real filename will not come from user side. I not even tryed this code
	//if !strings.HasPrefix(filepath.Clean(targetPath), DOWNLOADS_PATH) {
	//	c.String(403, "Look like you attacking me")
	//	return
	//}
	////Seems this headers needed for some browsers (for example without this headers Chrome will download files as txt)
	//c.Header("Content-Description", "File Transfer")
	//c.Header("Content-Transfer-Encoding", "binary")
	//c.Header("Content-Disposition", "attachment; filename="+fileName )
	//c.Header("Content-Type", "application/octet-stream")
	//c.File(targetPath)

	// 方法3
	//c.FileAttachment("./go.mod","go.mod")

	// 对应 POST 请求中 "Content-Type": "multipart/form-data"
	/*
		c.DefaultPostForm("url", "asd")				// 获取单个字段
		c.ShouldBindWith(&form, binding.Form)		// 显式声明绑定 multipart form
		c.ShouldBind(&form, binding.Form)			// 自动绑定
	*/

	// 对应 POST 请求中 'Content-Type': 'application/json'
	/*
		c.ShouldBindJSON(&file)  // 显式声明绑定 json
		c.ShouldBind(&file)		 // 自动绑定
	*/

	// todo 根据oss类型和请求的参数，配置下载文件的路径和文件名，目前仅适配local
	if global.GVA_CONFIG.System.OssType == "local" {
		var file model.FileUpload
		_ = c.ShouldBindJSON(&file)
		//println(file.Name)
		//println(file.Url)

		c.Header("Content-Description", "zgz")
		c.FileAttachment(file.Url, file.Name)

	} else if global.GVA_CONFIG.System.OssType == "minio" {
		response.FailWithMessage("不支持的存储模式", c)
	} else {
		response.FailWithMessage("不支持的存储模式", c)
	}
}
