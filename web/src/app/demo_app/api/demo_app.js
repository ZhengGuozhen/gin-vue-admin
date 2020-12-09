import service from '@/utils/request'

// @Tags DemoApp
// @Summary 创建DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoApp true "创建DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /demoApp/createDemoApp [post]
export const createDemoApp = (data) => {
     return service({
         url: "/demoApp/createDemoApp",
         method: 'post',
         data
     })
 }


// @Tags DemoApp
// @Summary 删除DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoApp true "删除DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /demoApp/deleteDemoApp [delete]
 export const deleteDemoApp = (data) => {
     return service({
         url: "/demoApp/deleteDemoApp",
         method: 'delete',
         data
     })
 }

// @Tags DemoApp
// @Summary 删除DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /demoApp/deleteDemoApp [delete]
 export const deleteDemoAppByIds = (data) => {
     return service({
         url: "/demoApp/deleteDemoAppByIds",
         method: 'delete',
         data
     })
 }

// @Tags DemoApp
// @Summary 更新DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoApp true "更新DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /demoApp/updateDemoApp [put]
 export const updateDemoApp = (data) => {
     return service({
         url: "/demoApp/updateDemoApp",
         method: 'put',
         data
     })
 }


// @Tags DemoApp
// @Summary 用id查询DemoApp
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.DemoApp true "用id查询DemoApp"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /demoApp/findDemoApp [get]
 export const findDemoApp = (params) => {
     return service({
         url: "/demoApp/findDemoApp",
         method: 'get',
         params
     })
 }


// @Tags DemoApp
// @Summary 分页获取DemoApp列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.PageInfo true "分页获取DemoApp列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /demoApp/getDemoAppList [get]
 export const getDemoAppList = (params) => {
     return service({
         url: "/demoApp/getDemoAppList",
         method: 'get',
         params
     })
 }