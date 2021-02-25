<template>
  <div v-loading.fullscreen.lock="fullscreenLoading">
    <div class="upload">
      <el-row>
        <el-col :span="4">
          <el-input v-model="pid" placeholder="请输入pid"></el-input>
        </el-col>
        <el-col :span="12">
          <!-- 原始代码 :action="`${path}/fileUpload/upload`" -->
          <!-- 在上述url中添加参数 -->
          <el-upload
            :action="`${path}/fileUpload/upload?pid=${this.pid}`"
            :before-upload="checkFile"
            :headers="{ 'x-token': token }"
            :on-error="uploadError"
            :on-success="uploadSuccess"
            :show-file-list="false"
            multiple
          >
            <el-button size="small" type="primary">点击上传</el-button>
            <div class="el-upload__tip" slot="tip">可以上传所有格式文件，单个文件大小不超过1024Mb</div>
          </el-upload>
        </el-col>
      </el-row>

      <el-row>
        <el-button type="danger" size="small" @click="deleteFileSelected()">批量删除</el-button>
      </el-row>

      <el-table :data="tableData" border stripe @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="55"></el-table-column>
        <el-table-column label="日期" prop="UpdatedAt" width="180">
          <template slot-scope="scope">
            <div>{{ scope.row.UpdatedAt | formatDate }}</div>
          </template>
        </el-table-column>
        <el-table-column label="文件名" prop="name" width="180"></el-table-column>
        <el-table-column label="链接" prop="url" min-width="300"></el-table-column>
        <el-table-column label="标签" prop="tag" width="100">
          <template slot-scope="scope">
            <el-tag
              :type="scope.row.tag === 'jpg' ? 'primary' : 'success'"
              disable-transitions
            >{{ scope.row.tag }}</el-tag>
          </template>
        </el-table-column>

        <el-table-column label="父标志" prop="pid" width="180"></el-table-column>

        <el-table-column label="操作" width="160">
          <template slot-scope="scope">
            <el-button @click="downloadFile(scope.row)" size="small" type="text">下载</el-button>
            <el-button @click="deleteFileSingle(scope.row)" size="small" type="text">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <el-pagination
        :current-page="page"
        :page-size="pageSize"
        :page-sizes="[10, 30, 50, 100]"
        :style="{ float: 'right', padding: '20px' }"
        :total="total"
        @current-change="handleCurrentChange"
        @size-change="handleSizeChange"
        layout="total, sizes, prev, pager, next, jumper"
      ></el-pagination>
    </div>
  </div>
</template>

<script>
const path = process.env.VUE_APP_BASE_API;
import { mapGetters } from "vuex";
import infoList from "@/mixins/infoList";
import { getFileList, deleteFile } from "./api";
import { downloadImage } from "@/utils/downloadImg";
import { formatTimeToStr } from "@/utils/date";
export default {
  name: "DemoUpload",
  mixins: [infoList],
  components: {},
  data() {
    return {
      fullscreenLoading: false,
      listApi: getFileList,
      path: path,
      tableData: [],
      imageUrl: "",
      //////////////
      multipleSelection: [],
      //////////////
      pid: ''
    };
  },
  computed: {
    ...mapGetters("user", ["userInfo", "token"])
  },
  filters: {
    formatDate: function(time) {
      if (time != null && time != "") {
        var date = new Date(time);
        return formatTimeToStr(date, "yyyy-MM-dd hh:mm:ss");
      } else {
        return "";
      }
    }
  },
  methods: {
    handleSelectionChange(val) {
      this.multipleSelection = val;
    },
    async deleteFileSelected() {
      this.$confirm("此操作将永久删除文件, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      })
        .then(async () => {
          for (let i = 0; i < this.multipleSelection.length; i++) {
            const row = this.multipleSelection[i];
            const res = await deleteFile(row);
            if (res.code == 0) {
              this.$message({
                type: "success",
                message: row.name + "删除成功!"
              });
            }
          }

          this.getTableData();
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除"
          });
        });
    },
    async deleteFileSingle(row) {
      this.$confirm("此操作将永久删除文件, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      })
        .then(async () => {
          const res = await deleteFile(row);
          if (res.code == 0) {
            this.$message({
              type: "success",
              message: row.name + "删除成功!"
            });
            this.getTableData();
          }
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除"
          });
        });
    },
    checkFile(file) {
      // 限制文件大小
      return file.size / 1024 / 1024 < 1024;

      /*
      this.fullscreenLoading = true;
      const isJPG = file.type === "image/jpeg";
      const isPng = file.type === "image/png";
      const isLt2M = file.size / 1024 / 1024 < 2;
      if (!isJPG && !isPng) {
        this.$message.error("上传头像图片只能是 JPG或png 格式!");
        this.fullscreenLoading = false;
      }
      if (!isLt2M) {
        this.$message.error("上传头像图片大小不能超过 2MB!");
        this.fullscreenLoading = false;
      }
      return (isPng || isJPG) && isLt2M;
      */
    },
    uploadSuccess(res) {
      this.fullscreenLoading = false;
      if (res.code == 0) {
        this.$message({
          type: "success",
          message: res.data.file.name + "上传成功"
        });
        if (res.code == 0) {
          this.getTableData();
        }
      } else {
        this.$message({
          type: "warning",
          message: res.msg
        });
      }
    },
    uploadError() {
      this.$message({
        type: "error",
        message: "上传失败"
      });
      this.fullscreenLoading = false;
    },
    downloadFile(row) {
      downloadImage(row.url, row.name);
    }
  },
  created() {
    this.getTableData();
  }
};
</script>
