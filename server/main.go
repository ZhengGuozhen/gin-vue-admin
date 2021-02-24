package main

import (
	dbTableData "gin-vue-admin/app/db_table_data"
	demoApp "gin-vue-admin/app/demo_app/router"
	excel "gin-vue-admin/app/excel_import"
	fileUpload "gin-vue-admin/app/file_upload"
	"gin-vue-admin/core"
	"gin-vue-admin/global"
	"gin-vue-admin/initialize"
)

// @title Swagger Example API
// @version 0.0.1
// @description This is a sample Server pets
// @securityDefinitions.apikey ApiKeyAuth
// @in header
// @name x-token
// @BasePath /
func main() {
	global.GVA_VP = core.Viper()          // 初始化Viper
	global.GVA_LOG = core.Zap()           // 初始化zap日志库
	global.GVA_DB = initialize.Gorm()     // gorm连接数据库
	initialize.MysqlTables(global.GVA_DB) // 初始化表
	// 程序结束前关闭数据库链接
	db, _ := global.GVA_DB.DB()
	defer db.Close()

	core.InitRouter()

	// @zgz，添加app
	demoApp.InitDemoAppRouter(global.GVA_ROUTER.Group(""))
	excel.InitRouter(global.GVA_ROUTER.Group(""))
	dbTableData.InitRouter(global.GVA_ROUTER.Group(""))
	fileUpload.InitRouter(global.GVA_ROUTER.Group(""))

	core.RunWindowsServer()
}
