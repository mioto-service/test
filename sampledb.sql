/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50154
Source Host           : localhost:3306
Source Database       : sampledb

Target Server Type    : MYSQL
Target Server Version : 50154
File Encoding         : 65001

Date: 2019-07-09 16:20:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `login_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `login_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('1', '1', '0:0:0:0:0:0:0:1', '2019-05-29 16:16:25');
INSERT INTO `t_login_log` VALUES ('2', '1', '0:0:0:0:0:0:0:1', '2019-05-31 00:00:00');
INSERT INTO `t_login_log` VALUES ('3', '1', '0:0:0:0:0:0:0:1', '2019-05-31 00:00:00');
INSERT INTO `t_login_log` VALUES ('6', '1', '192.168.31.9', '2019-06-11 11:42:01');
INSERT INTO `t_login_log` VALUES ('7', '1', '192.168.31.9', '2019-06-11 11:47:47');
INSERT INTO `t_login_log` VALUES ('8', '1', '0:0:0:0:0:0:0:1', '2019-06-17 11:05:29');
INSERT INTO `t_login_log` VALUES ('9', '1', '0:0:0:0:0:0:0:1', '2019-06-17 11:07:08');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `last_ip` varchar(255) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '111111', '65', '0:0:0:0:0:0:0:1', '2019-06-17 11:07:08');
