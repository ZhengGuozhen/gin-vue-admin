import service from '@/utils/request';

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