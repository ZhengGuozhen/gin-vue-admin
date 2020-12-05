import Vue from "vue";
import XEUtils from "xe-utils";
import VXETable from "vxe-table";
import "vxe-table/lib/style.css";

Vue.use(VXETable);

// 给 vue 实例挂载内部对象，例如：
// Vue.prototype.$XModal = VXETable.modal
// Vue.prototype.$XPrint = VXETable.print
// Vue.prototype.$XSaveFile = VXETable.saveFile
// Vue.prototype.$XReadFile = VXETable.readFile

import VXETablePluginExportXLSX from 'vxe-table-plugin-export-xlsx'
VXETable.use(VXETablePluginExportXLSX)

// 自定义全局的格式化处理函数
VXETable.formats.mixin({
    // 格式化性别
    formatSex({ cellValue }) {
        return cellValue ? (cellValue === '1' ? '男' : '女') : ''
    },
    // 格式化下拉选项
    formatSelect({ cellValue }, list) {
        const item = list.find(item => item.value === cellValue)
        return item ? item.label : ''
    },
    // 格式化日期，默认 yyyy-MM-dd HH:mm:ss
    formatDate({ cellValue }, format) {
        return XEUtils.toDateString(cellValue, format || 'yyyy-MM-dd HH:mm:ss')
    },
    // 格式化日期，cellValue格式为“2020-12-04T21:34:38+08:00”
    formatDate2({ cellValue }, format) {
        return XEUtils.toDateString(cellValue.substr(0,19), format || 'yyyy-MM-dd HH:mm:ss')
    },
    // 四舍五入金额，每隔3位逗号分隔，默认2位数
    formatAmount({ cellValue }, digits = 2) {
        return XEUtils.commafy(XEUtils.toNumber(cellValue), { digits })
    },
    // 格式化银行卡，默认每4位空格隔开
    formatBankcard({ cellValue }) {
        return XEUtils.commafy(XEUtils.toString(cellValue), { spaceNumber: 4, separator: ' ' })
    },
    // 四舍五入,默认两位数
    formatFixedNumber({ cellValue }, digits = 2) {
        return XEUtils.toFixed(XEUtils.round(cellValue, digits), digits)
    },
    // 向下舍入,默认两位数
    formatCutNumber({ cellValue }, digits = 2) {
        return XEUtils.toFixed(XEUtils.floor(cellValue, digits), digits)
    },
    // 转换 moment 类型为字符串
    toMomentString({ cellValue }, format) {
        return cellValue ? cellValue.format(format) : ''
    }
})
