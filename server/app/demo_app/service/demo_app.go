package service

import (
	"gin-vue-admin/app/demo_app/model"
	"gin-vue-admin/app/demo_app/request"
	"gin-vue-admin/global"
)

//@author: [piexlmax](https://github.com/piexlmax)
//@function: CreateDemoApp
//@description: 创建DemoApp记录
//@param: demoApp model.DemoApp
//@return: err error

func CreateDemoApp(demoApp model.DemoApp) (err error) {
	err = global.GVA_DB.Create(&demoApp).Error
	return err
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: DeleteDemoApp
//@description: 删除DemoApp记录
//@param: demoApp model.DemoApp
//@return: err error

func DeleteDemoApp(demoApp model.DemoApp) (err error) {
	err = global.GVA_DB.Delete(demoApp).Error
	return err
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: DeleteDemoAppByIds
//@description: 批量删除DemoApp记录
//@param: ids request.IdsReq
//@return: err error

func DeleteDemoAppByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]model.DemoApp{},"id in ?",ids.Ids).Error
	return err
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: UpdateDemoApp
//@description: 更新DemoApp记录
//@param: demoApp *model.DemoApp
//@return: err error

func UpdateDemoApp(demoApp model.DemoApp) (err error) {
	err = global.GVA_DB.Save(&demoApp).Error
	return err
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: GetDemoApp
//@description: 根据id获取DemoApp记录
//@param: id uint
//@return: err error, demoApp model.DemoApp

func GetDemoApp(id uint) (err error, demoApp model.DemoApp) {
	err = global.GVA_DB.Where("id = ?", id).First(&demoApp).Error
	return
}

//@author: [piexlmax](https://github.com/piexlmax)
//@function: GetDemoAppInfoList
//@description: 分页获取DemoApp记录
//@param: info request.DemoAppSearch
//@return: err error, list interface{}, total int64

func GetDemoAppInfoList(info request.DemoAppSearch) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&model.DemoApp{})
    var demoApps []model.DemoApp
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.Name != "" {
        db = db.Where("`name` LIKE ?","%"+ info.Name+"%")
    }
    if info.Value != 0 {
        db = db.Where("`value` = ?",info.Value)
    }
    if !info.Time.IsZero() {
         db = db.Where("`time` > ?",info.Time)
    }
	err = db.Count(&total).Error
	err = db.Limit(limit).Offset(offset).Find(&demoApps).Error
	return err, demoApps, total
}