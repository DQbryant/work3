/*
 Navicat Premium Data Transfer

 Source Server         : 我的连接
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : ceshi

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 06/01/2020 19:56:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casts
-- ----------------------------
DROP TABLE IF EXISTS `casts`;
CREATE TABLE `casts`  (
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NOT NULL,
  `week` int(2) NOT NULL,
  `dayweather` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nightweather` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `daytemp` int(3) NOT NULL,
  `nighttemp` int(3) NOT NULL,
  `daywind` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nightwind` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `daypower` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nightpower` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`city`, `date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casts
-- ----------------------------
INSERT INTO `casts` VALUES ('上海市', '2020-01-06', 1, '多云', '多云', 21, 13, '西', '西', '4', '4');
INSERT INTO `casts` VALUES ('上海市', '2020-01-07', 2, '小雨', '阴', 21, 5, '西北', '西北', '6', '6');
INSERT INTO `casts` VALUES ('上海市', '2020-01-08', 3, '多云', '阴', 6, 4, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('上海市', '2020-01-09', 4, '小雨', '小雨', 9, 6, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('乌鲁木齐市', '2020-01-06', 1, '雾', '雾', -13, -16, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('乌鲁木齐市', '2020-01-07', 2, '多云', '多云', -7, -15, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('乌鲁木齐市', '2020-01-08', 3, '多云', '多云', -8, -14, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('乌鲁木齐市', '2020-01-09', 4, '多云', '晴', -8, -14, '东南', '东南', '4', '4');
INSERT INTO `casts` VALUES ('兰州市', '2020-01-06', 1, '小雪', '多云', 0, -8, '东', '东', '≤3', '≤3');
INSERT INTO `casts` VALUES ('兰州市', '2020-01-07', 2, '晴', '多云', 5, -8, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('兰州市', '2020-01-08', 3, '多云', '多云', 5, -5, '西', '西', '≤3', '≤3');
INSERT INTO `casts` VALUES ('兰州市', '2020-01-09', 4, '多云', '多云', 2, -5, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('北京市', '2020-01-06', 1, '阴', '多云', 3, -2, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('北京市', '2020-01-07', 2, '多云', '晴', 4, -4, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('北京市', '2020-01-08', 3, '晴', '晴', 5, -7, '西南', '西南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('北京市', '2020-01-09', 4, '多云', '多云', 3, -7, '西北', '西北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('南京市', '2020-01-06', 1, '阴', '小雨', 12, 8, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('南京市', '2020-01-07', 2, '小雨', '阴', 9, 2, '西北', '西北', '5', '5');
INSERT INTO `casts` VALUES ('南京市', '2020-01-08', 3, '多云', '阴', 6, 2, '东', '东', '≤3', '≤3');
INSERT INTO `casts` VALUES ('南京市', '2020-01-09', 4, '小雨', '小雨', 5, 2, '东北', '东北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('南宁市', '2020-01-06', 1, '阴', '多云', 26, 19, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('南宁市', '2020-01-07', 2, '多云', '多云', 27, 17, '东北', '东北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('南宁市', '2020-01-08', 3, '多云', '多云', 27, 17, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('南宁市', '2020-01-09', 4, '多云', '小雨', 25, 17, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('南昌市', '2020-01-06', 1, '阴', '小雨', 24, 12, '西南', '西南', '4', '4');
INSERT INTO `casts` VALUES ('南昌市', '2020-01-07', 2, '小雨', '晴', 16, 4, '东北', '东北', '4', '4');
INSERT INTO `casts` VALUES ('南昌市', '2020-01-08', 3, '晴', '晴', 11, 4, '北', '北', '4', '4');
INSERT INTO `casts` VALUES ('南昌市', '2020-01-09', 4, '多云', '多云', 11, 5, '北', '北', '4', '4');
INSERT INTO `casts` VALUES ('合肥市', '2020-01-06', 1, '中雨', '中雨', 7, 6, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('合肥市', '2020-01-07', 2, '小雨', '阴', 8, 2, '西北', '西北', '4', '4');
INSERT INTO `casts` VALUES ('合肥市', '2020-01-08', 3, '阴', '小雨', 6, 1, '东', '东', '4', '4');
INSERT INTO `casts` VALUES ('合肥市', '2020-01-09', 4, '小雨', '小雨', 4, 1, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('呼和浩特市', '2020-01-06', 1, '多云', '多云', -2, -13, '东北', '东北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('呼和浩特市', '2020-01-07', 2, '多云', '多云', -3, -15, '南', '南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('呼和浩特市', '2020-01-08', 3, '晴', '多云', -4, -15, '西', '西', '≤3', '≤3');
INSERT INTO `casts` VALUES ('呼和浩特市', '2020-01-09', 4, '多云', '多云', -2, -14, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('哈尔滨市', '2020-01-06', 1, '阴', '中雪', -7, -12, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('哈尔滨市', '2020-01-07', 2, '小雪', '多云', -9, -19, '东北', '东北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('哈尔滨市', '2020-01-08', 3, '晴', '晴', -13, -24, '西北', '西北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('哈尔滨市', '2020-01-09', 4, '晴', '晴', -11, -25, '西', '西', '≤3', '≤3');
INSERT INTO `casts` VALUES ('天津市', '2020-01-06', 1, '阴', '多云', 1, 0, '东北', '东北', '5', '5');
INSERT INTO `casts` VALUES ('天津市', '2020-01-07', 2, '多云', '多云', 3, -3, '北', '北', '5', '5');
INSERT INTO `casts` VALUES ('天津市', '2020-01-08', 3, '晴', '晴', 4, -4, '西南', '西南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('天津市', '2020-01-09', 4, '晴', '晴', 4, -4, '西南', '西南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('太原市', '2020-01-06', 1, '多云', '小雪', 1, -3, '东北', '东北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('太原市', '2020-01-07', 2, '雨夹雪', '晴', 1, -9, '西', '西', '≤3', '≤3');
INSERT INTO `casts` VALUES ('太原市', '2020-01-08', 3, '多云', '多云', 3, -9, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('太原市', '2020-01-09', 4, '阴', '多云', 3, -7, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('广州市', '2020-01-06', 1, '阴', '阴', 25, 19, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('广州市', '2020-01-07', 2, '多云', '多云', 26, 15, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('广州市', '2020-01-08', 3, '多云', '多云', 24, 13, '东北', '东北', '4', '4');
INSERT INTO `casts` VALUES ('广州市', '2020-01-09', 4, '多云', '多云', 24, 14, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('成都市', '2020-01-06', 1, '阴', '多云', 11, 4, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('成都市', '2020-01-07', 2, '多云', '多云', 11, 4, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('成都市', '2020-01-08', 3, '多云', '多云', 11, 5, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('成都市', '2020-01-09', 4, '多云', '小雨', 9, 5, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('拉萨市', '2020-01-06', 1, '多云', '晴', 0, -8, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('拉萨市', '2020-01-07', 2, '晴', '多云', 9, -8, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('拉萨市', '2020-01-08', 3, '多云', '多云', 9, -6, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('拉萨市', '2020-01-09', 4, '多云', '多云', 7, -5, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('昆明市', '2020-01-06', 1, '小雨', '多云', 16, 3, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('昆明市', '2020-01-07', 2, '晴', '晴', 18, 3, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('昆明市', '2020-01-08', 3, '晴', '晴', 19, 3, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('昆明市', '2020-01-09', 4, '晴', '多云', 19, 4, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('杭州市', '2020-01-06', 1, '雾', '多云', 24, 11, '西', '西', '4', '4');
INSERT INTO `casts` VALUES ('杭州市', '2020-01-07', 2, '小雨', '阴', 22, 4, '西', '西', '5', '5');
INSERT INTO `casts` VALUES ('杭州市', '2020-01-08', 3, '阴', '多云', 8, 1, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('杭州市', '2020-01-09', 4, '阴', '阴', 10, 3, '东', '东', '4', '4');
INSERT INTO `casts` VALUES ('武汉市', '2020-01-06', 1, '小雨', '中雨', 7, 3, '无风向', '无风向', '5', '5');
INSERT INTO `casts` VALUES ('武汉市', '2020-01-07', 2, '多云', '多云', 8, -1, '东北', '东北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('武汉市', '2020-01-08', 3, '小雨', '小雨', 6, 0, '东北', '东北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('武汉市', '2020-01-09', 4, '小雨', '小雨', 4, 2, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('沈阳市', '2020-01-06', 1, '雨夹雪', '阵雪', 1, -8, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('沈阳市', '2020-01-07', 2, '晴', '多云', -6, -13, '无风向', '无风向', '5', '5');
INSERT INTO `casts` VALUES ('沈阳市', '2020-01-08', 3, '多云', '多云', -7, -17, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('沈阳市', '2020-01-09', 4, '晴', '晴', -3, -14, '南', '南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('济南市', '2020-01-06', 1, '雾', '雨夹雪', 2, 0, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('济南市', '2020-01-07', 2, '大雪', '多云', 1, -6, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('济南市', '2020-01-08', 3, '晴', '晴', 2, -7, '南', '南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('济南市', '2020-01-09', 4, '多云', '多云', 2, -6, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('海口市', '2020-01-06', 1, '多云', '多云', 25, 19, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('海口市', '2020-01-07', 2, '多云', '多云', 26, 19, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('海口市', '2020-01-08', 3, '小雨', '多云', 24, 19, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('海口市', '2020-01-09', 4, '小雨', '多云', 25, 20, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('石家庄市', '2020-01-06', 1, '中雪', '小雪', 1, -1, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('石家庄市', '2020-01-07', 2, '小雪', '多云', 2, -4, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('石家庄市', '2020-01-08', 3, '晴', '晴', 3, -4, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('石家庄市', '2020-01-09', 4, '多云', '多云', 2, -5, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('福州市', '2020-01-06', 1, '多云', '阴', 27, 15, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('福州市', '2020-01-07', 2, '多云', '晴', 27, 11, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('福州市', '2020-01-08', 3, '多云', '阴', 19, 10, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('福州市', '2020-01-09', 4, '多云', '多云', 18, 10, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('西宁市', '2020-01-06', 1, '中雪', '多云', -1, -12, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('西宁市', '2020-01-07', 2, '晴', '晴', 2, -13, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('西宁市', '2020-01-08', 3, '多云', '多云', 2, -12, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('西宁市', '2020-01-09', 4, '晴', '阴', 0, -9, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('西安市', '2020-01-06', 1, '阴', '雨夹雪', 4, 0, '西', '西', '≤3', '≤3');
INSERT INTO `casts` VALUES ('西安市', '2020-01-07', 2, '多云', '晴', 7, -4, '东', '东', '≤3', '≤3');
INSERT INTO `casts` VALUES ('西安市', '2020-01-08', 3, '阴', '阴', 4, -3, '南', '南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('西安市', '2020-01-09', 4, '阴', '阴', 3, -1, '南', '南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('贵阳市', '2020-01-06', 1, '小雨', '小雨', 16, 4, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('贵阳市', '2020-01-07', 2, '多云', '阴', 16, 4, '南', '南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('贵阳市', '2020-01-08', 3, '小雨', '小雨', 16, 10, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('贵阳市', '2020-01-09', 4, '小雨', '小雨', 18, 10, '南', '南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('郑州市', '2020-01-06', 1, '雨夹雪', '大雪', 3, 0, '无风向', '无风向', '4', '4');
INSERT INTO `casts` VALUES ('郑州市', '2020-01-07', 2, '中雪', '阴', 2, -5, '西南', '西南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('郑州市', '2020-01-08', 3, '多云', '多云', 2, -3, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('郑州市', '2020-01-09', 4, '多云', '阴', 1, -2, '东南', '东南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('重庆市', '2020-01-06', 1, '小雨', '阴', 10, 7, '东北', '东北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('重庆市', '2020-01-07', 2, '多云', '阴', 13, 7, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('重庆市', '2020-01-08', 3, '小雨', '阴', 10, 8, '西北', '西北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('重庆市', '2020-01-09', 4, '阴', '阴', 11, 8, '东', '东', '≤3', '≤3');
INSERT INTO `casts` VALUES ('银川市', '2020-01-06', 1, '阴', '阴', -1, -8, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('银川市', '2020-01-07', 2, '晴', '多云', 0, -10, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('银川市', '2020-01-08', 3, '多云', '阴', 1, -9, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('银川市', '2020-01-09', 4, '阴', '阴', 0, -6, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('长春市', '2020-01-06', 1, '阴', '小雪', -1, -12, '西北', '西北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('长春市', '2020-01-07', 2, '多云', '阵雪', -9, -14, '无风向', '无风向', '≤3', '≤3');
INSERT INTO `casts` VALUES ('长春市', '2020-01-08', 3, '阵雪', '多云', -9, -18, '西南', '西南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('长春市', '2020-01-09', 4, '多云', '晴', -7, -17, '西南', '西南', '≤3', '≤3');
INSERT INTO `casts` VALUES ('长沙市', '2020-01-06', 1, '雾', '中雨', 9, 5, '西北', '西北', '4', '4');
INSERT INTO `casts` VALUES ('长沙市', '2020-01-07', 2, '阴', '多云', 9, 3, '西北', '西北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('长沙市', '2020-01-08', 3, '多云', '多云', 13, 3, '北', '北', '≤3', '≤3');
INSERT INTO `casts` VALUES ('长沙市', '2020-01-09', 4, '小雨', '小雨', 9, 5, '西北', '西北', '≤3', '≤3');

SET FOREIGN_KEY_CHECKS = 1;
