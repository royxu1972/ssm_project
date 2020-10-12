/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-10-12 20:32:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', 'Java程序设计', 'test_content');
INSERT INTO `article` VALUES ('2', '1', 'c语言设计', 'test_content_2');
INSERT INTO `article` VALUES ('3', '1', 'python', 'test_content_3');
INSERT INTO `article` VALUES ('4', '1', 'R', 'test_content_4');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` varchar(10) NOT NULL COMMENT '图书编号',
  `bName` varchar(100) NOT NULL COMMENT '图书书名',
  `bauthor` varchar(50) DEFAULT NULL COMMENT '作者姓名',
  `bpubComp` varchar(10) DEFAULT NULL COMMENT '出版社',
  `bpubDate` date DEFAULT NULL COMMENT '出版日期',
  `bCount` int(10) unsigned DEFAULT NULL COMMENT '现存数量',
  `bprice` float unsigned DEFAULT NULL COMMENT '单价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='图书信息表';

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('3', '06', '水浒传', '施耐庵', '北京大学出版社', '2019-11-05', '33', '12');
INSERT INTO `book` VALUES ('4', '07', '三国演义', '罗贯中', null, '2019-11-20', null, null);
INSERT INTO `book` VALUES ('5', '08', '西游记', '吴承恩', null, '2019-11-05', null, null);
INSERT INTO `book` VALUES ('6', '09', '红楼梦', '曹雪芹', '清华大学出版社', '2019-10-28', '12', '90');

-- ----------------------------
-- Table structure for `borrow`
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `rid` varchar(10) NOT NULL COMMENT '读者编号',
  `nif` varchar(10) NOT NULL COMMENT '图书编号',
  `lendDate` date NOT NULL COMMENT '借阅日期',
  `willDate` date DEFAULT NULL COMMENT '应归还日期',
  `returnDate` date DEFAULT NULL COMMENT '实际归还日期',
  PRIMARY KEY (`rid`,`nif`,`lendDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图书借阅表';

-- ----------------------------
-- Records of borrow
-- ----------------------------

-- ----------------------------
-- Table structure for `penalty`
-- ----------------------------
DROP TABLE IF EXISTS `penalty`;
CREATE TABLE `penalty` (
  `rid` varchar(10) NOT NULL COMMENT '读者编号',
  `bid` varchar(10) NOT NULL COMMENT '图书编号',
  `pDate` date NOT NULL COMMENT '罚款日期',
  `pType` int(11) DEFAULT NULL COMMENT '1-延期，2-损坏，3-丢失',
  `amount` float DEFAULT NULL COMMENT '罚款金额',
  PRIMARY KEY (`rid`,`bid`,`pDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='罚款记录表';

-- ----------------------------
-- Records of penalty
-- ----------------------------

-- ----------------------------
-- Table structure for `reader`
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `rid` varchar(20) NOT NULL COMMENT '读者编号',
  `rName` varchar(10) NOT NULL COMMENT '读者姓名',
  `lendNum` int(10) unsigned DEFAULT NULL COMMENT '已借书数量',
  `rAddress` varchar(50) DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='读者信息表';

-- ----------------------------
-- Records of reader
-- ----------------------------

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for `t_person`
-- ----------------------------
DROP TABLE IF EXISTS `t_person`;
CREATE TABLE `t_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_person
-- ----------------------------
INSERT INTO `t_person` VALUES ('1', '宋瑞冬', '24', '1991-10-17 06:00:00');
INSERT INTO `t_person` VALUES ('2', 'songruidong', '23', '2015-11-18 00:00:00');
INSERT INTO `t_person` VALUES ('3', 's.radon', '22', '2015-11-18 00:00:00');
INSERT INTO `t_person` VALUES ('4', '赵', '23', '2015-11-12 00:00:00');
INSERT INTO `t_person` VALUES ('5', '钱', '21', '2015-11-11 00:00:00');
INSERT INTO `t_person` VALUES ('6', '孙', '22', '2015-11-13 00:00:00');
INSERT INTO `t_person` VALUES ('7', '李', '25', '2015-11-15 00:00:00');
INSERT INTO `t_person` VALUES ('8', '周', '27', '2015-11-17 16:21:33');
INSERT INTO `t_person` VALUES ('9', '吴', '24', '2015-11-12 00:00:00');
INSERT INTO `t_person` VALUES ('10', '郑', '26', '2015-11-18 15:51:47');
INSERT INTO `t_person` VALUES ('11', '王', '23', '2015-11-18 15:51:53');
INSERT INTO `t_person` VALUES ('31', '丁玉祥', '12', '2020-10-07 00:00:00');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `USER_PASSWORD` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `USER_EMAIL` char(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '林炳文', '1234567@', 'ling20081005@126.com');
INSERT INTO `t_user` VALUES ('2', 'evan', '123', 'fff@126.com');
INSERT INTO `t_user` VALUES ('3', 'kaka', 'cadg', 'fwsfg@126.com');
INSERT INTO `t_user` VALUES ('4', 'simle', 'cscs', 'fsaf@126.com');
INSERT INTO `t_user` VALUES ('5', 'arthur', 'csas', 'fsaff@126.com');
INSERT INTO `t_user` VALUES ('6', '小德', 'yuh78', 'fdfas@126.com');
INSERT INTO `t_user` VALUES ('7', '小小', 'cvff', 'fsaf@126.com');
INSERT INTO `t_user` VALUES ('8', '林林之家', 'gvv', 'lin@126.com');
INSERT INTO `t_user` VALUES ('9', '林炳文Evankaka', 'dfsc', 'ling2008@126.com');
INSERT INTO `t_user` VALUES ('10', 'apple', 'uih6', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('11', 'apple', 'tgggg', '43qt@qq.com');
INSERT INTO `t_user` VALUES ('12', 'apple', 'ggg', '14e23@qq.com');
INSERT INTO `t_user` VALUES ('13', 'apple', 'gg', '122@qq.com');
INSERT INTO `t_user` VALUES ('14', 'apple', 'dsv', '34r@qq.com');
INSERT INTO `t_user` VALUES ('15', 'apple', 'vvfdz', '456@qq.com');
INSERT INTO `t_user` VALUES ('16', 'apple', 'vz', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('17', 'apple', 'zvz', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('18', 'apple', 'dvs', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('19', 'apple', 'czvcx', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('20', 'apple', 'xvzczv', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('21', 'apple', 'cz', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('22', 'apple', 'cxz', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('23', 'apple', 'czv', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('24', 'apple', 'C', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('25', 'apple', 'dfdsf', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('26', 'apple', 'vvf', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('27', 'apple', '45', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('28', 'apple', '5677', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('29', 'apple', '8', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('30', 'apple', '8', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('31', 'apple', '0h', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('32', 'apple', 'vf', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('33', 'apple', 'sfd', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('34', 'apple', '5yh', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('35', 'apple', 'bdf', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('36', 'apple', 'gers', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('37', 'apple', '89', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('38', 'apple', '5t', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('39', 'apple', 'gse', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('40', 'apple', 'gs', 'ff@qq.com');
INSERT INTO `t_user` VALUES ('41', 'apple', 'bs', '4454@qq.com');
INSERT INTO `t_user` VALUES ('42', 'apple', 'fs', '3445@qq.com');
INSERT INTO `t_user` VALUES ('43', 'apple', 'bs', '354@qq.com');
INSERT INTO `t_user` VALUES ('44', 'apple', 'fsd', '567@qq.com');
INSERT INTO `t_user` VALUES ('45', 'apple', 'sd', '45567@qq.com');
INSERT INTO `t_user` VALUES ('46', 'apple', 'gs', '456@qq.com');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `userage` int(11) DEFAULT NULL,
  `useraddress` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('13', '张正常1', '43', '江宁区', '123456');
INSERT INTO `user` VALUES ('15', '老徐', '12', '鼓楼区', '12324');
INSERT INTO `user` VALUES ('16', '马林', '12', '2222', '22');
INSERT INTO `user` VALUES ('18', '叶檀', '66', '66', '66');
INSERT INTO `user` VALUES ('19', '小明', '23', '33', '33333');
INSERT INTO `user` VALUES ('20', '林先生', '22', '南京', '22');
INSERT INTO `user` VALUES ('21', '马祥生', '12', '北京', '??');
INSERT INTO `user` VALUES ('22', '龚大林', '12', '上海', '123');
INSERT INTO `user` VALUES ('23', '梨花', '12', '广州', '123');
INSERT INTO `user` VALUES ('24', '张生', '45', '新街口', '123456');
INSERT INTO `user` VALUES ('25', '杨丽', '23', '鼓楼', '123456');
INSERT INTO `user` VALUES ('26', '徐阳', '12', '午安误区', '123456');
INSERT INTO `user` VALUES ('27', '23232', '3232323', '323232', '3232');
