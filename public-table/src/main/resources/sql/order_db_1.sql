/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : order_db_1

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/11/2019 01:32:52
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
INSERT INTO `t_order_1` VALUES (397544418938191872, 2.00, 2, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544418975940608, 4.00, 2, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544419005300736, 6.00, 2, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544419030466560, 8.00, 2, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544419055632384, 10.00, 2, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544419084992512, 12.00, 2, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544419110158336, 14.00, 2, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544419135324160, 16.00, 2, 'SUCCESS');
INSERT INTO `t_order_1` VALUES (397544419160489984, 18.00, 2, 'SUCCESS');

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
INSERT INTO `t_order_2` VALUES (397544418501984257, 1.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544418967552001, 3.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544418992717825, 5.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544419017883649, 7.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544419043049473, 9.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544419072409601, 11.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544419097575425, 13.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544419122741249, 15.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544419147907073, 17.00, 2, 'SUCCESS');
INSERT INTO `t_order_2` VALUES (397544419173072897, 19.00, 2, 'SUCCESS');

SET FOREIGN_KEY_CHECKS = 1;
