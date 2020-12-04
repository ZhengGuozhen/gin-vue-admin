package router

import (
	"gin-vue-admin/api/v1"
	"gin-vue-admin/middleware"
	"github.com/gin-gonic/gin"
)

func InitDemoCodeGenerationRouter(Router *gin.RouterGroup) {
	DemoCodeGenerationRouter := Router.Group("demoCodeGeneration").Use(middleware.JWTAuth()).Use(middleware.CasbinHandler()).Use(middleware.OperationRecord())
	{
		DemoCodeGenerationRouter.POST("createDemoCodeGeneration", v1.CreateDemoCodeGeneration)   // 新建DemoCodeGeneration
		DemoCodeGenerationRouter.DELETE("deleteDemoCodeGeneration", v1.DeleteDemoCodeGeneration) // 删除DemoCodeGeneration
		DemoCodeGenerationRouter.DELETE("deleteDemoCodeGenerationByIds", v1.DeleteDemoCodeGenerationByIds) // 批量删除DemoCodeGeneration
		DemoCodeGenerationRouter.PUT("updateDemoCodeGeneration", v1.UpdateDemoCodeGeneration)    // 更新DemoCodeGeneration
		DemoCodeGenerationRouter.GET("findDemoCodeGeneration", v1.FindDemoCodeGeneration)        // 根据ID获取DemoCodeGeneration
		DemoCodeGenerationRouter.GET("getDemoCodeGenerationList", v1.GetDemoCodeGenerationList)  // 获取DemoCodeGeneration列表
	}
}
