/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : product_db_1

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/11/2019 17:32:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product_descript_1
-- ----------------------------
DROP TABLE IF EXISTS `product_descript_1`;
CREATE TABLE `product_descript_1`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `product_info_id` bigint(20) NULL DEFAULT NULL COMMENT '所属商品id',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品描述',
  `store_info_id` bigint(20) NULL DEFAULT NULL COMMENT '所属店铺id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_descript_2
-- ----------------------------
DROP TABLE IF EXISTS `product_descript_2`;
CREATE TABLE `product_descript_2`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `product_info_id` bigint(20) NULL DEFAULT NULL COMMENT '所属商品id',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品描述',
  `store_info_id` bigint(20) NULL DEFAULT NULL COMMENT '所属店铺id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_info_1
-- ----------------------------
DROP TABLE IF EXISTS `product_info_1`;
CREATE TABLE `product_info_1`  (
  `product_info_id` bigint(20) NOT NULL COMMENT '主键id',
  `store_info_id` bigint(20) NULL DEFAULT NULL COMMENT '所属店铺id',
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `spec` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `region_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产地',
  `price` decimal(10, 0) NULL DEFAULT NULL COMMENT '商品价格',
  `image_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`product_info_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_info_2
-- ----------------------------
DROP TABLE IF EXISTS `product_info_2`;
CREATE TABLE `product_info_2`  (
  `product_info_id` bigint(20) NOT NULL COMMENT '主键id',
  `store_info_id` bigint(20) NULL DEFAULT NULL COMMENT '所属店铺id',
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `spec` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `region_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产地',
  `price` decimal(10, 0) NULL DEFAULT NULL COMMENT '商品价格',
  `image_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`product_info_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
