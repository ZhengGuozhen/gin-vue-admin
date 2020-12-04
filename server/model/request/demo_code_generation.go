package request

import "gin-vue-admin/model"

type DemoCodeGenerationSearch struct{
    model.DemoCodeGeneration
    // @zgz 增加匹配模式参数，避免字符串为空或数字为0时不执行查询
    Name_  string `json:"name_" form:"name_"`
    Value_  string `json:"value_" form:"value_"`
    PageInfo
}