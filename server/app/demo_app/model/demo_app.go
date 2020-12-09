// 自动生成模板DemoApp
package model

import (
	"gin-vue-admin/global"
    "time"
)

// 如果含有time.Time 请自行import time包
type DemoApp struct {
      global.GVA_MODEL
      Name  string `json:"name" form:"name" gorm:"column:name;comment:名称;type:varchar(255);size:255;"`
      Value  int `json:"value" form:"value" gorm:"column:value;comment:值;type:int;size:11;"`
      Time  time.Time `json:"time" form:"time" gorm:"column:time;comment:时间;type:datetime;"`
}


func (DemoApp) TableName() string {
  return "demo_app"
}


// 如果使用工作流功能 需要打开下方注释 并到initialize的workflow中进行注册 且必须指定TableName
// type DemoAppWorkflow struct {
// 	// 工作流操作结构体
// 	WorkflowBase      `json:"wf"`
// 	DemoApp   `json:"business"`
// }

// func (DemoApp) TableName() string {
// 	return "demo_app"
// }

// 工作流注册代码

// initWorkflowModel内部注册
// model.WorkflowBusinessStruct["demoApp"] = func() model.GVA_Workflow {
//   return new(model.DemoAppWorkflow)
// }

// initWorkflowTable内部注册
// model.WorkflowBusinessTable["demoApp"] = func() interface{} {
// 	return new(model.DemoApp)
// }
