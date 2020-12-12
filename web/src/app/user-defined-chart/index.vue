<template>
  <div>
    <el-row>
      <el-button type="primary" @click="dialog=true">添加series</el-button>
      <el-button type="primary" @click="initChart">生成chart</el-button>
    </el-row>

    <el-row>
      <div style="width:100%;height:500px">
        <v-chart ref="chart" />
      </div>
    </el-row>

    <el-dialog :visible.sync="dialog" width="70%" title="添加series">
      <db-table-data v-on:data="dataReceived"></db-table-data>
    </el-dialog>
  </div>
</template>

<script>
import DbTableData from "./db-table-data";


export default {
  components: { DbTableData },
  data() {
    return {
      dialog: false,
      //////////////////
      
      //////////////////
    };
  },
  methods: {
    initChart() {
      this.options = {
        title: {
          text: "极坐标双数值轴"
        },
        legend: {
          data: ["line"]
        },
        polar: {
          center: ["50%", "54%"]
        },
        tooltip: {
          trigger: "axis",
          axisPointer: {
            type: "cross"
          }
        },
        angleAxis: {
          type: "value",
          startAngle: 0,
          min: 0,
          max: 360
        },
        radiusAxis: {
          min: 0
        },
        series: [],
        animationDuration: 2000
      };
      this.$refs.chart.mergeOptions(this.options);

    },
    dataReceived(d) {
      console.log(d)
      const s = {
            coordinateSystem: "polar",
            name: 'serie-' + d.dataDimension.x + '-' + d.dataDimension.y,
            type: "scatter",
            showSymbol: false,
            data: d.data.map(item => {
              return [item[d.dataDimension.x], item[d.dataDimension.y]]
            })
          }
      this.options.series.push(s)
      this.$refs.chart.mergeOptions(this.options);

      this.dialog = false
    }
  },
  created() {
    this.options = {}
  }
};
</script>

<style lang="scss" scoped>
.echarts {
  width: 100%;
  height: 100%;
}
</style>