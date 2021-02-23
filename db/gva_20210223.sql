/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : gva_20210223

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 23/02/2021 19:26:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `p_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v0` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v1` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v3` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v4` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v5` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/deleteUser', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/setUserInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/updateAuthority', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/copyAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/casbin/casbinTest/:pathParam', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/system/getServerInfo', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/getTables', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/getDB', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/getColumn', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/preview', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/excel/importExcel', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/excel/exportExcel', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/createSysDictionary', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/updateSysDictionary', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/findSysDictionary', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/getSysDictionaryList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/simpleUploader/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/simpleUploader/checkFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/simpleUploader/mergeFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/email/emailTest', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/createWorkflowProcess', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/deleteWorkflowProcess', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/deleteWorkflowProcessByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/updateWorkflowProcess', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/findWorkflowProcess', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/getWorkflowProcessList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/findWorkflowStep', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/startWorkflow', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/getMyStated', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/getMyNeed', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/getWorkflowMoveByID', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/workflowProcess/completeWorkflowMove', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoCodeGeneration/createDemoCodeGeneration', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoCodeGeneration/deleteDemoCodeGeneration', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoCodeGeneration/deleteDemoCodeGenerationByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoCodeGeneration/updateDemoCodeGeneration', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoCodeGeneration/findDemoCodeGeneration', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoCodeGeneration/getDemoCodeGenerationList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoApp/createDemoApp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoApp/deleteDemoApp', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoApp/deleteDemoAppByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoApp/updateDemoApp', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoApp/findDemoApp', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/demoApp/getDemoAppList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/excel/import', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/dbTableData/data', 'GET', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for demo_app
-- ----------------------------
DROP TABLE IF EXISTS `demo_app`;
CREATE TABLE `demo_app` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '名称',
  `value` smallint DEFAULT NULL COMMENT '值',
  `time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `idx_demo_app_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of demo_app
-- ----------------------------
BEGIN;
INSERT INTO `demo_app` VALUES (1, '2021-02-23 19:21:44', '2021-02-23 19:21:44', NULL, 'zgz', 0, '2021-02-23 19:21:35');
INSERT INTO `demo_app` VALUES (2, '2021-02-23 19:21:49', '2021-02-23 19:21:49', NULL, 'zgz', 1, '2021-02-23 19:21:44');
COMMIT;

-- ----------------------------
-- Table structure for demo_code_generation
-- ----------------------------
DROP TABLE IF EXISTS `demo_code_generation`;
CREATE TABLE `demo_code_generation` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '名称',
  `value` smallint DEFAULT NULL COMMENT '数值',
  PRIMARY KEY (`id`),
  KEY `idx_demo_code_generation_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of demo_code_generation
-- ----------------------------
BEGIN;
INSERT INTO `demo_code_generation` VALUES (1, '2021-02-23 19:20:39', '2021-02-23 19:20:39', NULL, 'a', 0);
INSERT INTO `demo_code_generation` VALUES (2, '2021-02-23 19:20:43', '2021-02-23 19:20:43', NULL, 'a', 1);
INSERT INTO `demo_code_generation` VALUES (3, '2021-02-23 19:20:47', '2021-02-23 19:20:47', NULL, 'b', 2);
COMMIT;

-- ----------------------------
-- Table structure for exa_customers
-- ----------------------------
DROP TABLE IF EXISTS `exa_customers`;
CREATE TABLE `exa_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_customers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_file_chunks
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_chunks`;
CREATE TABLE `exa_file_chunks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `exa_file_id` bigint unsigned DEFAULT NULL,
  `file_chunk_number` bigint DEFAULT NULL,
  `file_chunk_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_file_chunks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_file_upload_and_downloads
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_file_upload_and_downloads
-- ----------------------------
BEGIN;
INSERT INTO `exa_file_upload_and_downloads` VALUES (1, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '10.png', 'http://qmplusimg.henrongyi.top/gvalogo.png', 'png', '158787308910.png');
INSERT INTO `exa_file_upload_and_downloads` VALUES (2, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'logo.png', 'http://qmplusimg.henrongyi.top/1576554439myAvatar.png', 'png', '1587973709logo.png');
COMMIT;

-- ----------------------------
-- Table structure for exa_files
-- ----------------------------
DROP TABLE IF EXISTS `exa_files`;
CREATE TABLE `exa_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_md5` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chunk_total` bigint DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_simple_uploaders
-- ----------------------------
DROP TABLE IF EXISTS `exa_simple_uploaders`;
CREATE TABLE `exa_simple_uploaders` (
  `chunk_number` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '当前切片标记',
  `current_chunk_size` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '当前切片容量',
  `current_chunk_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '切片本地路径',
  `total_size` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '总容量',
  `identifier` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件标识（md5）',
  `filename` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件名',
  `total_chunks` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '切片总数',
  `is_done` tinyint(1) DEFAULT NULL COMMENT '是否上传完成',
  `file_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件本地路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_simple_uploaders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_wf_leaves
-- ----------------------------
DROP TABLE IF EXISTS `exa_wf_leaves`;
CREATE TABLE `exa_wf_leaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `cause` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_wf_leaves_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_wf_leaves
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jwt_blacklists
-- ----------------------------
DROP TABLE IF EXISTS `jwt_blacklists`;
CREATE TABLE `jwt_blacklists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `jwt` text COLLATE utf8mb4_general_ci COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of jwt_blacklists
-- ----------------------------
BEGIN;
INSERT INTO `jwt_blacklists` VALUES (1, '2021-02-23 19:19:04', '2021-02-23 19:19:04', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiMTg3MzZmNzYtMTQ3MC00YjcyLTg5OTktODQ1ZmE2OWVlNWRlIiwiSUQiOjEsIlVzZXJuYW1lIjoiYWRtaW4iLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiQnVmZmVyVGltZSI6ODY0MDAsImV4cCI6MTYxNDY4MTAxNSwiaXNzIjoicW1QbHVzIiwibmJmIjoxNjE0MDc1MjE1fQ.wajaBi-U-z_5ZdRQXYMHJzrlgLhdlXtxtT0FJnfYiDg');
COMMIT;

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis`;
CREATE TABLE `sys_apis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'POST',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10014 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
BEGIN;
INSERT INTO `sys_apis` VALUES (1, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/base/login', '用户登录', 'base', 'POST');
INSERT INTO `sys_apis` VALUES (2, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/user/register', '用户注册', 'user', 'POST');
INSERT INTO `sys_apis` VALUES (3, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/api/createApi', '创建api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (4, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/api/getApiList', '获取api列表', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (5, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/api/getApiById', '获取api详细信息', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (6, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/api/deleteApi', '删除Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (7, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/api/updateApi', '更新Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (8, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/api/getAllApis', '获取所有api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (9, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/authority/createAuthority', '创建角色', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (10, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/authority/deleteAuthority', '删除角色', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (11, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/authority/getAuthorityList', '获取角色列表', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (12, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/getMenu', '获取菜单树', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (13, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/getMenuList', '分页获取基础menu列表', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (14, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/addBaseMenu', '新增菜单', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (15, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/getBaseMenuTree', '获取用户动态路由', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (16, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/addMenuAuthority', '增加menu和角色关联关系', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (17, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/getMenuAuthority', '获取指定角色menu', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (18, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/deleteBaseMenu', '删除菜单', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (19, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/updateBaseMenu', '更新菜单', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (20, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/menu/getBaseMenuById', '根据id获取菜单', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (21, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/user/changePassword', '修改密码', 'user', 'POST');
INSERT INTO `sys_apis` VALUES (23, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/user/getUserList', '获取用户列表', 'user', 'POST');
INSERT INTO `sys_apis` VALUES (24, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/user/setUserAuthority', '修改用户角色', 'user', 'POST');
INSERT INTO `sys_apis` VALUES (25, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/fileUploadAndDownload/upload', '文件上传示例', 'fileUploadAndDownload', 'POST');
INSERT INTO `sys_apis` VALUES (26, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/fileUploadAndDownload/getFileList', '获取上传文件列表', 'fileUploadAndDownload', 'POST');
INSERT INTO `sys_apis` VALUES (27, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (28, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (29, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/fileUploadAndDownload/deleteFile', '删除文件', 'fileUploadAndDownload', 'POST');
INSERT INTO `sys_apis` VALUES (30, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/jwt/jsonInBlacklist', 'jwt加入黑名单', 'jwt', 'POST');
INSERT INTO `sys_apis` VALUES (31, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/authority/setDataAuthority', '设置角色资源权限', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (32, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/system/getSystemConfig', '获取配置文件内容', 'system', 'POST');
INSERT INTO `sys_apis` VALUES (33, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/system/setSystemConfig', '设置配置文件内容', 'system', 'POST');
INSERT INTO `sys_apis` VALUES (34, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/customer/customer', '创建客户', 'customer', 'POST');
INSERT INTO `sys_apis` VALUES (35, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/customer/customer', '更新客户', 'customer', 'PUT');
INSERT INTO `sys_apis` VALUES (36, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/customer/customer', '删除客户', 'customer', 'DELETE');
INSERT INTO `sys_apis` VALUES (37, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/customer/customer', '获取单一客户', 'customer', 'GET');
INSERT INTO `sys_apis` VALUES (38, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/customer/customerList', '获取客户列表', 'customer', 'GET');
INSERT INTO `sys_apis` VALUES (39, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/casbin/casbinTest/:pathParam', 'RESTFUL模式测试', 'casbin', 'GET');
INSERT INTO `sys_apis` VALUES (40, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/autoCode/createTemp', '自动化代码', 'autoCode', 'POST');
INSERT INTO `sys_apis` VALUES (41, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/authority/updateAuthority', '更新角色信息', 'authority', 'PUT');
INSERT INTO `sys_apis` VALUES (42, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/authority/copyAuthority', '拷贝角色', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (43, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/user/deleteUser', '删除用户', 'user', 'DELETE');
INSERT INTO `sys_apis` VALUES (44, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionaryDetail/createSysDictionaryDetail', '新增字典内容', 'sysDictionaryDetail', 'POST');
INSERT INTO `sys_apis` VALUES (45, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionaryDetail/deleteSysDictionaryDetail', '删除字典内容', 'sysDictionaryDetail', 'DELETE');
INSERT INTO `sys_apis` VALUES (46, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionaryDetail/updateSysDictionaryDetail', '更新字典内容', 'sysDictionaryDetail', 'PUT');
INSERT INTO `sys_apis` VALUES (47, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionaryDetail/findSysDictionaryDetail', '根据ID获取字典内容', 'sysDictionaryDetail', 'GET');
INSERT INTO `sys_apis` VALUES (48, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionaryDetail/getSysDictionaryDetailList', '获取字典内容列表', 'sysDictionaryDetail', 'GET');
INSERT INTO `sys_apis` VALUES (49, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionary/createSysDictionary', '新增字典', 'sysDictionary', 'POST');
INSERT INTO `sys_apis` VALUES (50, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionary/deleteSysDictionary', '删除字典', 'sysDictionary', 'DELETE');
INSERT INTO `sys_apis` VALUES (51, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionary/updateSysDictionary', '更新字典', 'sysDictionary', 'PUT');
INSERT INTO `sys_apis` VALUES (52, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionary/findSysDictionary', '根据ID获取字典', 'sysDictionary', 'GET');
INSERT INTO `sys_apis` VALUES (53, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysDictionary/getSysDictionaryList', '获取字典列表', 'sysDictionary', 'GET');
INSERT INTO `sys_apis` VALUES (54, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysOperationRecord/createSysOperationRecord', '新增操作记录', 'sysOperationRecord', 'POST');
INSERT INTO `sys_apis` VALUES (55, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysOperationRecord/deleteSysOperationRecord', '删除操作记录', 'sysOperationRecord', 'DELETE');
INSERT INTO `sys_apis` VALUES (56, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysOperationRecord/findSysOperationRecord', '根据ID获取操作记录', 'sysOperationRecord', 'GET');
INSERT INTO `sys_apis` VALUES (57, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysOperationRecord/getSysOperationRecordList', '获取操作记录列表', 'sysOperationRecord', 'GET');
INSERT INTO `sys_apis` VALUES (58, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/autoCode/getTables', '获取数据库表', 'autoCode', 'GET');
INSERT INTO `sys_apis` VALUES (59, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/autoCode/getDB', '获取所有数据库', 'autoCode', 'GET');
INSERT INTO `sys_apis` VALUES (60, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/autoCode/getColumn', '获取所选table的所有字段', 'autoCode', 'GET');
INSERT INTO `sys_apis` VALUES (61, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/sysOperationRecord/deleteSysOperationRecordByIds', '批量删除操作历史', 'sysOperationRecord', 'DELETE');
INSERT INTO `sys_apis` VALUES (62, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/simpleUploader/upload', '插件版分片上传', 'simpleUploader', 'POST');
INSERT INTO `sys_apis` VALUES (63, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/simpleUploader/checkFileMd5', '文件完整度验证', 'simpleUploader', 'GET');
INSERT INTO `sys_apis` VALUES (64, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/simpleUploader/mergeFileMd5', '上传完成合并文件', 'simpleUploader', 'GET');
INSERT INTO `sys_apis` VALUES (65, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/user/setUserInfo', '设置用户信息', 'user', 'PUT');
INSERT INTO `sys_apis` VALUES (66, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/system/getServerInfo', '获取服务器信息', 'system', 'POST');
INSERT INTO `sys_apis` VALUES (67, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/email/emailTest', '发送测试邮件', 'email', 'POST');
INSERT INTO `sys_apis` VALUES (68, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/createWorkflowProcess', '新建工作流', 'workflowProcess', 'POST');
INSERT INTO `sys_apis` VALUES (69, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/deleteWorkflowProcess', '删除工作流', 'workflowProcess', 'DELETE');
INSERT INTO `sys_apis` VALUES (70, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/deleteWorkflowProcessByIds', '批量删除工作流', 'workflowProcess', 'DELETE');
INSERT INTO `sys_apis` VALUES (71, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/updateWorkflowProcess', '更新工作流', 'workflowProcess', 'PUT');
INSERT INTO `sys_apis` VALUES (72, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/findWorkflowProcess', '根据ID获取工作流', 'workflowProcess', 'GET');
INSERT INTO `sys_apis` VALUES (73, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/getWorkflowProcessList', '获取工作流', 'workflowProcess', 'GET');
INSERT INTO `sys_apis` VALUES (74, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/findWorkflowStep', '获取工作流步骤', 'workflowProcess', 'GET');
INSERT INTO `sys_apis` VALUES (75, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/startWorkflow', '启动工作流', 'workflowProcess', 'POST');
INSERT INTO `sys_apis` VALUES (76, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/getMyStated', '获取我发起的工作流', 'workflowProcess', 'GET');
INSERT INTO `sys_apis` VALUES (77, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/getMyNeed', '获取我的待办', 'workflowProcess', 'GET');
INSERT INTO `sys_apis` VALUES (78, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/getWorkflowMoveByID', '根据id获取当前节点详情和历史', 'workflowProcess', 'GET');
INSERT INTO `sys_apis` VALUES (79, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/workflowProcess/completeWorkflowMove', '提交工作流', 'workflowProcess', 'POST');
INSERT INTO `sys_apis` VALUES (80, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/autoCode/preview', '预览自动化代码', 'autoCode', 'POST');
INSERT INTO `sys_apis` VALUES (81, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/excel/importExcel', '预览自动化代码', 'autoCode', 'POST');
INSERT INTO `sys_apis` VALUES (82, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/excel/loadExcel', '预览自动化代码', 'autoCode', 'POST');
INSERT INTO `sys_apis` VALUES (83, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/excel/exportExcel', '预览自动化代码', 'autoCode', 'POST');
INSERT INTO `sys_apis` VALUES (84, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '/excel/downloadTemplate', '预览自动化代码', 'autoCode', 'POST');
INSERT INTO `sys_apis` VALUES (10000, '2020-12-04 21:15:42', '2020-12-04 21:15:42', NULL, '/demoCodeGeneration/createDemoCodeGeneration', '新增代码生成示例', 'demoCodeGeneration', 'POST');
INSERT INTO `sys_apis` VALUES (10001, '2020-12-04 21:15:42', '2020-12-04 21:15:42', NULL, '/demoCodeGeneration/deleteDemoCodeGeneration', '删除代码生成示例', 'demoCodeGeneration', 'DELETE');
INSERT INTO `sys_apis` VALUES (10002, '2020-12-04 21:15:42', '2020-12-04 21:15:42', NULL, '/demoCodeGeneration/deleteDemoCodeGenerationByIds', '批量删除代码生成示例', 'demoCodeGeneration', 'DELETE');
INSERT INTO `sys_apis` VALUES (10003, '2020-12-04 21:15:42', '2020-12-04 21:15:42', NULL, '/demoCodeGeneration/updateDemoCodeGeneration', '更新代码生成示例', 'demoCodeGeneration', 'PUT');
INSERT INTO `sys_apis` VALUES (10004, '2020-12-04 21:15:42', '2020-12-04 21:15:42', NULL, '/demoCodeGeneration/findDemoCodeGeneration', '根据ID获取代码生成示例', 'demoCodeGeneration', 'GET');
INSERT INTO `sys_apis` VALUES (10005, '2020-12-04 21:15:42', '2020-12-04 21:15:42', NULL, '/demoCodeGeneration/getDemoCodeGenerationList', '获取代码生成示例列表', 'demoCodeGeneration', 'GET');
INSERT INTO `sys_apis` VALUES (10006, '2020-12-09 11:36:01', '2020-12-09 11:36:01', NULL, '/demoApp/createDemoApp', '新增DemoApp', 'demoApp', 'POST');
INSERT INTO `sys_apis` VALUES (10007, '2020-12-09 11:36:01', '2020-12-09 11:36:01', NULL, '/demoApp/deleteDemoApp', '删除DemoApp', 'demoApp', 'DELETE');
INSERT INTO `sys_apis` VALUES (10008, '2020-12-09 11:36:01', '2020-12-09 11:36:01', NULL, '/demoApp/deleteDemoAppByIds', '批量删除DemoApp', 'demoApp', 'DELETE');
INSERT INTO `sys_apis` VALUES (10009, '2020-12-09 11:36:01', '2020-12-09 11:36:01', NULL, '/demoApp/updateDemoApp', '更新DemoApp', 'demoApp', 'PUT');
INSERT INTO `sys_apis` VALUES (10010, '2020-12-09 11:36:01', '2020-12-09 11:36:01', NULL, '/demoApp/findDemoApp', '根据ID获取DemoApp', 'demoApp', 'GET');
INSERT INTO `sys_apis` VALUES (10011, '2020-12-09 11:36:01', '2020-12-09 11:36:01', NULL, '/demoApp/getDemoAppList', '获取DemoApp列表', 'demoApp', 'GET');
INSERT INTO `sys_apis` VALUES (10012, '2020-12-09 17:11:48', '2020-12-09 17:11:48', NULL, '/excel/import', 'excel导入数据库', 'excel', 'POST');
INSERT INTO `sys_apis` VALUES (10013, '2020-12-11 22:35:33', '2020-12-12 16:07:44', NULL, '/dbTableData/data', '获取数据库数据', 'dbTableData', 'GET');
COMMIT;

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities`;
CREATE TABLE `sys_authorities` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  `authority_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色名',
  `parent_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
BEGIN;
INSERT INTO `sys_authorities` VALUES ('2021-02-23 18:27:45', '2021-02-23 19:19:25', NULL, '888', '普通用户', '0', 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '8881', '普通用户子角色', '888', 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '9528', '测试角色', '0', 'dashboard');
COMMIT;

-- ----------------------------
-- Table structure for sys_authority_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_menus`;
CREATE TABLE `sys_authority_menus` (
  `sys_authority_authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  `sys_base_menu_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`sys_authority_authority_id`,`sys_base_menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_authority_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_authority_menus` VALUES ('888', 1);
INSERT INTO `sys_authority_menus` VALUES ('888', 2);
INSERT INTO `sys_authority_menus` VALUES ('888', 3);
INSERT INTO `sys_authority_menus` VALUES ('888', 4);
INSERT INTO `sys_authority_menus` VALUES ('888', 5);
INSERT INTO `sys_authority_menus` VALUES ('888', 6);
INSERT INTO `sys_authority_menus` VALUES ('888', 7);
INSERT INTO `sys_authority_menus` VALUES ('888', 8);
INSERT INTO `sys_authority_menus` VALUES ('888', 9);
INSERT INTO `sys_authority_menus` VALUES ('888', 10);
INSERT INTO `sys_authority_menus` VALUES ('888', 11);
INSERT INTO `sys_authority_menus` VALUES ('888', 12);
INSERT INTO `sys_authority_menus` VALUES ('888', 13);
INSERT INTO `sys_authority_menus` VALUES ('888', 14);
INSERT INTO `sys_authority_menus` VALUES ('888', 15);
INSERT INTO `sys_authority_menus` VALUES ('888', 16);
INSERT INTO `sys_authority_menus` VALUES ('888', 17);
INSERT INTO `sys_authority_menus` VALUES ('888', 18);
INSERT INTO `sys_authority_menus` VALUES ('888', 19);
INSERT INTO `sys_authority_menus` VALUES ('888', 20);
INSERT INTO `sys_authority_menus` VALUES ('888', 21);
INSERT INTO `sys_authority_menus` VALUES ('888', 22);
INSERT INTO `sys_authority_menus` VALUES ('888', 23);
INSERT INTO `sys_authority_menus` VALUES ('888', 24);
INSERT INTO `sys_authority_menus` VALUES ('888', 25);
INSERT INTO `sys_authority_menus` VALUES ('888', 26);
INSERT INTO `sys_authority_menus` VALUES ('888', 27);
INSERT INTO `sys_authority_menus` VALUES ('888', 28);
INSERT INTO `sys_authority_menus` VALUES ('888', 29);
INSERT INTO `sys_authority_menus` VALUES ('888', 10000);
INSERT INTO `sys_authority_menus` VALUES ('888', 10001);
INSERT INTO `sys_authority_menus` VALUES ('888', 10002);
INSERT INTO `sys_authority_menus` VALUES ('888', 10003);
INSERT INTO `sys_authority_menus` VALUES ('888', 10004);
INSERT INTO `sys_authority_menus` VALUES ('888', 10005);
INSERT INTO `sys_authority_menus` VALUES ('888', 10006);
INSERT INTO `sys_authority_menus` VALUES ('888', 10007);
INSERT INTO `sys_authority_menus` VALUES ('888', 10008);
INSERT INTO `sys_authority_menus` VALUES ('888', 10009);
INSERT INTO `sys_authority_menus` VALUES ('8881', 1);
INSERT INTO `sys_authority_menus` VALUES ('8881', 2);
INSERT INTO `sys_authority_menus` VALUES ('8881', 8);
INSERT INTO `sys_authority_menus` VALUES ('9528', 1);
INSERT INTO `sys_authority_menus` VALUES ('9528', 2);
INSERT INTO `sys_authority_menus` VALUES ('9528', 3);
INSERT INTO `sys_authority_menus` VALUES ('9528', 4);
INSERT INTO `sys_authority_menus` VALUES ('9528', 5);
INSERT INTO `sys_authority_menus` VALUES ('9528', 6);
INSERT INTO `sys_authority_menus` VALUES ('9528', 7);
INSERT INTO `sys_authority_menus` VALUES ('9528', 8);
INSERT INTO `sys_authority_menus` VALUES ('9528', 9);
INSERT INTO `sys_authority_menus` VALUES ('9528', 10);
INSERT INTO `sys_authority_menus` VALUES ('9528', 11);
INSERT INTO `sys_authority_menus` VALUES ('9528', 12);
INSERT INTO `sys_authority_menus` VALUES ('9528', 14);
INSERT INTO `sys_authority_menus` VALUES ('9528', 15);
INSERT INTO `sys_authority_menus` VALUES ('9528', 16);
INSERT INTO `sys_authority_menus` VALUES ('9528', 17);
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menu_parameters
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menu_parameters`;
CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `sys_base_menu_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_base_menu_parameters
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menus`;
CREATE TABLE `sys_base_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_level` bigint unsigned DEFAULT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint DEFAULT NULL COMMENT '排序标记',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_base_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_base_menus` VALUES (1, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'dashboard', 'dashboard', 0, 'view/dashboard/index.vue', 1, 0, 0, '仪表盘', 'setting', 0);
INSERT INTO `sys_base_menus` VALUES (2, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'about', 'about', 0, 'view/about/index.vue', 7, 0, 0, '关于我们', 'info', 0);
INSERT INTO `sys_base_menus` VALUES (3, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'admin', 'superAdmin', 0, 'view/superAdmin/index.vue', 3, 0, 0, '超级管理员', 'user-solid', 0);
INSERT INTO `sys_base_menus` VALUES (4, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '3', 'authority', 'authority', 0, 'view/superAdmin/authority/authority.vue', 1, 0, 0, '角色管理', 's-custom', 0);
INSERT INTO `sys_base_menus` VALUES (5, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '3', 'menu', 'menu', 0, 'view/superAdmin/menu/menu.vue', 2, 1, 0, '菜单管理', 's-order', 0);
INSERT INTO `sys_base_menus` VALUES (6, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '3', 'api', 'api', 0, 'view/superAdmin/api/api.vue', 3, 1, 0, 'api管理', 's-platform', 0);
INSERT INTO `sys_base_menus` VALUES (7, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '3', 'user', 'user', 0, 'view/superAdmin/user/user.vue', 4, 0, 0, '用户管理', 'coordinate', 0);
INSERT INTO `sys_base_menus` VALUES (8, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'person', 'person', 1, 'view/person/person.vue', 4, 0, 0, '个人信息', 'message-solid', 0);
INSERT INTO `sys_base_menus` VALUES (9, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'example', 'example', 0, 'view/example/index.vue', 6, 0, 0, '示例文件', 's-management', 0);
INSERT INTO `sys_base_menus` VALUES (10, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '9', 'excel', 'excel', 0, 'view/example/excel/excel.vue', 4, 0, 0, 'excel导入导出', 's-marketing', 0);
INSERT INTO `sys_base_menus` VALUES (11, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '9', 'upload', 'upload', 0, 'view/example/upload/upload.vue', 5, 0, 0, '上传下载', 'upload', 0);
INSERT INTO `sys_base_menus` VALUES (12, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '9', 'breakpoint', 'breakpoint', 0, 'view/example/breakpoint/breakpoint.vue', 6, 0, 0, '断点续传', 'upload', 0);
INSERT INTO `sys_base_menus` VALUES (13, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '9', 'customer', 'customer', 0, 'view/example/customer/customer.vue', 7, 0, 0, '客户列表（资源示例）', 's-custom', 0);
INSERT INTO `sys_base_menus` VALUES (14, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'systemTools', 'systemTools', 0, 'view/systemTools/index.vue', 5, 0, 0, '系统工具', 's-cooperation', 0);
INSERT INTO `sys_base_menus` VALUES (15, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '14', 'autoCode', 'autoCode', 0, 'view/systemTools/autoCode/index.vue', 1, 1, 0, '代码生成器', 'cpu', 0);
INSERT INTO `sys_base_menus` VALUES (16, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '14', 'formCreate', 'formCreate', 0, 'view/systemTools/formCreate/index.vue', 2, 1, 0, '表单生成器', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (17, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '14', 'system', 'system', 0, 'view/systemTools/system/system.vue', 3, 0, 0, '系统配置', 's-operation', 0);
INSERT INTO `sys_base_menus` VALUES (18, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '3', 'dictionary', 'dictionary', 0, 'view/superAdmin/dictionary/sysDictionary.vue', 5, 0, 0, '字典管理', 'notebook-2', 0);
INSERT INTO `sys_base_menus` VALUES (19, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '3', 'dictionaryDetail/:id', 'dictionaryDetail', 1, 'view/superAdmin/dictionary/sysDictionaryDetail.vue', 1, 0, 0, '字典详情', 's-order', 0);
INSERT INTO `sys_base_menus` VALUES (20, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '3', 'operation', 'operation', 0, 'view/superAdmin/operation/sysOperationRecord.vue', 6, 0, 0, '操作历史', 'time', 0);
INSERT INTO `sys_base_menus` VALUES (21, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '9', 'simpleUploader', 'simpleUploader', 0, 'view/example/simpleUploader/simpleUploader', 6, 0, 0, '断点续传（插件版）', 'upload', 0);
INSERT INTO `sys_base_menus` VALUES (22, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'https://www.gin-vue-admin.com', 'https://www.gin-vue-admin.com', 0, '/', 0, 0, 0, '官方网站', 's-home', 0);
INSERT INTO `sys_base_menus` VALUES (23, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'state', 'state', 0, 'view/system/state.vue', 6, 0, 0, '服务器状态', 'cloudy', 0);
INSERT INTO `sys_base_menus` VALUES (24, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '0', 'workflow', 'workflow', 0, 'view/workflow/index.vue', 5, 0, 0, '工作流功能', 'phone', 0);
INSERT INTO `sys_base_menus` VALUES (25, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '24', 'workflowCreate', 'workflowCreate', 0, 'view/workflow/workflowCreate/workflowCreate.vue', 0, 0, 0, '工作流绘制', 'circle-plus', 0);
INSERT INTO `sys_base_menus` VALUES (26, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '24', 'workflowProcess', 'workflowProcess', 0, 'view/workflow/workflowProcess/workflowProcess.vue', 0, 0, 0, '工作流列表', 's-cooperation', 0);
INSERT INTO `sys_base_menus` VALUES (27, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '24', 'workflowUse', 'workflowUse', 1, 'view/workflow/workflowUse/workflowUse.vue', 0, 0, 0, '使用工作流', 'video-play', 0);
INSERT INTO `sys_base_menus` VALUES (28, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '24', 'started', 'started', 0, 'view/workflow/userList/started.vue', 0, 0, 0, '我发起的', 's-order', 0);
INSERT INTO `sys_base_menus` VALUES (29, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 0, '24', 'need', 'need', 0, 'view/workflow/userList/need.vue', 0, 0, 0, '我的待办', 's-platform', 0);
INSERT INTO `sys_base_menus` VALUES (10000, '2020-12-04 21:30:53', '2020-12-04 22:22:09', NULL, 0, '0', 'demo', 'demo', 0, 'view/example/index.vue', 0, 0, 0, 'Demo', 's-tools', NULL);
INSERT INTO `sys_base_menus` VALUES (10001, '2020-12-04 22:01:38', '2020-12-06 11:20:23', NULL, 0, '10000', 'code_generation', 'code_generation', 0, 'view-demo/code_generation/demo_code_generation.vue', 1, 1, 0, '代码生成示例', 'platform-eleme', NULL);
INSERT INTO `sys_base_menus` VALUES (10002, '2020-12-05 10:47:32', '2020-12-06 11:20:34', NULL, 0, '10000', 'vxe-table', 'vxe-table', 0, 'view-demo/vxe-table/demo_code_generation.vue', 2, 1, 0, 'vxe-table', 's-tools', NULL);
INSERT INTO `sys_base_menus` VALUES (10003, '2020-12-04 23:22:42', '2020-12-05 10:38:58', NULL, 0, '10000', 'demo_upload', 'demo_upload', 0, 'view-demo/upload', 0, 0, 0, '文件上传示例', 'upload', NULL);
INSERT INTO `sys_base_menus` VALUES (10004, '2020-12-05 22:36:43', '2020-12-06 11:21:45', NULL, 0, '10000', 'vxe-table-chart', 'vxe-table-chart', 0, 'view-demo/vxe-table-chart', 4, 1, 0, 'vxe-table-chart', 'star-off', NULL);
INSERT INTO `sys_base_menus` VALUES (10005, '2020-12-06 11:21:39', '2020-12-06 11:22:33', NULL, 0, '10000', 'query-setting', 'query-setting', 0, 'view-demo/query-setting', 3, 0, 0, 'query-setting', 'setting', NULL);
INSERT INTO `sys_base_menus` VALUES (10006, '2020-12-06 11:21:39', '2020-12-07 21:09:29', NULL, 0, '10000', 'excel-import', 'excel-import', 0, 'view-demo/excel-import', 5, 0, 0, 'excel-import', 'setting', NULL);
INSERT INTO `sys_base_menus` VALUES (10007, '2020-12-09 12:04:25', '2020-12-09 12:17:13', NULL, 0, '10000', 'demo_app', 'demo_app', 0, 'app/demo_app', 6, 0, 0, 'demo_app', 's-grid', NULL);
INSERT INTO `sys_base_menus` VALUES (10008, '2020-12-09 13:54:38', '2020-12-09 13:55:01', NULL, 0, '10000', 'excel-import-db', 'excel-import-db', 0, 'app/excel-import-db', 7, 0, 0, 'excel-import-db', 'top-right', NULL);
INSERT INTO `sys_base_menus` VALUES (10009, '2020-12-11 22:02:29', '2020-12-12 16:09:37', NULL, 0, '10000', 'user-defined-chart', 'user-defined-chart', 0, 'app/user-defined-chart', 8, 0, 0, 'user-defined-chart', 'present', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_data_authority_id
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_authority_id`;
CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` varchar(90) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_data_authority_id
-- ----------------------------
BEGIN;
INSERT INTO `sys_data_authority_id` VALUES ('888', '888');
INSERT INTO `sys_data_authority_id` VALUES ('888', '8881');
INSERT INTO `sys_data_authority_id` VALUES ('888', '9528');
INSERT INTO `sys_data_authority_id` VALUES ('9528', '8881');
INSERT INTO `sys_data_authority_id` VALUES ('9528', '9528');
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionaries` VALUES (1, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, '性别', 'sex', 1, '性别字典');
INSERT INTO `sys_dictionaries` VALUES (2, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, '数据库int类型', 'int', 1, 'int类型对应的数据库类型');
INSERT INTO `sys_dictionaries` VALUES (3, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, '数据库时间日期类型', 'time.Time', 1, '数据库时间日期类型');
INSERT INTO `sys_dictionaries` VALUES (4, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, '数据库浮点型', 'float64', 1, '数据库浮点型');
INSERT INTO `sys_dictionaries` VALUES (5, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, '数据库字符串', 'string', 1, '数据库字符串');
INSERT INTO `sys_dictionaries` VALUES (6, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, '数据库bool类型', 'bool', 1, '数据库bool类型');
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionary_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary_details`;
CREATE TABLE `sys_dictionary_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示值',
  `value` bigint DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_dictionary_details
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionary_details` VALUES (1, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'smallint', 1, 1, 1, 2);
INSERT INTO `sys_dictionary_details` VALUES (2, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'mediumint', 2, 1, 2, 2);
INSERT INTO `sys_dictionary_details` VALUES (3, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'int', 3, 1, 3, 2);
INSERT INTO `sys_dictionary_details` VALUES (4, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'bigint', 4, 1, 4, 2);
INSERT INTO `sys_dictionary_details` VALUES (5, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'date', 0, 1, 0, 3);
INSERT INTO `sys_dictionary_details` VALUES (6, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'time', 1, 1, 1, 3);
INSERT INTO `sys_dictionary_details` VALUES (7, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'year', 2, 1, 2, 3);
INSERT INTO `sys_dictionary_details` VALUES (8, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'datetime', 3, 1, 3, 3);
INSERT INTO `sys_dictionary_details` VALUES (9, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'timestamp', 5, 1, 5, 3);
INSERT INTO `sys_dictionary_details` VALUES (10, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'float', 0, 1, 0, 4);
INSERT INTO `sys_dictionary_details` VALUES (11, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'double', 1, 1, 1, 4);
INSERT INTO `sys_dictionary_details` VALUES (12, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'decimal', 2, 1, 2, 4);
INSERT INTO `sys_dictionary_details` VALUES (13, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'char', 0, 1, 0, 5);
INSERT INTO `sys_dictionary_details` VALUES (14, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'varchar', 1, 1, 1, 5);
INSERT INTO `sys_dictionary_details` VALUES (15, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'tinyblob', 2, 1, 2, 5);
INSERT INTO `sys_dictionary_details` VALUES (16, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'tinytext', 3, 1, 3, 5);
INSERT INTO `sys_dictionary_details` VALUES (17, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'text', 4, 1, 4, 5);
INSERT INTO `sys_dictionary_details` VALUES (18, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'blob', 5, 1, 5, 5);
INSERT INTO `sys_dictionary_details` VALUES (19, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'mediumblob', 6, 1, 6, 5);
INSERT INTO `sys_dictionary_details` VALUES (20, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'mediumtext', 7, 1, 7, 5);
INSERT INTO `sys_dictionary_details` VALUES (21, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'longblob', 8, 1, 8, 5);
INSERT INTO `sys_dictionary_details` VALUES (22, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'longtext', 9, 1, 9, 5);
INSERT INTO `sys_dictionary_details` VALUES (23, '2021-02-23 18:28:39', '2021-02-23 18:28:39', NULL, 'tinyint', 0, 1, 0, 6);
COMMIT;

-- ----------------------------
-- Table structure for sys_operation_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_records`;
CREATE TABLE `sys_operation_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求路径',
  `status` bigint DEFAULT NULL COMMENT '请求状态',
  `latency` bigint DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '错误信息',
  `body` longtext COLLATE utf8mb4_general_ci COMMENT '请求Body',
  `resp` longtext COLLATE utf8mb4_general_ci COMMENT '响应Body',
  `user_id` bigint unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_operation_records
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '系统用户' COMMENT '用户昵称',
  `header_img` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'http://qmplusimg.henrongyi.top/head.png' COMMENT '用户头像',
  `authority_id` varchar(90) COLLATE utf8mb4_general_ci DEFAULT '888' COMMENT '用户角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
BEGIN;
INSERT INTO `sys_users` VALUES (1, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '18736f76-1470-4b72-8999-845fa69ee5de', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', 'http://qmplusimg.henrongyi.top/gva_header.jpg', '888');
INSERT INTO `sys_users` VALUES (2, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, '1042fc75-2364-468a-88d3-ac62e59749a5', 'a303176530', '3ec063004a6f31642261936a379fde3d', 'QMPlusUser', 'http://qmplusimg.henrongyi.top/1572075907logo.png', '9528');
COMMIT;

-- ----------------------------
-- Table structure for workflow_edges
-- ----------------------------
DROP TABLE IF EXISTS `workflow_edges`;
CREATE TABLE `workflow_edges` (
  `id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `workflow_process_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '流程标识',
  `clazz` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型（线）',
  `source` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '起点节点',
  `target` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '目标节点',
  `source_anchor` bigint DEFAULT NULL COMMENT '起点',
  `target_anchor` bigint DEFAULT NULL COMMENT '目标点',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '详细介绍',
  `shape` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '形状',
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标题',
  `hide_icon` tinyint(1) DEFAULT NULL COMMENT '隐藏图标',
  `condition_expression` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '条件标识',
  `seq` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '序号',
  `reverse` tinyint(1) DEFAULT NULL COMMENT '是否反向',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idx_workflow_edges_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of workflow_edges
-- ----------------------------
BEGIN;
INSERT INTO `workflow_edges` VALUES ('flow1604985849039', '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'leaveFlow', 'flow', 'start1603681292875', 'userTask1603681299962', 1, 3, '', 'flow-polyline-round', '', 0, '', '', 0);
INSERT INTO `workflow_edges` VALUES ('flow1604985879574', '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'leaveFlow', 'flow', 'userTask1603681299962', 'end1603681360882', 0, 2, '', 'flow-polyline-round', '同意', 0, 'yes', '', 0);
INSERT INTO `workflow_edges` VALUES ('flow1604985881207', '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'leaveFlow', 'flow', 'userTask1603681299962', 'end1603681358043', 2, 2, '', 'flow-polyline-round', '不同意', 0, 'no', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for workflow_end_points
-- ----------------------------
DROP TABLE IF EXISTS `workflow_end_points`;
CREATE TABLE `workflow_end_points` (
  `workflow_edge_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `index` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_end_points_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of workflow_end_points
-- ----------------------------
BEGIN;
INSERT INTO `workflow_end_points` VALUES ('flow1604985849039', 31, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 270, 202, 3);
INSERT INTO `workflow_end_points` VALUES ('flow1604985879574', 32, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 518, 83.5, 2);
INSERT INTO `workflow_end_points` VALUES ('flow1604985881207', 33, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 517.5, 302, 2);
COMMIT;

-- ----------------------------
-- Table structure for workflow_moves
-- ----------------------------
DROP TABLE IF EXISTS `workflow_moves`;
CREATE TABLE `workflow_moves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `workflow_process_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '工作流模板ID',
  `workflow_node_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '工作流节点ID',
  `business_type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '业务标记',
  `business_id` bigint unsigned DEFAULT NULL COMMENT '业务ID',
  `promoter_id` bigint unsigned DEFAULT NULL COMMENT '当前流转发起人',
  `operator_id` bigint unsigned DEFAULT NULL COMMENT '当前流转操作人',
  `action` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '工作流驱动事件',
  `param` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '工作流驱动参数',
  `is_active` tinyint(1) DEFAULT NULL COMMENT '是否是活跃节点 ',
  PRIMARY KEY (`id`),
  KEY `idx_workflow_moves_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of workflow_moves
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for workflow_nodes
-- ----------------------------
DROP TABLE IF EXISTS `workflow_nodes`;
CREATE TABLE `workflow_nodes` (
  `id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL COMMENT '节点id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `workflow_process_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '流程标识',
  `clazz` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '节点类型',
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '节点名称',
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图标类型',
  `shape` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '形状',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '详细介绍',
  `view` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '前端视图文件',
  `x` double DEFAULT NULL COMMENT 'x位置',
  `y` double DEFAULT NULL COMMENT 'y位置',
  `wait_state` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '等待属性',
  `state_value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '等待值',
  `to` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '收件人',
  `subject` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '内容',
  `cycle` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '循环时间',
  `duration` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '持续时间',
  `hide_icon` tinyint(1) DEFAULT NULL COMMENT '是否隐藏图标',
  `due_date` datetime DEFAULT NULL COMMENT '到期时间',
  `assign_type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '审批类型',
  `assign_value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '审批类型值',
  `success` tinyint(1) DEFAULT NULL COMMENT '是否成功',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idx_workflow_nodes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of workflow_nodes
-- ----------------------------
BEGIN;
INSERT INTO `workflow_nodes` VALUES ('end1603681358043', '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'leaveFlow', 'end', '请假失败', 'end-node', 'end-node', '', 'view/exa_wf_leave/exa_wf_leaveFrom.vue', 302, 545.5, '', '', '', '', '', '', '', 0, NULL, '', '', 0);
INSERT INTO `workflow_nodes` VALUES ('end1603681360882', '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'leaveFlow', 'end', '请假成功', 'end-node', 'end-node', '请假完成，具体结果等待提交', 'view/exa_wf_leave/exa_wf_leaveFrom.vue', 83.5, 546, '', '', '', '', '', '', '', 0, NULL, '', '', 1);
INSERT INTO `workflow_nodes` VALUES ('start1603681292875', '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'leaveFlow', 'start', '发起请假', 'start-node', 'start-node', '发起一个请假流程', 'view/exa_wf_leave/exa_wf_leaveFrom.vue', 201, 109, '', '', '', '', '', '', '', 0, NULL, '', '', 0);
INSERT INTO `workflow_nodes` VALUES ('userTask1603681299962', '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'leaveFlow', 'userTask', '审批', 'user-task-node', 'user-task-node', '审批会签', 'view/exa_wf_leave/exa_wf_leaveFrom.vue', 202, 320.5, '', '', '', '', '', '', '', 0, NULL, 'user', ',1,2,', 0);
COMMIT;

-- ----------------------------
-- Table structure for workflow_processes
-- ----------------------------
DROP TABLE IF EXISTS `workflow_processes`;
CREATE TABLE `workflow_processes` (
  `id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程标识',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '流程名称',
  `category` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '分类',
  `clazz` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型',
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '流程标题',
  `hide_icon` tinyint(1) DEFAULT NULL COMMENT '是否隐藏图标',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '详细介绍',
  `view` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '前端视图文件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idx_workflow_processes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of workflow_processes
-- ----------------------------
BEGIN;
INSERT INTO `workflow_processes` VALUES ('leaveFlow', '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 'leaveFlow', '', 'process', '请假流程（演示）', 0, '请假流程演示', 'view/iconList/index.vue');
COMMIT;

-- ----------------------------
-- Table structure for workflow_start_points
-- ----------------------------
DROP TABLE IF EXISTS `workflow_start_points`;
CREATE TABLE `workflow_start_points` (
  `workflow_edge_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `index` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_start_points_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of workflow_start_points
-- ----------------------------
BEGIN;
INSERT INTO `workflow_start_points` VALUES ('flow1604985849039', 31, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 137, 201, 1);
INSERT INTO `workflow_start_points` VALUES ('flow1604985879574', 32, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 320.5, 174, 0);
INSERT INTO `workflow_start_points` VALUES ('flow1604985881207', 33, '2021-02-23 18:27:45', '2021-02-23 18:27:45', NULL, 320.5, 230, 2);
COMMIT;

-- ----------------------------
-- View structure for authority_menu
-- ----------------------------
DROP VIEW IF EXISTS `authority_menu`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `authority_menu` AS select `sys_base_menus`.`id` AS `id`,`sys_base_menus`.`created_at` AS `created_at`,`sys_base_menus`.`updated_at` AS `updated_at`,`sys_base_menus`.`deleted_at` AS `deleted_at`,`sys_base_menus`.`menu_level` AS `menu_level`,`sys_base_menus`.`parent_id` AS `parent_id`,`sys_base_menus`.`path` AS `path`,`sys_base_menus`.`name` AS `name`,`sys_base_menus`.`hidden` AS `hidden`,`sys_base_menus`.`component` AS `component`,`sys_base_menus`.`title` AS `title`,`sys_base_menus`.`icon` AS `icon`,`sys_base_menus`.`sort` AS `sort`,`sys_authority_menus`.`sys_authority_authority_id` AS `authority_id`,`sys_authority_menus`.`sys_base_menu_id` AS `menu_id`,`sys_base_menus`.`keep_alive` AS `keep_alive`,`sys_base_menus`.`default_menu` AS `default_menu` from (`sys_authority_menus` join `sys_base_menus` on((`sys_authority_menus`.`sys_base_menu_id` = `sys_base_menus`.`id`)));

SET FOREIGN_KEY_CHECKS = 1;
