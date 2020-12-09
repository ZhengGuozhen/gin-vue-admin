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
  </div>
</template>

<script>
import UploadExcelComponent from "@/components/excel-upload";
export default {
  name: "UploadExcel",
  components: { UploadExcelComponent },
  data() {
    return {
      tableData: [],
      tableHeader: []
    };
  },
  methods: {
    beforeUpload(file) {
      const isLt1M = file.size / 1024 / 1024 < 1;
      if (isLt1M) {
        return true;
      }
      this.$message({
        message: "Please do not upload files larger than 1m in size.",
        type: "warning"
      });
      return false;
    },
    handleSuccess({ results, header }) {
      this.tableData = results;
      this.tableHeader = header;
    }
  }
};
</script>