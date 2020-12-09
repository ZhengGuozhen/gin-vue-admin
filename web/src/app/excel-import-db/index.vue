<template>
  <div class="app-container">
    <upload-excel-component :on-success="handleSuccess" :before-upload="beforeUpload" />

    <el-table
      v-if="false"
      :data="tableData"
      border
      highlight-current-row
      style="width: 100%;margin-top:20px;"
    >
      <el-table-column v-for="item of tableHeader" :key="item" :prop="item" :label="item" />
    </el-table>

    <vxe-table
      ref="xTable"
      border
      stripe
      resizable
      highlight-hover-row
      show-overflow
      height="400"
      :data="tableData"
      style="width: 100%;margin-top:20px;"
    >
      <vxe-table-column v-for="item of tableHeader" :key="item" :field="item" :title="item"></vxe-table-column>
    </vxe-table>

    <el-row>
      <el-form ref="getTableForm" :inline="true" :model="dbform" label-width="120px">
        <el-form-item label="数据库名">
          <el-select @change="getTable" v-model="dbform.dbName" filterable placeholder="请选择数据库">
            <el-option
              v-for="item in dbOptions"
              :key="item.database"
              :label="item.database"
              :value="item.database"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="表名">
          <el-select
            @change="getColumn"
            v-model="dbform.tableName"
            :disabled="!dbform.dbName"
            filterable
            placeholder="请选择表"
          >
            <el-option
              v-for="item in tableOptions"
              :key="item.tableName"
              :label="item.tableName"
              :value="item.tableName"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item>
          <el-button @click="autoMap" type="primary">自动映射</el-button>
        </el-form-item>
        <el-form-item>
          <el-button @click="insertData" type="success">插入数据</el-button>
        </el-form-item>
      </el-form>
    </el-row>

    <el-row>
      <el-form ref="fieldMap" :inline="true" :model="fieldMap" label-width="120px">
        <el-form-item v-for="item in tableColumns" :key="item" :label="item" :value="item">
          <el-select v-model="fieldMap[item]" filterable placeholder="请选择字段">
            <el-option label="不插入" value></el-option>
            <el-option v-for="item in tableHeader" :key="item" :label="item" :value="item"></el-option>
          </el-select>
        </el-form-item>
      </el-form>
    </el-row>
  </div>
</template>

<script>
import UploadExcelComponent from "@/components/excel-upload";
import { getDB, getTable, getColumn } from "@/api/autoCode.js";
import service from "@/utils/request";

export default {
  name: "UploadExcel",
  components: { UploadExcelComponent },
  data() {
    return {
      tableData: [],
      tableHeader: [],
      ////////////////////////////
      dbform: {
        dbName: "",
        tableName: ""
      },
      dbOptions: [],
      tableOptions: [],
      tableColumns: [],
      ////////////////////////////
      fieldMap: {}
    };
  },
  methods: {
    beforeUpload(file) {
      // 10Mb
      const sizeCheck = file.size / 1024 / 1024 < 10;
      if (sizeCheck) {
        return true;
      }
      this.$message({
        message: "文件大小必须小于10Mb",
        type: "warning"
      });
      return false;
    },
    handleSuccess({ results, header }) {
      this.tableData = results;
      this.tableHeader = header;
    },
    async getDb() {
      const res = await getDB();
      if (res.code == 0) {
        this.dbOptions = res.data.dbs;
      }
    },
    async getTable() {
      const res = await getTable({ dbName: this.dbform.dbName });
      if (res.code == 0) {
        this.tableOptions = res.data.tables;
      }
      this.dbform.tableName = "";
    },
    async getColumn() {
      const res = await getColumn(this.dbform);
      if (res.code == 0) {
        if (res.data.columns) {
          this.tableColumns = res.data.columns.map(item => {
            return item.columnName;
          });
        }
      }

      this.fieldMap = {};
    },
    autoMap() {
      this.fieldMap = {};

      const a = this.tableColumns; // 库表字段
      const b = this.tableHeader; // excel字段
      const m = {}; // 映射关系
      a.forEach(f => {
        if (b.includes(f)) {
          m[f] = f;
        }
      });

      // 这里要一次性给“ this.fieldMap ”赋值，在循环中“ this.fieldMap[f] = f ”会导致数据绑定出错
      this.fieldMap = JSON.parse(JSON.stringify(m));
    },
    async insertData() {
      // 取有效字段
      var keys = Object.keys(this.fieldMap);
      var fields = [];
      for (let i = 0; i < keys.length; i++) {
        let k = keys[i];
        let v = this.fieldMap[k];
        if (v && v != "") {
          fields.push(k);
        }
      }

      // 构造fields字符串
      var fieldsStr = "";
      for (let i = 0; i < fields.length; i++) {
        let field = fields[i];
        if (!this.fieldMap[field] || this.fieldMap[field] === "") {
          continue;
        }

        if (i === 0) {
          fieldsStr += "(";
        }

        if (i === fields.length - 1) {
          fieldsStr += "`" + fields[i] + "`" + ")";
        } else {
          fieldsStr += "`" + fields[i] + "`" + ",";
        }
      }

      // 构造values字符串
      var valuesStr = "";
      for (let i = 0; i < this.tableData.length; i++) {
        let d = this.tableData[i];

        var record = "";
        for (let j = 0; j < fields.length; j++) {
          if (j === 0) {
            record += "(";
          }

          // 库表字段
          let column = fields[j];
          // excel字段
          let excelColumn = this.fieldMap[column];

          var value = d[excelColumn];

          record += "'" + value + "'";

          if (j === fields.length - 1) {
            record += ")";
          } else {
            record += ",";
          }
        }

        if (i === this.tableData.length - 1) {
          valuesStr += record + ";";
        } else {
          valuesStr += record + ",";
        }
      }

      const data = {
        db: this.dbform.dbName,
        table: this.dbform.tableName,
        fields: fieldsStr,
        values: valuesStr
      };
      // console.log(data)

      const res = await service({
        url: "/excel/import",
        method: "post",
        data
      });
      if (res.code == 0) {
        this.$message({
          type: "success",
          message: "excel导入成功"
        });
      }
    }
  },
  created() {
    this.getDb();
  }
};
</script>