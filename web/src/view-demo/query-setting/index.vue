<template>
  <div>
    <div>
      <el-row>查询条件数据类型错误会导致查询错误</el-row>
      <el-row>
        <el-button type="primary" @click="addQuerySetting">添加</el-button>
        <el-button type="primary" @click="querySettings=[]">清空</el-button>
        <el-button type="success" @click="applyQuerySetting">应用</el-button>
      </el-row>
      <el-row>
        <!-- 不能用 index 作为 key -->
        <!-- https://www.zhihu.com/question/61064119 -->
        <div
          v-for="(item, index) in querySettings"
          :key="item.uuid"
          style="display:flex;flex-direction:row;align-items:center"
        >
          <query-setting :fields="fields" v-on:update="(val) => {querySettings[index].data=val}"></query-setting>
          <el-button @click="deleteQuerySetting(index)">删除</el-button>
        </div>
      </el-row>
    </div>

    <div v-if="false" class="search-term">
      <el-form :inline="true" :model="searchInfo" class="demo-form-inline">
        <!-- @zgz 增加匹配模式参数，避免字符串为空或数字为0时不执行查询 -->
        <el-form-item label="名称">
          <el-select placeholder="匹配模式" v-model="searchInfo.name_">
            <el-option label="无定义" value=""></el-option>
            <el-option label="等于" value="="></el-option>
            <el-option label="大于" value=">"></el-option>
            <el-option label="小于" value="<"></el-option>
          </el-select>
          <el-input v-show="searchInfo.name_!=''" placeholder="匹配值" v-model="searchInfo.name"></el-input>
        </el-form-item>
        <el-form-item label="数值">
          <el-select placeholder="匹配模式" v-model="searchInfo.value_">
            <el-option label="无定义" value=""></el-option>
            <el-option label="等于" value="="></el-option>
            <el-option label="大于" value=">"></el-option>
            <el-option label="小于" value="<"></el-option>
          </el-select>
          <el-input v-show="searchInfo.value_!=''" placeholder="匹配值" v-model="searchInfo.value"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button @click="onSubmit" type="primary">查询</el-button>
        </el-form-item>
        <el-form-item>
          <el-button @click="openDialog" type="primary">新增代码生成示例</el-button>
        </el-form-item>
        <el-form-item>
          <el-popover placement="top" v-model="deleteVisible" width="160">
            <p>确定要删除吗？</p>
            <div style="text-align: right; margin: 0">
              <el-button @click="deleteVisible = false" size="mini" type="text">取消</el-button>
              <el-button @click="onDelete" size="mini" type="primary">确定</el-button>
            </div>
            <el-button icon="el-icon-delete" size="mini" slot="reference" type="danger">批量删除</el-button>
          </el-popover>
        </el-form-item>
      </el-form>
    </div>
    <!-- vxe-table -->
    <vxe-toolbar>
      <template v-slot:buttons>
        <vxe-button @click="tableData = []">清空数据</vxe-button>
        <vxe-button @click="exportDataEvent">导出数据</vxe-button>
      </template>
    </vxe-toolbar>
    <vxe-table
      ref="xTable"
      border
      stripe
      resizable
      highlight-hover-row
      show-overflow
      height="400"
      :data="tableData"
    >
      <vxe-table-column type="seq" width="60"></vxe-table-column>
      <!-- <vxe-table-column field="CreatedAt" title="CreatedAt"></vxe-table-column> -->
      <vxe-table-column
        field="CreatedAt"
        title="CreatedAt"
        :formatter="['formatDate2', 'yyyy-MM-dd HH:mm:ss']"
      ></vxe-table-column>
      <vxe-table-column field="name" title="Name"></vxe-table-column>
      <vxe-table-column field="value" title="value"></vxe-table-column>
    </vxe-table>
    <!-- el-table -->
    <el-table
      v-if="false"
      :data="tableData"
      @selection-change="handleSelectionChange"
      border
      ref="multipleTable"
      stripe
      style="width: 100%"
      tooltip-effect="dark"
    >
      <el-table-column type="selection" width="55"></el-table-column>
      <el-table-column label="日期" width="180">
        <template slot-scope="scope">{{scope.row.CreatedAt|formatDate}}</template>
      </el-table-column>

      <el-table-column label="名称" prop="name" width="120"></el-table-column>

      <el-table-column label="数值" prop="value" width="120"></el-table-column>

      <el-table-column label="按钮组">
        <template slot-scope="scope">
          <el-button
            class="table-button"
            @click="updateDemoCodeGeneration(scope.row)"
            size="small"
            type="primary"
            icon="el-icon-edit"
          >变更</el-button>
          <el-popover placement="top" width="160" v-model="scope.row.visible">
            <p>确定要删除吗？</p>
            <div style="text-align: right; margin: 0">
              <el-button size="mini" type="text" @click="scope.row.visible = false">取消</el-button>
              <el-button type="primary" size="mini" @click="deleteDemoCodeGeneration(scope.row)">确定</el-button>
            </div>
            <el-button type="danger" icon="el-icon-delete" size="mini" slot="reference">删除</el-button>
          </el-popover>
        </template>
      </el-table-column>
    </el-table>

    <el-pagination
      :current-page="page"
      :page-size="pageSize"
      :page-sizes="[10, 30, 50, 100, 1000]"
      :total="total"
      @current-change="handleCurrentChange"
      @size-change="handleSizeChange"
      layout="total, sizes, prev, pager, next, jumper"
    ></el-pagination>

    <el-dialog :before-close="closeDialog" :visible.sync="dialogFormVisible" title="弹窗操作">
      <el-form :model="formData" label-position="right" label-width="80px">
        <el-form-item label="名称:">
          <el-input v-model="formData.name" clearable placeholder="请输入"></el-input>
        </el-form-item>

        <el-form-item label="数值:">
          <el-input v-model.number="formData.value" clearable placeholder="请输入"></el-input>
        </el-form-item>
      </el-form>
      <div class="dialog-footer" slot="footer">
        <el-button @click="closeDialog">取 消</el-button>
        <el-button @click="enterDialog" type="primary">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import uuid from "uuid/v1";
import QuerySetting from "@/components/query-setting";

import {
  createDemoCodeGeneration,
  deleteDemoCodeGeneration,
  deleteDemoCodeGenerationByIds,
  updateDemoCodeGeneration,
  findDemoCodeGeneration,
  getDemoCodeGenerationList
} from "@/api/demo_code_generation"; //  此处请自行替换地址
import { formatTimeToStr } from "@/utils/date";
import infoList from "@/mixins/infoList";
export default {
  name: "DemoQuerySetting",
  mixins: [infoList],
  components: { QuerySetting },
  data() {
    return {
      ////////////////////////////////////
      fields: [
        { label: "创建时间", value: "CreatedAt" },
        { label: "名称", value: "name" },
        { label: "值", value: "value" }
      ],
      querySettings: [],
      ////////////////////////////////////
      listApi: getDemoCodeGenerationList,
      dialogFormVisible: false,
      visible: false,
      type: "",
      deleteVisible: false,
      multipleSelection: [],
      formData: {
        name: "",
        value: 0
      }
    };
  },
  filters: {
    formatDate: function(time) {
      if (time != null && time != "") {
        var date = new Date(time);
        return formatTimeToStr(date, "yyyy-MM-dd hh:mm:ss");
      } else {
        return "";
      }
    },
    formatBoolean: function(bool) {
      if (bool != null) {
        return bool ? "是" : "否";
      } else {
        return "";
      }
    }
  },
  methods: {
    //////////////////////////////////
    applyQuerySetting() {
      // console.log(this.querySettings);
      this.searchInfo = {};
      for (let i = 0; i < this.querySettings.length; i++) {
        const e = this.querySettings[i];
        if (!e.data || !e.data.field) {
          continue;
        }
        this.searchInfo[e.data.field] = e.data.value;
        this.searchInfo[e.data.field + "_"] = e.data.mode;
      }
      // console.log(this.searchInfo);
      this.onSubmit();
    },
    addQuerySetting() {
      this.querySettings.push({
        uuid: uuid(),
        data: {}
      });
    },
    deleteQuerySetting(n) {
      this.querySettings.splice(n, 1);
    },
    //条件搜索前端看此方法
    onSubmit() {
      this.page = 1;
      this.pageSize = 10;
      this.getTableData();
    },
    handleSelectionChange(val) {
      this.multipleSelection = val;
    },
    async onDelete() {
      const ids = [];
      if (this.multipleSelection.length == 0) {
        this.$message({
          type: "warning",
          message: "请选择要删除的数据"
        });
        return;
      }
      this.multipleSelection &&
        this.multipleSelection.map(item => {
          ids.push(item.ID);
        });
      const res = await deleteDemoCodeGenerationByIds({ ids });
      if (res.code == 0) {
        this.$message({
          type: "success",
          message: "删除成功"
        });
        this.deleteVisible = false;
        this.getTableData();
      }
    },
    async updateDemoCodeGeneration(row) {
      const res = await findDemoCodeGeneration({ ID: row.ID });
      this.type = "update";
      if (res.code == 0) {
        this.formData = res.data.redemoCodeGeneration;
        this.dialogFormVisible = true;
      }
    },
    closeDialog() {
      this.dialogFormVisible = false;
      this.formData = {
        name: "",
        value: 0
      };
    },
    async deleteDemoCodeGeneration(row) {
      this.visible = false;
      const res = await deleteDemoCodeGeneration({ ID: row.ID });
      if (res.code == 0) {
        this.$message({
          type: "success",
          message: "删除成功"
        });
        this.getTableData();
      }
    },
    async enterDialog() {
      let res;
      switch (this.type) {
        case "create":
          res = await createDemoCodeGeneration(this.formData);
          break;
        case "update":
          res = await updateDemoCodeGeneration(this.formData);
          break;
        default:
          res = await createDemoCodeGeneration(this.formData);
          break;
      }
      if (res.code == 0) {
        this.$message({
          type: "success",
          message: "创建/更改成功"
        });
        this.closeDialog();
        this.getTableData();
      }
    },
    openDialog() {
      this.type = "create";
      this.dialogFormVisible = true;
    },
    exportDataEvent() {
      this.$refs.xTable.exportData({
        filename: "export",
        sheetName: "Sheet1",
        type: "xlsx"
      });
    }
  },
  async created() {
    await this.getTableData();
  }
};
</script>

<style>
</style>