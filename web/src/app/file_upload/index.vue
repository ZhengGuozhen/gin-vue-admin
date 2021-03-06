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
            ref="upload"
            :action="`${path}/fileUpload/upload?pid=${this.pid}`"
            :before-upload="checkFile"
            :headers="{ 'x-token': token }"
            :on-error="uploadError"
            :on-success="uploadSuccess"
            :show-file-list="true"
            multiple
            :auto-upload="false"
            :data="{meta: JSON.stringify(uploadData)}"
          >
            <!-- <el-button size="small" type="primary">点击上传</el-button> -->
            <el-button slot="trigger" size="small" type="primary">选取文件</el-button>
            <el-button style="margin-left: 10px;" size="small" type="success" @click="$refs.upload.submit()">上传</el-button>
            <div class="el-upload__tip" slot="tip">可以上传所有格式文件，单个文件大小不超过1024Mb</div>
          </el-upload>
        </el-col>
      </el-row>

      <el-row>
        显示本次上传的文件列表
      </el-row>
      <el-row>
        <el-button type="danger" size="small" @click="deleteFileSelected2()">批量删除</el-button>
      </el-row>
      <el-table :data="tableData2" border stripe @selection-change="(v)=>{multipleSelection2=v}">
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
        <el-table-column label="元数据" prop="meta" width="300"></el-table-column>

        <el-table-column label="操作" width="160">
          <template slot-scope="scope">
            <el-button @click="download(scope.row)" size="small" type="text">下载</el-button>
            <el-button @click="deleteFileSingle2(scope.row)" size="small" type="text">删除</el-button>
          </template>
        </el-table-column>
      </el-table>

      <el-row>
        显示数据库内已上传的文件列表
      </el-row>
      <el-row>
        <el-button type="danger" size="small" @click="deleteFileSelected()">批量删除</el-button>
        <el-button type="primary" size="small" @click="getTableData()">刷新数据</el-button>
      </el-row>
      <el-table :data="tableData" border stripe @selection-change="(v)=>{multipleSelection=v}">
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
        <el-table-column label="元数据" prop="meta" width="300"></el-table-column>

        <el-table-column label="操作" width="160">
          <template slot-scope="scope">
            <el-button @click="download(scope.row)" size="small" type="text">下载</el-button>
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

// /* eslint-disable */

const path = process.env.VUE_APP_BASE_API;
import { mapGetters } from "vuex";
import infoList from "@/mixins/infoList";
import { getFileList, deleteFile, downloadFile } from "./api";
// import { downloadImage } from "@/utils/downloadImg";
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
      //////////////
      multipleSelection: [],
      //////////////
      pid: '',
      uploadData: { field: 'haha'}, // 上传文件的描述数据
      //////////////
      tableData2: [],
      multipleSelection2: [],
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
      // console.log(res)
      this.tableData2.push(res.data.file)

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
    download(row) {
      // console.log(row)
      downloadFile(row);

      // 需要设置 "Content-Type": "multipart/form-data"
      // let data = new FormData();
      // data.append('url', row.url);
      // data.append('name', row.name);
      // downloadFile(data);

      // 另一种方式
      // var a = document.createElement("a"); // 生成一个a元素
      // var event = new MouseEvent("click"); // 创建一个单击事件
      // a.href = `${path}/fileUpload/downloadFile`; // 将生成的URL设置为a.href属性
      // a.dispatchEvent(event); // 触发a的单击事件
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
    /////////////////////////////////////
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
    /////////////////////////////////////
    async deleteFileSelected2() {
      this.$confirm("此操作将永久删除文件, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      })
        .then(async () => {
          for (let i = 0; i < this.multipleSelection2.length; i++) {
            const row = this.multipleSelection2[i];
            const res = await deleteFile(row);
            if (res.code == 0) {
              this.$message({
                type: "success",
                message: row.name + "删除成功!"
              });
            }
          }

          // this.getTableData();
          // 删除table中的数据
          let ids = this.multipleSelection2.map(item => { return item.ID})
          ids.forEach(id => {
            let index = this.tableData2.findIndex(item => item.ID === id)
            if (index !== -1) {
              this.tableData2.splice(index, 1)
            }
          })

        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除"
          });
        });
    },
    async deleteFileSingle2(row) {
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

            // this.getTableData();
            // 删除table中的数据
            let index = this.tableData2.findIndex(item => item.ID === row.ID)
            if (index !== -1) {
              this.tableData2.splice(index, 1)
            }
          }
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除"
          });
        });
    },
    /////////////////////////////////////
  },
  created() {
    this.getTableData();
  }
};
</script>
