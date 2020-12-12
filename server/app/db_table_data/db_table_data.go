package db_table_data

import (
	"fmt"
	"gin-vue-admin/global"
	"gin-vue-admin/middleware"
	"gin-vue-admin/model/response"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"log"
	"strings"
)

func InitRouter(Router *gin.RouterGroup) {
	r := Router.Group("dbTableData").Use(middleware.JWTAuth()).Use(middleware.CasbinHandler()).Use(middleware.OperationRecord())
	{
		r.GET("data", getData)   // 新建DemoApp
	}
}

type querys struct {
	DbName        string `json:"dbName" form:"dbName"`
	TableName     string `json:"tableName" form:"tableName"`
	QueryColumns []string `json:"queryColumns[]" form:"queryColumns[]"`
	Filter        string `json:"filter" form:"filter"`
}

func getData(c *gin.Context) {
	// 处理请求参数
	var q querys
	err := c.ShouldBindQuery(&q)
	if err != nil{
		log.Fatalln(err)
	}

	columns := ""
	for _, value := range q.QueryColumns {
		if value == "" {
			continue
		}
		columns += "`" + value + "`,"
	}
	columns = strings.TrimRight(columns, ",")

	if q.DbName == "" || q.TableName == "" || columns == "" {
		global.GVA_LOG.Error("参数错误")
		response.FailWithMessage("参数错误", c)
		return
	}

	// 拼接sql
	sql := ""
	if q.Filter == "" {
		sql = fmt.Sprintf("select %s from `%s`.`%s`;", columns, q.DbName, q.TableName)
	} else {
		sql = fmt.Sprintf("select %s from `%s`.`%s` where %s;", columns, q.DbName, q.TableName, q.Filter)
	}
	//println(sql)

	// 自动匹配字段，节省代码，易于维护
	// https://www.jianshu.com/p/50c9fbf4046c

	// 查询
	rows, err := global.GVA_DB.Raw(sql).Rows()
	if err != nil{
		log.Fatalln(err)
	}
	defer rows.Close()

	// 查询结果的列名
	cols, err := rows.Columns()
	if err != nil{
		log.Fatalln(err)
	}
	//fmt.Println(cols)
	vals := make([][]byte, len(cols))
	scans := make([]interface{}, len(cols))

	for i := range vals{
		scans[i] = &vals[i]
	}

	var results []map[string]string

	// 查询结果scan
	for rows.Next(){
		err = rows.Scan(scans...)
		if err != nil{
			log.Fatalln(err)
		}

		row := make(map[string]string)
		for k, v := range vals{
			key := cols[k]
			row[key] = string(v)
		}
		results = append(results, row)
	}

	// 打印结果
	//for k, v :=range results{
	//	fmt.Println(k, v)
	//}

	// 返回数据
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Any("err", err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(results, c)
	}
}