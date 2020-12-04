package upload

import (
	"context"
	"errors"
	"fmt"
	"gin-vue-admin/global"
	"go.uber.org/zap"
	"mime/multipart"

	"github.com/minio/minio-go/v7"
	"github.com/minio/minio-go/v7/pkg/credentials"
)

type Minio struct{}

// Upload 上传文件
func (*Minio) UploadFile(file *multipart.FileHeader) (string, string, error) {
	client, newErr := minio.New(global.GVA_CONFIG.Minio.Endpoint, &minio.Options{ // 初始化minio client对象
		Creds: credentials.NewStaticV4(global.GVA_CONFIG.Minio.Id, global.GVA_CONFIG.Minio.Secret, global.GVA_CONFIG.Minio.Token),
		Secure: global.GVA_CONFIG.Minio.UseSsl,
	})
	if newErr != nil {
		global.GVA_LOG.Error("function minio.New() Filed", zap.Any("err", newErr.Error()))
		return "", "", errors.New("function oss.New() Filed, err:" + newErr.Error())
	}
	ctx := context.Background()
	if bucketErr := client.MakeBucket(ctx, global.GVA_CONFIG.Minio.Bucket, minio.MakeBucketOptions{Region: ""}); bucketErr != nil {
		if exists, existsErr := client.BucketExists(ctx, global.GVA_CONFIG.Minio.Bucket); !exists && existsErr != nil { // 检查我们是否已经拥有此存储桶(如果您运行两次，就会发生这种情况)
			global.GVA_LOG.Error("function client.BucketExists() Filed", zap.Any("err", existsErr.Error()))
			return "", "", errors.New("function client.BucketExists() Filed, err:" + existsErr.Error())
		}
		global.GVA_LOG.Info(fmt.Sprintf("We already own %s\n", global.GVA_CONFIG.Minio.Bucket))
	} else {
		global.GVA_LOG.Info(fmt.Sprintf("Successfully created %s\n", global.GVA_CONFIG.Minio.Bucket))
	}

	objectName := getObjectName(file.Filename)

	f, openErr := file.Open()
	if openErr != nil {
		global.GVA_LOG.Error("function file.Open() Filed", zap.Any("err", openErr.Error()))

		return "", "", errors.New("function file.Open() Filed, err:" + openErr.Error())
	}

	// 获取文件类型
	contentType := file.Header.Get("content-type")

	info, putErr := client.PutObject(ctx, global.GVA_CONFIG.Minio.Bucket, objectName, f, file.Size, minio.PutObjectOptions{ContentType: contentType})
	if putErr != nil {
		global.GVA_LOG.Error("function client.PutObject() Filed", zap.Any("err", putErr.Error()))
		return "", "", errors.New("function client.PutObject() Filed, err:" + putErr.Error())
	}

	global.GVA_LOG.Info(fmt.Sprintf("Successfully uploaded %s of size %d\n", objectName, info))
	return global.GVA_CONFIG.Minio.Path + "/" + global.GVA_CONFIG.Minio.Bucket + "/" + objectName, objectName, nil
}

// DeleteFile 删除文件
func (*Minio) DeleteFile(key string) error {
	client, newErr := minio.New(global.GVA_CONFIG.Minio.Endpoint, &minio.Options{
		Creds: credentials.NewStaticV4(global.GVA_CONFIG.Minio.Id, global.GVA_CONFIG.Minio.Secret, global.GVA_CONFIG.Minio.Token),
		Secure: global.GVA_CONFIG.Minio.UseSsl,
	}) // Initialize minio client object.
	if newErr != nil {
		global.GVA_LOG.Error("function minio.New() Filed", zap.Any("err", newErr.Error()))
		return errors.New("function minio.New() Filed, err:" + newErr.Error())
	}
	opts := minio.RemoveObjectOptions{GovernanceBypass: true}
	removeErr := client.RemoveObject(context.Background(), global.GVA_CONFIG.Minio.Bucket, key, opts)
	if removeErr != nil {
		global.GVA_LOG.Error("function client.RemoveObject() Filed", zap.Any("err", removeErr.Error()))
		return errors.New("function client.RemoveObject() Filed, err:" + removeErr.Error())
	}
	return nil
}