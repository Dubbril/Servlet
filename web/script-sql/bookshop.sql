/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : bookshop

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-08-25 22:37:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('dubbril', 'pui@1234', 'สมปอง', 'ทองมี');
INSERT INTO `member` VALUES ('infusion', '1234@pui', 'ดับบริว', 'อินฟิวชัน');
