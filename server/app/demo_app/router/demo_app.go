package router

import (
	"gin-vue-admin/app/demo_app/api"
	"gin-vue-admin/middleware"
	"github.com/gin-gonic/gin"
)

func InitDemoAppRouter(Router *gin.RouterGroup) {
	DemoAppRouter := Router.Group("demoApp").Use(middleware.JWTAuth()).Use(middleware.CasbinHandler()).Use(middleware.OperationRecord())
	{
		DemoAppRouter.POST("createDemoApp", v1.CreateDemoApp)   // 新建DemoApp
		DemoAppRouter.DELETE("deleteDemoApp", v1.DeleteDemoApp) // 删除DemoApp
		DemoAppRouter.DELETE("deleteDemoAppByIds", v1.DeleteDemoAppByIds) // 批量删除DemoApp
		DemoAppRouter.PUT("updateDemoApp", v1.UpdateDemoApp)    // 更新DemoApp
		DemoAppRouter.GET("findDemoApp", v1.FindDemoApp)        // 根据ID获取DemoApp
		DemoAppRouter.GET("getDemoAppList", v1.GetDemoAppList)  // 获取DemoApp列表
	}
}
