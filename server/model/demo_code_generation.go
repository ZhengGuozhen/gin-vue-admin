// 自动生成模板DemoCodeGeneration
package model

import (
	"gin-vue-admin/global"
)

// 如果含有time.Time 请自行import time包
type DemoCodeGeneration struct {
      global.GVA_MODEL
      Name  string `json:"name" form:"name" gorm:"column:name;comment:名称;type:varchar(255);size:255;"`
      Value  int `json:"value" form:"value" gorm:"column:value;comment:数值;type:int;size:11;"`
}


func (DemoCodeGeneration) TableName() string {
  return "demo_code_generation"
}


// 如果使用工作流功能 需要打开下方注释 并到initialize的workflow中进行注册 且必须指定TableName
// type DemoCodeGenerationWorkflow struct {
// 	// 工作流操作结构体
// 	WorkflowBase      `json:"wf"`
// 	DemoCodeGeneration   `json:"business"`
// }

// func (DemoCodeGeneration) TableName() string {
// 	return "demo_code_generation"
// }

// 工作流注册代码

// initWorkflowModel内部注册
// model.WorkflowBusinessStruct["demoCodeGeneration"] = func() model.GVA_Workflow {
//   return new(model.DemoCodeGenerationWorkflow)
// }

// initWorkflowTable内部注册
// model.WorkflowBusinessTable["demoCodeGeneration"] = func() interface{} {
// 	return new(model.DemoCodeGeneration)
// }
