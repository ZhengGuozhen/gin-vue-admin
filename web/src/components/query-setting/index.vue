<template>
  <div>
    <el-form :inline="true">
      <el-form-item label="匹配字段">
        <el-select
          placeholder="匹配字段"
          v-model="querySetting.field"
          @input="(val) => {$emit('update', querySetting)}"
        >
          <!-- <el-option label="名称" value="name"></el-option> -->
          <el-option
            v-for="item in fields"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          ></el-option>
        </el-select>
      </el-form-item>
      <!-- @zgz 增加匹配模式参数，避免字符串为空或数字为0时不执行查询 -->
      <el-form-item label="匹配模式">
        <el-select
          placeholder="匹配模式"
          v-model="querySetting.mode"
          @input="(val) => {$emit('update', querySetting)}"
        >
          <el-option label="等于" value="="></el-option>
          <el-option label="不等于" value="<>"></el-option>
          <el-option label="大于" value=">"></el-option>
          <el-option label="大于等于" value=">="></el-option>
          <el-option label="小于" value="<"></el-option>
          <el-option label="小于等于" value="<="></el-option>
          <el-option label="包含" value="like"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="匹配值">
        <!-- 组件中input的v-model参考官方文档 -->
        <!-- 父组件和子组件的数据绑定参考下面代码 -->
        <el-input
          placeholder="匹配值"
          v-model="querySetting.value"
          @input="(val) => {$emit('update', querySetting)}"
        ></el-input>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
export default {
  name: "QuerySetting",
  props: ["fields", "value"],
  data() {
    return {
      querySetting: {}
    };
  },
  methods: {}
};
</script>

<style lang="scss" scoped>
</style>