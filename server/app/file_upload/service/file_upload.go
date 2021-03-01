package service

import (
	"errors"
	"gin-vue-admin/app/file_upload/model"
	"gin-vue-admin/global"
	"gin-vue-admin/model/request"
	"gin-vue-admin/utils/upload"
	"mime/multipart"
	"strings"
)

func Upload(file model.FileUpload) error {
	return global.GVA_DB.Create(&file).Error
}

func FindFile(id uint) (error, model.FileUpload) {
	var file model.FileUpload
	err := global.GVA_DB.Where("id = ?", id).First(&file).Error
	return err, file
}

func DeleteFile(file model.FileUpload) (err error) {
	var fileFromDb model.FileUpload
	err, fileFromDb = FindFile(file.ID)
	oss := upload.NewOss()
	if err = oss.DeleteFile(fileFromDb.Key); err != nil {
		return errors.New("文件删除失败")
	}
	err = global.GVA_DB.Where("id = ?", file.ID).Unscoped().Delete(&file).Error
	return err
}

func GetFileRecordInfoList(info request.PageInfo) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB
	var fileLists []model.FileUpload
	err = db.Find(&fileLists).Count(&total).Error
	err = db.Limit(limit).Offset(offset).Order("updated_at desc").Find(&fileLists).Error
	return err, fileLists, total
}

//func UploadFile(header *multipart.FileHeader, noSave string) (err error, file model.FileUpload) {
func UploadFile(header *multipart.FileHeader, noSave string, requestData model.FileUploadRequest) (err error, file model.FileUpload) {
	oss := upload.NewOss()
	filePath, key, uploadErr := oss.UploadFile(header)
	if uploadErr != nil {
		panic(err)
	}
	if noSave == "0" {
		s := strings.Split(header.Filename, ".")
		f := model.FileUpload{
			Url:  filePath,
			Name: header.Filename,
			Tag:  s[len(s)-1],
			Key:  key,
			// @zgz
			Pid: requestData.Pid,
			Meta: requestData.Meta,
		}
		return Upload(f), f
	}
	return
}
