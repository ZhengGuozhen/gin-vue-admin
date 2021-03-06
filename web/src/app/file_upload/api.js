import service from '@/utils/request';
import { store } from '@/store/index'
import axios from 'axios'; // 引入axios

import JsFileDownload from 'js-file-download'

export const getFileList = (data) => {
    return service({
        url: "/fileUpload/getFileList",
        method: "post",
        data
    })
}

export const deleteFile = (data) => {
    return service({
        url: "/fileUpload/deleteFile",
        method: "post",
        data
    })
}

// @zgz
// axios拦截器中设置了 'Content-Type': 'application/json'
// 对应的后台 gin，使用 ShouldBindJSON 绑定参数
// 如果设置为 "Content-Type": "multipart/form-data"
// 对应的后台 gin，使用 DefaultPostForm 获取参数

// axios 发送请求
export const downloadFile = (data) => {
    const token = store.getters['user/token']

    axios({
        baseURL: process.env.VUE_APP_BASE_API,
        method: 'post',
        url: "/fileUpload/downloadFile",
        data: data,
        timeout: 99999,
        responseType: 'blob',
        headers: {
            'Content-Type': 'application/json',
            'x-token': token,
        }
      }).then(res => {
        // 从服务端的响应头获取文件名
        let disposition = res.headers['content-disposition']
        console.log(disposition)
        let filename = decodeURI(disposition.match(/filename="(.*)"/)[1])
        JsFileDownload(res.data, filename)
      })
}
// （弃用）使用 axios.create
export const downloadFile_ = (data) => {
    const token = store.getters['user/token']
    
    const service = axios.create({
        baseURL: process.env.VUE_APP_BASE_API,
        timeout: 99999,
        responseType: 'blob',
        headers: {
            'Content-Type': 'application/json',
            'x-token': token,
        }
    })

    return service({
        url: "/fileUpload/downloadFile",
        method: "post",
        data
    })
}