/*
Navicat MySQL Data Transfer

Source Server         : mydatabase
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : yichen

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2017-05-25 21:31:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` varchar(32) collate utf8_bin NOT NULL,
  `name` varchar(10) collate utf8_bin default NULL COMMENT '名称',
  `type` char(1) collate utf8_bin default '' COMMENT '部门类型',
  `del_flag` char(1) collate utf8_bin NOT NULL,
  `add_time` datetime NOT NULL,
  `add_user_id` varchar(32) collate utf8_bin default NULL,
  `upd_time` datetime default NULL,
  `upd_user_id` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门';

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('177e6d7cc7ed472eb641adc7654a73e7', '宣传部', '1', '0', '2017-05-20 22:37:30', '1', null, null);
INSERT INTO `t_department` VALUES ('512bfd33e4a946dab54f7e96afdf994c', '组织部', '2', '0', '2017-05-20 22:37:37', '1', null, null);
INSERT INTO `t_department` VALUES ('7d6a10cbdb92452699582907e31e5116', '外联部', '3', '0', '2017-05-20 22:37:40', '1', null, null);
INSERT INTO `t_department` VALUES ('c0326f3f8c0342fabaefd255a5d6ddae', '传习部', '4', '0', '2017-05-20 22:37:44', '1', null, null);
INSERT INTO `t_department` VALUES ('f000461577964518a32439d8e2ae7a58', '竞技部', '5', '0', '2017-05-20 22:37:47', '1', null, null);

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `type` varchar(50) NOT NULL COMMENT '类型',
  `value` varchar(20) NOT NULL COMMENT '数据值',
  `label` varchar(255) NOT NULL COMMENT '标签名',
  `sort` int(11) default NULL COMMENT '排序（升序）',
  `description` varchar(255) default NULL COMMENT '描述',
  `remark` varchar(500) default NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标识(0:未删除，1：已删除)',
  `add_time` datetime NOT NULL COMMENT '创建时间',
  `add_user_id` varchar(32) NOT NULL COMMENT '创建者',
  `upd_time` datetime default NULL COMMENT '更新时间',
  `upd_user_id` varchar(32) default NULL COMMENT '更新者',
  PRIMARY KEY  (`id`),
  KEY `AK_uq_value_name` (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典';

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', 'chessType', '1', '围棋', '10', null, null, '0', '2017-05-24 10:47:17', '1', null, null);
INSERT INTO `t_dict` VALUES ('2', 'chessType', '2', '国际象棋', '20', '', '', '0', '2017-05-24 10:47:17', '1', null, null);
INSERT INTO `t_dict` VALUES ('3', 'chessType', '3', '象棋', '30', '', '', '0', '2017-05-24 10:47:17', '1', null, null);
INSERT INTO `t_dict` VALUES ('39708bd8296a468b8c3b631a95dfb245', 'chessTeam', '4', '国际象棋队', '40', '', '', '0', '2017-05-25 21:30:46', '1', null, null);
INSERT INTO `t_dict` VALUES ('4', 'chessType', '4', '五子棋', '40', '', '', '0', '2017-05-24 10:47:17', '1', null, null);
INSERT INTO `t_dict` VALUES ('460a9e86f9144397b3668b74129ade60', 'chessTeam', '3', '五子棋队', '30', '', '', '0', '2017-05-25 21:30:10', '1', null, null);
INSERT INTO `t_dict` VALUES ('5', 'chessType', '5', '跳棋', '50', '', '', '0', '2017-05-24 10:47:17', '1', null, null);
INSERT INTO `t_dict` VALUES ('59281124a48c439b80d7aa80b498e745', 'chessTeam', '2', '围棋队', '20', '', '', '0', '2017-05-25 21:29:48', '1', null, null);
INSERT INTO `t_dict` VALUES ('5bd9cd2fc6554761b8ae2392cae1c50e', 'chessTeam', '1', '象棋队', '10', '', '', '0', '2017-05-25 21:29:06', '1', null, null);

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` varchar(32) collate utf8_bin NOT NULL,
  `title` varchar(32) collate utf8_bin default NULL COMMENT '标题',
  `type` char(1) collate utf8_bin default NULL COMMENT '类型(1，动态，2公告）',
  `content` varchar(255) collate utf8_bin default NULL COMMENT '内容',
  `del_flag` char(1) collate utf8_bin NOT NULL,
  `add_time` datetime NOT NULL,
  `add_user_id` varchar(32) collate utf8_bin NOT NULL,
  `upd_time` datetime default NULL,
  `upd_user_id` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='消息';

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('1', '消息>>>[围棋]2017年全国围棋锦标赛(团体)补充通知', '1', '[围棋]2017年全国围棋锦标赛(团体)补充通知[围棋]2017年全国围棋锦标赛(团体)补充通知[围棋]2017年全国围棋锦标赛(团体)补充通知[围棋]2017年全国围棋锦标赛(团体)补充通知[围棋]2017年全国围棋锦标赛(团体)补充通知[围棋]2017年全国围棋锦标赛(团体)补充通知[围棋]2017年全国围棋锦标赛(团体)补充通知', '0', '2017-05-20 21:14:57', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('10', '关于全运会等象棋裁判安排通知关于全运会等象棋裁判安排通知', '2', '[象棋]关于全运会等象棋裁判安排通知[象棋]关于全运会等象棋裁判安排通知[象棋]关于全运会等象棋裁判安排通知[象棋]关于全运会等象棋裁判安排通知[象棋]关于全运会等象棋裁判安排通知[象棋]关于全运会等象棋裁判安排通知', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('11', '关于全运会等象棋裁判安排通知关于全运会等象棋裁判安排通知知知知知', '1', '[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示', '0', '2017-05-21 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('2', '[象棋]推荐评选全国群众体育先进单位通知a', '2', '[象棋]推荐评选全国群众体育先进单位通知a[象棋]推荐评选全国群众体育先进单位通知a[象棋]推荐评选全国群众体育先进单位通知a[象棋]推荐评选全国群众体育先进单位通知a[象棋]推荐评选全国群众体育先进单位通知a', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('3', '消息>>>会等象棋裁判安排通知关于全运会等象棋裁判安排通知', '1', '[国跳]2016工作报告和2017年工作要点通知[国跳]2016工作报告和2017年工作要点通知[国跳]2016工作报告和2017年工作要点通知[国跳]2016工作报告和2017年工作要点通知', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('4', '[国跳]《中国国跳国家集训队选拔暂行办法》', '2', '[国跳]《中国国跳国家集训队选拔暂行办法》[国跳]《中国国跳国家集训队选拔暂行办法》[国跳]《中国国跳国家集训队选拔暂行办法》[国跳]《中国国跳国家集训队选拔暂行办法》', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('5', '消息>>>[五子棋]2017全国等级赛(河北、山西)通', '1', '[五子棋]2017全国等级赛(河北、山西)通知[五子棋]2017全国等级赛(河北、山西)通知[五子棋]2017全国等级赛(河北、山西)通知[五子棋]2017全国等级赛(河北、山西)通知[五子棋]2017全国等级赛(河北、山西)通知[五子棋]2017全国等级赛(河北、山西)通知', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('6', '[五子棋]2017全国等级赛(上海)裁判公示', '2', '[五子棋]2017全国等级赛(上海)裁判公示[五子棋]2017全国等级赛(上海)裁判公示[五子棋]2017全国等级赛(上海)裁判公示[五子棋]2017全国等级赛(上海)裁判公示[五子棋]2017全国等级赛(上海)裁判公示', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('7', '消息>>>[国跳]2017全国国际跳棋特色学校比赛', '1', '[国跳]2017全国国际跳棋特色学校比赛通知[国跳]2017全国国际跳棋特色学校比赛通知[国跳]2017全国国际跳棋特色学校比赛通知[国跳]2017全国国际跳棋特色学校比赛通知', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('8', '[象棋]第十三届全运会群众比赛预赛补充通知', '2', '[象棋]第十三届全运会群众比赛预赛补充通知[象棋]第十三届全运会群众比赛预赛补充通知[象棋]第十三届全运会群众比赛预赛补充通知[象棋]第十三届全运会群众比赛预赛补充通知[象棋]第十三届全运会群众比赛预赛补充通知', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');
INSERT INTO `t_message` VALUES ('9', '消息>>>[象棋]全运会群众比赛象棋预赛名单公', '1', '[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示[象棋]全运会群众比赛象棋预赛名单公示', '0', '2017-05-20 21:16:24', '1', '2017-05-13 21:17:03', '1');

-- ----------------------------
-- Table structure for t_team
-- ----------------------------
DROP TABLE IF EXISTS `t_team`;
CREATE TABLE `t_team` (
  `id` varchar(32) collate utf8_bin NOT NULL,
  `name` varchar(10) collate utf8_bin default NULL,
  `del_flag` char(1) collate utf8_bin NOT NULL,
  `add_time` datetime NOT NULL,
  `add_user_id` varchar(32) collate utf8_bin NOT NULL,
  `upd_time` datetime default NULL,
  `upd_user_id` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='队';

-- ----------------------------
-- Records of t_team
-- ----------------------------
INSERT INTO `t_team` VALUES ('0d8a850bd628414681a425293b7f5b90', '象棋队', '0', '2017-05-20 22:44:36', '1', null, null);
INSERT INTO `t_team` VALUES ('7e211aa54c504a9fafc7d249ab174187', '五子棋队', '0', '2017-05-20 22:44:39', '1', null, null);
INSERT INTO `t_team` VALUES ('db38712449c248c0a5f9b8a82ce30112', '国际象棋队', '0', '2017-05-20 22:44:43', '1', null, null);
INSERT INTO `t_team` VALUES ('f20b213c29c74a89badcacb5cb615949', '围棋队', '0', '2017-05-20 22:44:45', '1', null, null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `login_name` varchar(20) default NULL COMMENT '登录名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `name` varchar(20) default NULL COMMENT '姓名',
  `email` varchar(50) default NULL COMMENT '邮箱',
  `tel` varchar(50) default NULL COMMENT '电话',
  `sex` char(1) default NULL COMMENT '性别（0：女，1：男）',
  `head_photo` varchar(50) default NULL COMMENT '头像地址',
  `remark` varchar(200) default NULL COMMENT '备注',
  `state` char(1) NOT NULL COMMENT '状态（0：禁用，1：启用）',
  `birthday` datetime default NULL COMMENT '生日',
  `chess_title` varchar(20) default NULL COMMENT '棋手称号',
  `company` varchar(20) default NULL COMMENT '单位',
  `registered_identity` varchar(20) default NULL COMMENT '注册身份',
  `identity` varchar(20) default NULL COMMENT '身份证',
  `grade` varchar(20) default NULL COMMENT '等级',
  `grade_score` int(20) default NULL COMMENT '等级分数',
  `is_chess` char(1) default NULL COMMENT '是否棋手（0，否，1，是）',
  `chess_type` char(1) default NULL COMMENT '1围棋,2国际象棋,3象棋,4五子棋,5跳棋',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标识(0:未删除，1：已删除)',
  `add_time` datetime NOT NULL COMMENT '创建时间',
  `add_user_id` varchar(32) default NULL COMMENT '创建者',
  `upd_time` datetime default NULL COMMENT '更新时间',
  `upd_user_id` varchar(32) default NULL COMMENT '更新者',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('0e734277ef124c57b3efad5a8cded7fb', '', '', '', '', '', '1', null, '', '0', '2017-05-25 00:00:00', '', '', '', '', '', null, '1', '', '0', '2017-05-25 16:29:22', null, null, null);
INSERT INTO `t_user` VALUES ('1', 'admin', '123456', '姓名熊猫1', '344492830@qq.com', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, '2017-05-25 15:35:19', null);
INSERT INTO `t_user` VALUES ('10', 'guest', '123456', '姓名熊猫姓名下哦好2', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('11', 'dfdfdfdgdfg3', '123456', '姓名熊猫姓名下哦好3', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('12', 'dfdfdfdgdfg4', '123456', '姓名熊猫姓名下哦好4', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('13', 'dfdfdfdgdfg5', '123456', '姓名熊猫姓名下哦好5', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('14', 'dfdfdfdgdfg6', '123456', '姓名熊猫姓名下哦好6', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('15', 'dfdfdfdgdfg7', '123456', '姓名熊猫姓名下哦好7', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('16', 'dfdfdfdgdfg8', '123456', '姓名熊猫姓名下哦好8', '666', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:33:07', null, null, null);
INSERT INTO `t_user` VALUES ('17', 'dfdfdfdgdfg9', '123456', '姓名熊猫姓名下哦好9', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('18', 'dfdfdfdgdfg10', '123456', '姓名熊猫姓名下哦好10', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('19', 'dfdfdfdgdfg11', '123456', '姓名熊猫姓名下哦好11', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('1b086cd835334a6c99d9a00d10f02738', 'ttttttt', '123456', 't', 'ttttt@qq.com', '18766565654', '0', null, 'ttttt', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-20 23:10:53', null, null, null);
INSERT INTO `t_user` VALUES ('2', 'dfdfdfdgdfg12', '123456', '姓名熊猫姓名下哦好12', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('20', 'dfdfdfdgdfg13', '123456', '姓名熊猫姓名下哦好13', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-01 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('21', 'dfdfdfdgdfg14', '123456', '姓名熊猫姓名下哦好14', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('22', 'dfdfdfdgdfg15', '123456', '姓名熊猫姓名下哦好15', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('3', 'dfdfdfdgdfg16', '123456', '姓名熊猫姓名下哦好16', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('4', 'dfdfdfdgdfg17', '123456', '姓名熊猫姓名下哦好17', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('5', 'dfdfdfdgdfg18', '123456', '姓名熊猫姓名下哦好18', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('5327d58c8b9045d9962db2fed373bd43', 'uuuu', '123456', 'uuuuuuuu', 'u', 'uuuuuuuuuuuuu', '0', null, 'uuuuuuu', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-20 23:08:31', null, null, null);
INSERT INTO `t_user` VALUES ('6', 'dfdfdfdgdfg19', '123456', '姓名熊猫姓名下哦好19', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('7', 'dfdfdfdgdfg20', '123456', '姓名熊猫姓名下哦好20', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('8', 'dfdfdfdgdfg21', '123456', '姓名熊猫姓名下哦好21', 'sfsdfsfsdf', '13699893587', '1', '', '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('837265358fc74f62ac31a1e0a0a6131c', '', '', '', '', '', '1', null, '', '0', '2017-05-25 00:00:00', '', '', '', '', '', null, '1', '', '0', '2017-05-25 16:28:20', null, null, null);
INSERT INTO `t_user` VALUES ('83a800f7260e4127992e166df2fafb21', '', '', '', '', '', '1', null, '', '0', '2017-05-25 00:00:00', '', '', '', '', '', null, '1', '', '0', '2017-05-25 16:31:19', null, null, null);
INSERT INTO `t_user` VALUES ('89cfff62f19e41389b59827750b86189', 'yyy', '123456', '', '', '', '0', null, '', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-20 22:57:51', null, null, null);
INSERT INTO `t_user` VALUES ('9', 'dfdfdfdgdfg223333', '123456', '姓名熊猫姓名下哦好2233333', 'rr@123.cn', '13693333355', '1', '', '他是一个好人333333', '1', null, null, null, null, null, null, null, null, null, '0', '2017-05-20 23:07:55', null, null, null);
INSERT INTO `t_user` VALUES ('b1d10078260c4cceb64599c35bf96009', 'dfdfdfdgdfg23', '123456', '姓名熊猫姓名下哦好23', '666', '13699893587', '1', null, '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:33:07', null, null, null);
INSERT INTO `t_user` VALUES ('bf3fbd320a3a4750b16ba9f3988e9884', '', '', '', '', '', '1', null, '', '0', '2017-05-25 00:00:00', '', '', '', '', '', null, '1', '1', '0', '2017-05-25 16:34:16', null, null, null);
INSERT INTO `t_user` VALUES ('ca75bc4b432a410abe464d23bbc50a05', 'qqqq555', 'qqqq555', 'qqqq555', '', '', '1', null, 'qqqq555', '0', '2017-05-25 00:00:00', 'qqqq555', 'qqqq555', 'qqqq555', 'qqqq555', '1', '11', '1', '', '0', '2017-05-25 16:24:20', null, null, null);
INSERT INTO `t_user` VALUES ('d3b995a92ba54b03b10733acd7b162c3', 'dfdfdfdgdfg24', '123456', '姓名熊猫姓名下哦好24', 'sfsdfsfsdf', '13699893587', '1', null, '他是一个好人', '0', null, null, null, null, null, null, null, null, null, '0', '2017-05-18 11:32:37', null, null, null);
INSERT INTO `t_user` VALUES ('d737a62b58324f7f9d384a6f1128b324', '', '', '', '', '', '1', null, '', '0', '2017-05-25 00:00:00', '', '', '', '', '', null, '1', '4', '0', '2017-05-25 16:36:28', null, null, null);
INSERT INTO `t_user` VALUES ('db1615e7676f4c6b9989e00738feabd3', '', '', '', '', '', '1', null, '', '0', '2017-05-25 00:00:00', '', '', '', '', '', null, '1', '', '0', '2017-05-25 16:26:30', null, null, null);
