package request

import "gin-vue-admin/app/demo_app/model"

type DemoAppSearch struct{
    model.DemoApp
    PageInfo
}