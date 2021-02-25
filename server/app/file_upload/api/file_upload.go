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
	// @zgz
	var metaData model.FileUploadRequest
	pidStr := c.DefaultQuery("pid", "0")
	pid, _ := strconv.ParseInt(pidStr, 10, 64)
	metaData.Pid = pid

	var file model.FileUpload
	noSave := c.DefaultQuery("noSave", "0")
	_, header, err := c.Request.FormFile("file")
	if err != nil {
		global.GVA_LOG.Error("接收文件失败!", zap.Any("err", err))
		response.FailWithMessage("接收文件失败", c)
		return
	}

	//err, file = service.UploadFile(header, noSave) // 文件上传后拿到文件路径
	err, file = service.UploadFile(header, noSave, metaData) // 文件上传后拿到文件路径

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