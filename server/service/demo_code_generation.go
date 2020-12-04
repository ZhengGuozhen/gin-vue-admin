package service

import (
	"gin-vue-admin/global"
	"gin-vue-admin/model"
	"gin-vue-admin/model/request"
)

//@author: [piexlmax](https://github.com/piexlmax)
//@function: CreateDemoCodeGeneration
//@description: 创建DemoCodeGeneration记录
//@param: demoCodeGeneration model.DemoCodeGeneration
//@return: err error

func CreateDemoCodeGeneration(demoCodeGeneration model.DemoCodeGeneration) (err error) {
	err = global.GVA_DB.Create(&demoCodeGeneration).Error
	return err
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: DeleteDemoCodeGeneration
//@description: 删除DemoCodeGeneration记录
//@param: demoCodeGeneration model.DemoCodeGeneration
//@return: err error

func DeleteDemoCodeGeneration(demoCodeGeneration model.DemoCodeGeneration) (err error) {
	err = global.GVA_DB.Delete(demoCodeGeneration).Error
	return err
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: DeleteDemoCodeGenerationByIds
//@description: 批量删除DemoCodeGeneration记录
//@param: ids request.IdsReq
//@return: err error

func DeleteDemoCodeGenerationByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]model.DemoCodeGeneration{},"id in ?",ids.Ids).Error
	return err
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: UpdateDemoCodeGeneration
//@description: 更新DemoCodeGeneration记录
//@param: demoCodeGeneration *model.DemoCodeGeneration
//@return: err error

func UpdateDemoCodeGeneration(demoCodeGeneration model.DemoCodeGeneration) (err error) {
	err = global.GVA_DB.Save(&demoCodeGeneration).Error
	return err
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: GetDemoCodeGeneration
//@description: 根据id获取DemoCodeGeneration记录
//@param: id uint
//@return: err error, demoCodeGeneration model.DemoCodeGeneration

func GetDemoCodeGeneration(id uint) (err error, demoCodeGeneration model.DemoCodeGeneration) {
	err = global.GVA_DB.Where("id = ?", id).First(&demoCodeGeneration).Error
	return
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: GetDemoCodeGenerationInfoList
//@description: 分页获取DemoCodeGeneration记录
//@param: info request.DemoCodeGenerationSearch
//@return: err error, list interface{}, total int64

func GetDemoCodeGenerationInfoList(info request.DemoCodeGenerationSearch) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&model.DemoCodeGeneration{})
    var demoCodeGenerations []model.DemoCodeGeneration
    // 如果有条件搜索 下方会自动创建搜索语句
    /*if info.Name != "" {
        db = db.Where("`name` LIKE ?","%"+ info.Name+"%")
    }
	if info.Value != 0 {
       db = db.Where("`value` = ?",info.Value)
    }*/
	// @zgz
	if info.Name_ != "" {
		db = db.Where("`name`" + info.Name_ + "?",info.Name)
	}
	if info.Value_ != "" {
		db = db.Where("`value`" + info.Value_ + "?",info.Value)
	}

	err = db.Count(&total).Error
	err = db.Limit(limit).Offset(offset).Find(&demoCodeGenerations).Error
	return err, demoCodeGenerations, total
}