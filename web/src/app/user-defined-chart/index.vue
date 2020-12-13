<template>
  <div>
    <el-row :gutter="20">
      <el-form :inline="true" label-width="120px">
        <el-form-item label="坐标系类型">
          <el-select
            v-model="chartSettings.coordinateSystem"
            placeholder="坐标系类型"
            @change="resetChart();chartSettings.seriesType='scatter';"
          >
            <el-option label="直角坐标系" value="cartesian2d"></el-option>
            <el-option label="极坐标系" value="polar"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="x坐标轴类型">
          <el-select
            :disabled="chartSettings.coordinateSystem!='cartesian2d'"
            v-model="chartSettings.xAxisType"
            placeholder="x坐标轴类型"
            @change="resetChart"
          >
            <el-option label="数值轴" value="value"></el-option>
            <el-option label="类目轴" value="category"></el-option>
            <el-option label="时间轴" value="time"></el-option>
            <el-option label="对数轴" value="log"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="y坐标轴类型">
          <el-select
            :disabled="chartSettings.coordinateSystem!='cartesian2d'"
            v-model="chartSettings.yAxisType"
            placeholder="y坐标轴类型"
            @change="resetChart"
          >
            <el-option label="数值轴" value="value"></el-option>
            <el-option label="类目轴" value="category"></el-option>
            <el-option label="时间轴" value="time"></el-option>
            <el-option label="对数轴" value="log"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item>
          <el-button type="danger" @click="resetChart">重置chart</el-button>
        </el-form-item>
      </el-form>
    </el-row>
    <el-row :gutter="20">
      <el-form :inline="true" label-width="120px">
        <el-form-item label="series名称">
          <el-input v-model="chartSettings.seriesName" clearable placeholder="series名称"></el-input>
        </el-form-item>
        <el-form-item label="series类型">
          <!-- 不同坐标系支持的seriesType不同 -->
          <el-select
            v-if="chartSettings.coordinateSystem==='cartesian2d'"
            v-model="chartSettings.seriesType"
            placeholder="series类型"
          >
            <el-option label="折线图" value="line"></el-option>
            <el-option label="散点图" value="scatter"></el-option>
            <!-- <el-option label="饼状图" value="pie"></el-option> -->
            <el-option label="柱状图" value="bar"></el-option>
          </el-select>
          <el-select
            v-if="chartSettings.coordinateSystem==='polar'"
            v-model="chartSettings.seriesType"
            placeholder="series类型"
          >
            <el-option label="折线图" value="line"></el-option>
            <el-option label="散点图" value="scatter"></el-option>
            <!-- <el-option label="饼状图" value="pie"></el-option> -->
            <!-- <el-option label="柱状图" value="bar"></el-option> -->
          </el-select>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="addSeries">添加series</el-button>
        </el-form-item>
      </el-form>
    </el-row>

    <el-row>
      <div style="width:100%;height:500px">
        <v-chart :key="key" ref="chart" />
      </div>
    </el-row>

    <el-dialog :visible.sync="dialog" width="70%" title="添加series">
      <db-table-data v-on:data="dataReceived"></db-table-data>
    </el-dialog>
  </div>
</template>

<script>
import uuid from "uuid/v1";
import DbTableData from "./db-table-data";

export default {
  components: { DbTableData },
  data() {
    return {
      key: uuid(),
      dialog: false,
      //////////////////
      chartSettings: {
        coordinateSystem: "cartesian2d",
        xAxisType: "value",
        yAxisType: "category",
        seriesType: "scatter",
        seriesName: ""
      }
    };
  },
  methods: {
    initChart() {
      if (this.chartSettings.coordinateSystem === "cartesian2d") {
        // 针对时序图配置
        this.options = {
          title: {
            text: "直角坐标系"
          },
          legend: {
            data: []
          },
          dataZoom: [
            {
              show: true,
              realtime: true,
              start: 0,
              end: 100
            },
            {
              type: "inside",
              realtime: true,
              start: 0,
              end: 100
            }
          ],
          xAxis: {
            type: this.chartSettings.xAxisType,
            splitLine: { show: false },
            scale: true
          },
          yAxis: {
            type: this.chartSettings.yAxisType,
            boundaryGap: false,
            splitLine: { show: true },
            splitArea: { interval: 0 }
          },
          tooltip: {
            trigger: "item",
            axisPointer: {
              type: "cross"
            }
          },
          series: [],
          animationDuration: 2000
        };
      } else if (this.chartSettings.coordinateSystem === "polar") {
        // 针对探测图配置
        this.options = {
          title: {
            text: "极坐标系"
          },
          legend: {
            data: []
          },
          polar: {
            center: ["50%", "54%"]
          },
          tooltip: {
            trigger: "item",
            axisPointer: {
              type: "cross"
            }
          },
          angleAxis: {
            type: "value",
            startAngle: 90,
            min: 0,
            max: 360
          },
          radiusAxis: {
            min: 0
          },
          series: [],
          animationDuration: 2000
        };
      }

      this.$refs.chart.mergeOptions(this.options);
    },
    resetChart() {
      // 重新生成组件
      this.key = uuid();
      this.$nextTick(() => {
        this.initChart();
      });
    },
    addSeries() {
      if (this.chartSettings.seriesName === "") {
        this.$message({
          type: "error",
          message: "请输入series名称"
        });
      } else {
        this.dialog = true;
      }
    },
    dataReceived(d) {
      // console.log(d)
      const s = {
        coordinateSystem: this.chartSettings.coordinateSystem,
        name: this.chartSettings.seriesName,
        type: this.chartSettings.seriesType,
        showSymbol: false,
        data: d.data.map(item => {
          // 按照queryColumns的顺序对Object属性排序
          var r = [];
          for (let i = 0; i < d.queryColumns.length; i++) {
            r.push(item[d.queryColumns[i]]);
          }
          return r;
        })
      };
      // console.log(s);

      this.options.legend.data.push(s.name);
      this.options.series.push(s);

      this.$refs.chart.mergeOptions(this.options);

      this.dialog = false;
    }
  },
  created() {
    this.options = {};
  },
  mounted() {
    this.initChart();
  }
};
</script>

<style lang="scss" scoped>
.echarts {
  width: 100%;
  height: 100%;
}
</style>