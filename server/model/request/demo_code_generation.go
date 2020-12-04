package request

import "gin-vue-admin/model"

type DemoCodeGenerationSearch struct{
    model.DemoCodeGeneration
    PageInfo
}