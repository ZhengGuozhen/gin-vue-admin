import service from '@/utils/request'

// @Tags DemoCodeGeneration
// @Summary 创建DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoCodeGeneration true "创建DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /demoCodeGeneration/createDemoCodeGeneration [post]
export const createDemoCodeGeneration = (data) => {
     return service({
         url: "/demoCodeGeneration/createDemoCodeGeneration",
         method: 'post',
         data
     })
 }


// @Tags DemoCodeGeneration
// @Summary 删除DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoCodeGeneration true "删除DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /demoCodeGeneration/deleteDemoCodeGeneration [delete]
 export const deleteDemoCodeGeneration = (data) => {
     return service({
         url: "/demoCodeGeneration/deleteDemoCodeGeneration",
         method: 'delete',
         data
     })
 }

// @Tags DemoCodeGeneration
// @Summary 删除DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /demoCodeGeneration/deleteDemoCodeGeneration [delete]
 export const deleteDemoCodeGenerationByIds = (data) => {
     return service({
         url: "/demoCodeGeneration/deleteDemoCodeGenerationByIds",
         method: 'delete',
         data
     })
 }

// @Tags DemoCodeGeneration
// @Summary 更新DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoCodeGeneration true "更新DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /demoCodeGeneration/updateDemoCodeGeneration [put]
 export const updateDemoCodeGeneration = (data) => {
     return service({
         url: "/demoCodeGeneration/updateDemoCodeGeneration",
         method: 'put',
         data
     })
 }


// @Tags DemoCodeGeneration
// @Summary 用id查询DemoCodeGeneration
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoCodeGeneration true "用id查询DemoCodeGeneration"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /demoCodeGeneration/findDemoCodeGeneration [get]
 export const findDemoCodeGeneration = (params) => {
     return service({
         url: "/demoCodeGeneration/findDemoCodeGeneration",
         method: 'get',
         params
     })
 }


// @Tags DemoCodeGeneration
// @Summary 分页获取DemoCodeGeneration列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.PageInfo true "分页获取DemoCodeGeneration列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /demoCodeGeneration/getDemoCodeGenerationList [get]
 export const getDemoCodeGenerationList = (params) => {
     return service({
         url: "/demoCodeGeneration/getDemoCodeGenerationList",
         method: 'get',
         params
     })
 }