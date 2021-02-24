package model

import (
	"gin-vue-admin/global"
)

type FileUpload struct {
	global.GVA_MODEL
	Name string `json:"name" gorm:"comment:文件名"`
	Url  string `json:"url" gorm:"comment:文件地址"`
	Tag  string `json:"tag" gorm:"comment:文件标签"`
	Key  string `json:"key" gorm:"comment:编号"`

	// todo 添加额外的字段
	Submitter string `json:"submitter" gorm:"comment:上传人"`
}

func (FileUpload) TableName() string {
	return "file_upload"
}

type FileUploadResponse struct {
	File FileUpload `json:"file"`
}

