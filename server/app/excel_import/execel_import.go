package excel

import (
	"fmt"
	"gin-vue-admin/global"
	"gin-vue-admin/middleware"
	"gin-vue-admin/model/response"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

func InitRouter(Router *gin.RouterGroup) {
	r := Router.Group("excel").Use(middleware.JWTAuth()).Use(middleware.CasbinHandler()).Use(middleware.OperationRecord())
	{
		r.POST("import", importData)   // 新建DemoApp
	}
}

type data struct {
	Db  string `json:"db" form:"db"`
	Table  string `json:"table" form:"table"`
	Fields  string `json:"fields" form:"fields"`
	Values  string `json:"values" form:"values"`
}
func importData(c *gin.Context) {
	var d data
	_ = c.ShouldBindJSON(&d)

	sql := fmt.Sprintf("INSERT INTO `%s`.`%s` %s VALUES %s", d.Db, d.Table, d.Fields, d.Values)

	err := global.GVA_DB.Debug().Exec(sql).Error

	if err != nil {
		global.GVA_LOG.Error("excel导入失败!", zap.Any("err", err))
		response.FailWithMessage("excel导入失败", c)
	} else {
		response.OkWithMessage("excel导入成功", c)
	}
}