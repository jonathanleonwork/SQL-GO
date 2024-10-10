/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : recordings

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 10/10/2024 04:42:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `artist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(5, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (1, 'Blue Train', 'John Coltrane', 56.99);
INSERT INTO `album` VALUES (2, 'Giant Steps', 'John Coltrane', 63.99);
INSERT INTO `album` VALUES (3, 'Jeru', 'Gerry Mulligan', 17.99);
INSERT INTO `album` VALUES (4, 'Sarah Vaughan', 'Sarah Vaughan', 34.98);
INSERT INTO `album` VALUES (5, 'The Modern Sound of Betty Carter', 'Betty Carter', 49.99);

SET FOREIGN_KEY_CHECKS = 1;
