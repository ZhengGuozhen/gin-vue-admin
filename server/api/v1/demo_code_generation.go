package v1

import (
	"gin-vue-admin/global"
    "gin-vue-admin/model"
    "gin-vue-admin/model/request"
    "gin-vue-admin/model/response"
    "gin-vue-admin/service"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

// @Tags DemoCodeGeneration
// @Summary 创建DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoCodeGeneration true "创建DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /demoCodeGeneration/createDemoCodeGeneration [post]
func CreateDemoCodeGeneration(c *gin.Context) {
	var demoCodeGeneration model.DemoCodeGeneration
	_ = c.ShouldBindJSON(&demoCodeGeneration)
	if err := service.CreateDemoCodeGeneration(demoCodeGeneration); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Any("err", err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// @Tags DemoCodeGeneration
// @Summary 删除DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoCodeGeneration true "删除DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /demoCodeGeneration/deleteDemoCodeGeneration [delete]
func DeleteDemoCodeGeneration(c *gin.Context) {
	var demoCodeGeneration model.DemoCodeGeneration
	_ = c.ShouldBindJSON(&demoCodeGeneration)
	if err := service.DeleteDemoCodeGeneration(demoCodeGeneration); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Any("err", err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// @Tags DemoCodeGeneration
// @Summary 批量删除DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /demoCodeGeneration/deleteDemoCodeGenerationByIds [delete]
func DeleteDemoCodeGenerationByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := service.DeleteDemoCodeGenerationByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Any("err", err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// @Tags DemoCodeGeneration
// @Summary 更新DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoCodeGeneration true "更新DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /demoCodeGeneration/updateDemoCodeGeneration [put]
func UpdateDemoCodeGeneration(c *gin.Context) {
	var demoCodeGeneration model.DemoCodeGeneration
	_ = c.ShouldBindJSON(&demoCodeGeneration)
	if err := service.UpdateDemoCodeGeneration(demoCodeGeneration); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Any("err", err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// @Tags DemoCodeGeneration
// @Summary 用id查询DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoCodeGeneration true "用id查询DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /demoCodeGeneration/findDemoCodeGeneration [get]
func FindDemoCodeGeneration(c *gin.Context) {
	var demoCodeGeneration model.DemoCodeGeneration
	_ = c.ShouldBindQuery(&demoCodeGeneration)
	if err, redemoCodeGeneration := service.GetDemoCodeGeneration(demoCodeGeneration.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Any("err", err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"redemoCodeGeneration": redemoCodeGeneration}, c)
	}
}

// @Tags DemoCodeGeneration
// @Summary 分页获取DemoCodeGeneration列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.DemoCodeGenerationSearch true "分页获取DemoCodeGeneration列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /demoCodeGeneration/getDemoCodeGenerationList [get]
func GetDemoCodeGenerationList(c *gin.Context) {
	var pageInfo request.DemoCodeGenerationSearch
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := service.GetDemoCodeGenerationInfoList(pageInfo); err != nil {
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
