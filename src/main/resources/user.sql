/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2017-07-05 15:48:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名称',
  `password` varchar(255) NOT NULL COMMENT '生日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'qinkai', '111111');
INSERT INTO `user` VALUES ('2', 'huhua', 'qazwsx');
INSERT INTO `user` VALUES ('3', 'qq', '11');
INSERT INTO `user` VALUES ('4', 'lala', '11');
INSERT INTO `user` VALUES ('5', 'aa', '11');
INSERT INTO `user` VALUES ('6', 'asas', '11');
INSERT INTO `user` VALUES ('11', 'ha', '11');
