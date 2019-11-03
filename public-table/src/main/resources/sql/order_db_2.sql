/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : order_db_2

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/11/2019 01:33:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict`  (
  `dict_id` bigint(20) NOT NULL COMMENT '字典id',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典类型',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编码',
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES (1, 'user_type', '0', '管理员');
INSERT INTO `t_dict` VALUES (2, 'user_type', '1', '操作员');
INSERT INTO `t_dict` VALUES (3, 'user_type', '0', '超级管理员');
INSERT INTO `t_dict` VALUES (4, 'user_type', '1', '二级管理员');

-- ----------------------------
-- Table structure for t_order_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_1`;
CREATE TABLE `t_order_1`  (
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `price` decimal(10, 2) NOT NULL COMMENT '订单价格',
  `user_id` bigint(20) NOT NULL COMMENT '下单用户id',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_1
-- ----------------------------
INSERT INTO `t_order_1` VALUES (397544302340734976, 2.00, 1, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544302391066624, 4.00, 1, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544302420426752, 6.00, 1, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544302458175488, 8.00, 1, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544302491729920, 10.00, 1, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544302525284352, 12.00, 1, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544302554644480, 14.00, 1, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544302693056512, 16.00, 1, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544302722416640, 18.00, 1, 'SUCCESS');

-- ----------------------------
-- Table structure for t_order_2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_2`;
CREATE TABLE `t_order_2`  (
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `price` decimal(10, 2) NOT NULL COMMENT '订单价格',
  `user_id` bigint(20) NOT NULL COMMENT '下单用户id',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_2
-- ----------------------------
INSERT INTO `t_order_2` VALUES (397544301875167233, 1.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302374289409, 3.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302407843841, 5.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302441398273, 7.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302474952705, 9.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302508507137, 11.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302537867265, 13.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302571421697, 15.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302705639425, 17.00, 1, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544302739193857, 19.00, 1, 'SUCCESS');

SET FOREIGN_KEY_CHECKS = 1;
