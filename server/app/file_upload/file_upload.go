package file_upload

import (
	"gin-vue-admin/app/file_upload/api"
	"gin-vue-admin/middleware"
	"github.com/gin-gonic/gin"
)

func InitRouter(Router *gin.RouterGroup) {
	r := Router.Group("fileUpload").Use(middleware.JWTAuth()).Use(middleware.CasbinHandler()).Use(middleware.OperationRecord())
	//r := Router.Group("fileUpload").Use(middleware.OperationRecord())
	{
		r.POST("/upload", api.UploadFile)                                 // 上传文件
		r.POST("/getFileList", api.GetFileList)                           // 获取上传文件列表
		r.POST("/deleteFile", api.DeleteFile)                             // 删除指定文件
		r.POST("/downloadFile", api.DownloadFile)                  // 下载文件
	}
}

