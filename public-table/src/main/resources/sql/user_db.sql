/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : user_db

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/11/2019 01:34:36
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
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `user_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户类型',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (2, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (3, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (4, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (5, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (6, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (7, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (8, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (9, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (10, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (11, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (12, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (13, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (14, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (15, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (16, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (17, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (18, 'hhhh', NULL);
INSERT INTO `t_user` VALUES (19, 'hhhh', NULL);

SET FOREIGN_KEY_CHECKS = 1;
