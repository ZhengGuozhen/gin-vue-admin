package v1

import (
	"gin-vue-admin/global"
    "gin-vue-admin/app/demo_app/model"
    "gin-vue-admin/app/demo_app/request"
    "gin-vue-admin/model/response"
    "gin-vue-admin/app/demo_app/service"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

// @Tags DemoApp
// @Summary 创建DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoApp true "创建DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /demoApp/createDemoApp [post]
func CreateDemoApp(c *gin.Context) {
	var demoApp model.DemoApp
	_ = c.ShouldBindJSON(&demoApp)
	if err := service.CreateDemoApp(demoApp); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Any("err", err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// @Tags DemoApp
// @Summary 删除DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoApp true "删除DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /demoApp/deleteDemoApp [delete]
func DeleteDemoApp(c *gin.Context) {
	var demoApp model.DemoApp
	_ = c.ShouldBindJSON(&demoApp)
	if err := service.DeleteDemoApp(demoApp); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Any("err", err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// @Tags DemoApp
// @Summary 批量删除DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /demoApp/deleteDemoAppByIds [delete]
func DeleteDemoAppByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := service.DeleteDemoAppByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Any("err", err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// @Tags DemoApp
// @Summary 更新DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoApp true "更新DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /demoApp/updateDemoApp [put]
func UpdateDemoApp(c *gin.Context) {
	var demoApp model.DemoApp
	_ = c.ShouldBindJSON(&demoApp)
	if err := service.UpdateDemoApp(demoApp); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Any("err", err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// @Tags DemoApp
// @Summary 用id查询DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoApp true "用id查询DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /demoApp/findDemoApp [get]
func FindDemoApp(c *gin.Context) {
	var demoApp model.DemoApp
	_ = c.ShouldBindQuery(&demoApp)
	if err, redemoApp := service.GetDemoApp(demoApp.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Any("err", err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"redemoApp": redemoApp}, c)
	}
}

// @Tags DemoApp
// @Summary 分页获取DemoApp列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.DemoAppSearch true "分页获取DemoApp列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /demoApp/getDemoAppList [get]
func GetDemoAppList(c *gin.Context) {
	var pageInfo request.DemoAppSearch
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := service.GetDemoAppInfoList(pageInfo); err != nil {
	    global.GVA_LOG.Error("获取失败", zap.Any("err", err))
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
