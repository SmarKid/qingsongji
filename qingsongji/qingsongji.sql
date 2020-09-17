/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50536
 Source Host           : localhost:3306
 Source Schema         : qingsongji

 Target Server Type    : MySQL
 Target Server Version : 50536
 File Encoding         : 65001

 Date: 23/04/2019 14:37:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for budget
-- ----------------------------
DROP TABLE IF EXISTS `budget`;
CREATE TABLE `budget`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `budname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` date NOT NULL,
  `user_id` int(32) NOT NULL,
  `budamt` decimal(16, 0) NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of budget
-- ----------------------------
INSERT INTO `budget` VALUES (14, '五一出去旅游', '2019-04-30', 1, 1500, '');
INSERT INTO `budget` VALUES (15, '清明假期', '2019-04-04', 2, 1000, '');
INSERT INTO `budget` VALUES (16, '五一去成都', '2019-04-30', 2, 3000, '');
INSERT INTO `budget` VALUES (17, '买球鞋', '2019-06-01', 1, 2000, '');
INSERT INTO `budget` VALUES (18, '给女朋友买一套化妆品', '2019-05-16', 1, 500, '');

-- ----------------------------
-- Table structure for expense
-- ----------------------------
DROP TABLE IF EXISTS `expense`;
CREATE TABLE `expense`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `way_id` int(32) NOT NULL DEFAULT 1,
  `usefor_id` int(32) NOT NULL DEFAULT 1,
  `amount` int(32) NOT NULL,
  `date` date NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of expense
-- ----------------------------
INSERT INTO `expense` VALUES (13, 1, 2, 2, 20, '2019-04-10', '吃饭');
INSERT INTO `expense` VALUES (14, 1, 3, 3, 30, '2019-04-01', '四级考试');
INSERT INTO `expense` VALUES (15, 1, 2, 2, 12, '2019-04-09', '');
INSERT INTO `expense` VALUES (16, 1, 2, 2, 30, '2019-04-16', '约会');
INSERT INTO `expense` VALUES (17, 2, 2, 2, 25, '2019-04-08', '吃饭');
INSERT INTO `expense` VALUES (18, 2, 4, 2, 24, '2019-04-10', '');
INSERT INTO `expense` VALUES (19, 2, 1, 1, 50, '2019-04-08', '');
INSERT INTO `expense` VALUES (20, 1, 2, 2, 20, '2019-04-12', '');
INSERT INTO `expense` VALUES (22, 43, 2, 2, 15, '2019-04-11', '');
INSERT INTO `expense` VALUES (23, 43, 2, 3, 150, '2019-04-11', '');
INSERT INTO `expense` VALUES (24, 46, 1, 2, 50, '2019-04-13', '');

-- ----------------------------
-- Table structure for income
-- ----------------------------
DROP TABLE IF EXISTS `income`;
CREATE TABLE `income`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `way_id` int(32) NOT NULL DEFAULT 1,
  `source_id` int(32) NOT NULL DEFAULT 1,
  `amount` decimal(32, 2) NOT NULL,
  `date` date NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_user_income`(`user_id`) USING BTREE,
  CONSTRAINT `FK_user_income` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of income
-- ----------------------------
INSERT INTO `income` VALUES (4, 2, 1, 1, 420.00, '2019-04-08', '');
INSERT INTO `income` VALUES (5, 2, 2, 2, 520.00, '2019-04-17', '');
INSERT INTO `income` VALUES (6, 2, 3, 1, 1500.00, '2019-04-01', '生活费');
INSERT INTO `income` VALUES (16, 1, 2, 2, 1500.00, '2019-04-01', '');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `user_id` int(32) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 'tom', '123456');
INSERT INTO `login` VALUES (2, 'mary', '123456');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `user_id` int(8) NOT NULL,
  `isnotice` tinyint(1) NOT NULL DEFAULT 0,
  `isremindbudget` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE,
  CONSTRAINT `FK_user_set` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (2, 0, 0);

-- ----------------------------
-- Table structure for source
-- ----------------------------
DROP TABLE IF EXISTS `source`;
CREATE TABLE `source`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `source`(`source`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of source
-- ----------------------------
INSERT INTO `source` VALUES (1, '其他来源');
INSERT INTO `source` VALUES (31, '兼职');
INSERT INTO `source` VALUES (3, '工资');
INSERT INTO `source` VALUES (29, '年终奖');
INSERT INTO `source` VALUES (26, '测试1');
INSERT INTO `source` VALUES (2, '父母');
INSERT INTO `source` VALUES (30, '男朋友');

-- ----------------------------
-- Table structure for usefor
-- ----------------------------
DROP TABLE IF EXISTS `usefor`;
CREATE TABLE `usefor`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usefor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `usefor`(`usefor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usefor
-- ----------------------------
INSERT INTO `usefor` VALUES (1, '其他用途');
INSERT INTO `usefor` VALUES (2, '吃饭');
INSERT INTO `usefor` VALUES (11, '学习');
INSERT INTO `usefor` VALUES (7, '测试1');
INSERT INTO `usefor` VALUES (8, '测试2');
INSERT INTO `usefor` VALUES (6, '测试用途');
INSERT INTO `usefor` VALUES (4, '生活用品');
INSERT INTO `usefor` VALUES (3, '约会');
INSERT INTO `usefor` VALUES (5, '考试');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telnum` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avecon` int(255) NULL DEFAULT 50 COMMENT '日平均消费',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'tom', '男', '3313213', '1019554673@qq.com', 50, '没有什么人能一路单纯到底，但是要记住，别忘了最初的自己。');
INSERT INTO `user` VALUES (2, 'mary', '女', '13972174542', '1019243902@qq.com', 60, '没有什么人能一路单纯到底，但是要记住，别忘了最初的自己。');

-- ----------------------------
-- Table structure for user_source
-- ----------------------------
DROP TABLE IF EXISTS `user_source`;
CREATE TABLE `user_source`  (
  `user_id` int(32) NOT NULL,
  `source_id` int(10) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_source
-- ----------------------------
INSERT INTO `user_source` VALUES (2, 1);
INSERT INTO `user_source` VALUES (2, 2);
INSERT INTO `user_source` VALUES (2, 3);
INSERT INTO `user_source` VALUES (1, 1);
INSERT INTO `user_source` VALUES (1, 2);
INSERT INTO `user_source` VALUES (1, 3);

-- ----------------------------
-- Table structure for user_usefor
-- ----------------------------
DROP TABLE IF EXISTS `user_usefor`;
CREATE TABLE `user_usefor`  (
  `user_id` int(32) NOT NULL,
  `usefor_id` int(10) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_usefor
-- ----------------------------
INSERT INTO `user_usefor` VALUES (1, 1);
INSERT INTO `user_usefor` VALUES (2, 1);
INSERT INTO `user_usefor` VALUES (2, 2);
INSERT INTO `user_usefor` VALUES (2, 3);
INSERT INTO `user_usefor` VALUES (1, 2);
INSERT INTO `user_usefor` VALUES (1, 3);

-- ----------------------------
-- Table structure for user_way
-- ----------------------------
DROP TABLE IF EXISTS `user_way`;
CREATE TABLE `user_way`  (
  `user_id` int(32) NOT NULL,
  `way_id` int(10) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_way
-- ----------------------------
INSERT INTO `user_way` VALUES (1, 1);
INSERT INTO `user_way` VALUES (1, 2);
INSERT INTO `user_way` VALUES (1, 3);
INSERT INTO `user_way` VALUES (2, 1);
INSERT INTO `user_way` VALUES (2, 2);
INSERT INTO `user_way` VALUES (2, 3);

-- ----------------------------
-- Table structure for way
-- ----------------------------
DROP TABLE IF EXISTS `way`;
CREATE TABLE `way`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `way` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of way
-- ----------------------------
INSERT INTO `way` VALUES (1, '其他方式');
INSERT INTO `way` VALUES (2, '支付宝');
INSERT INTO `way` VALUES (3, '微信');
INSERT INTO `way` VALUES (4, '建设银行');
INSERT INTO `way` VALUES (5, '中国银行');

SET FOREIGN_KEY_CHECKS = 1;
