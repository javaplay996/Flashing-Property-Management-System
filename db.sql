/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shanshuowuyeguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shanshuowuyeguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shanshuowuyeguanli`;

/*Table structure for table `chewei` */

DROP TABLE IF EXISTS `chewei`;

CREATE TABLE `chewei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chewei_number` varchar(200) DEFAULT NULL COMMENT '停车编号 Search111 ',
  `chewei_address` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `chewei_shiyong_start_time` timestamp NULL DEFAULT NULL COMMENT '租用开始日期  Search111 ',
  `chewei_shiyong_end_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '租用结束日期  Search111 ',
  `chewei_zujin` int(11) DEFAULT NULL COMMENT '租金  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='车位';

/*Data for the table `chewei` */

insert  into `chewei`(`id`,`yonghu_id`,`chewei_number`,`chewei_address`,`chewei_shiyong_start_time`,`chewei_shiyong_end_time`,`chewei_zujin`,`insert_time`,`create_time`) values (1,2,'103','幸福小区地下二层103车位','2021-04-23 00:00:00','2023-04-23 17:16:37',8000,'2021-04-15 15:23:15','2021-04-15 15:23:15'),(2,1,'102','幸福小区地下二层102车位','2021-04-30 00:00:00','2021-04-23 17:16:38',5000,'2021-04-15 15:23:15','2021-04-15 15:23:31'),(3,4,'101','幸福小区负一层101','2021-04-22 00:00:00','2025-04-23 00:00:00',6000,'2021-04-23 17:42:15','2021-04-23 17:42:15');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dianbiao` */

DROP TABLE IF EXISTS `dianbiao`;

CREATE TABLE `dianbiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianbiao_name` varchar(200) DEFAULT NULL COMMENT '电表编号 Search111 ',
  `dianbiao_number` int(11) DEFAULT NULL COMMENT '电表余额  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='售电';

/*Data for the table `dianbiao` */

insert  into `dianbiao`(`id`,`yonghu_id`,`dianbiao_name`,`dianbiao_number`,`create_time`) values (1,2,'101',1,'2021-04-15 15:22:44'),(2,1,'102',29,'2021-04-15 15:22:56'),(3,3,'104',19,'2021-04-15 15:29:49');

/*Table structure for table `dianbiao_jiaofei` */

DROP TABLE IF EXISTS `dianbiao_jiaofei`;

CREATE TABLE `dianbiao_jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianbiao_id` int(11) DEFAULT NULL COMMENT '电表',
  `dianbiao_jiaofei_yingshou_money` int(11) DEFAULT NULL COMMENT '应收金额 Search111 ',
  `dianbiao_jiaofei_money` int(11) DEFAULT NULL COMMENT '缴费金额 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='电表缴费';

/*Data for the table `dianbiao_jiaofei` */

insert  into `dianbiao_jiaofei`(`id`,`dianbiao_id`,`dianbiao_jiaofei_yingshou_money`,`dianbiao_jiaofei_money`,`insert_time`,`create_time`) values (1,3,7,7,'2021-04-23 17:04:39','2021-04-23 17:04:39'),(2,3,10,9,'2021-04-23 17:41:36','2021-04-23 17:41:36'),(3,2,10,19,'2021-04-23 17:52:52','2021-04-23 17:52:52');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-15 15:02:48'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-15 15:02:48'),(3,'wuyefei_types','是否缴费类型名称',1,'已缴费',NULL,'2021-04-15 15:02:48'),(4,'wuyefei_types','是否缴费类型名称',2,'未交费',NULL,'2021-04-15 15:02:48');

/*Table structure for table `fuwu` */

DROP TABLE IF EXISTS `fuwu`;

CREATE TABLE `fuwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuwu_name` varchar(200) DEFAULT NULL COMMENT '服务名字 Search111 ',
  `fuwu_content` text COMMENT '服务详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='服务';

/*Data for the table `fuwu` */

insert  into `fuwu`(`id`,`fuwu_name`,`fuwu_content`,`create_time`) values (1,'垃圾清理','周围附近垃圾清理\r\n','2021-04-15 15:24:03'),(2,'楼道卫生清理','楼道卫生清理,所有的楼道和楼顶\r\n','2021-04-15 15:24:36'),(3,'楼道卫生清理11','少时诵诗书无色大所大无挖耳朵爱我的安慰<img src=\"http://localhost:8080/shanshuowuyeguanli/upload/1618471826567.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/shanshuowuyeguanli/upload/1618471826567.jpg\">\r\n','2021-04-15 15:30:30');

/*Table structure for table `gonggonghuanjing` */

DROP TABLE IF EXISTS `gonggonghuanjing`;

CREATE TABLE `gonggonghuanjing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggonghuanjing_name` varchar(200) DEFAULT NULL COMMENT '公共环境名字 Search111 ',
  `gonggonghuanjing_content` text COMMENT '公共环境详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公共环境';

/*Data for the table `gonggonghuanjing` */

insert  into `gonggonghuanjing`(`id`,`gonggonghuanjing_name`,`gonggonghuanjing_content`,`create_time`) values (1,'环境1','公告环境1的详情\r\n','2021-04-15 15:25:50'),(2,'环境2','环境2的详情\r\n','2021-04-15 15:26:00'),(3,'环境3','公共环境3的详情  萨达打发送打大的撒阿萨德啊d\r\n','2021-04-15 15:35:25');

/*Table structure for table `renshi` */

DROP TABLE IF EXISTS `renshi`;

CREATE TABLE `renshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `renshi_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `renshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `renshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `renshi_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `renshi_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='人事信息';

/*Data for the table `renshi` */

insert  into `renshi`(`id`,`username`,`password`,`gonghao`,`renshi_name`,`renshi_phone`,`renshi_id_number`,`renshi_photo`,`sex_types`,`renshi_address`,`create_time`) values (1,'a11','123456','1011','王艳','17703786911','410224199610232011','http://localhost:8080/shanshuowuyeguanli/file/download?fileName=1619166975992.jpg',2,'河南省郑州市东郊杨寨存三组','2021-04-23 16:37:31'),(2,'a22','123456','1022','王三丰','17703786922','410229199610232022','http://localhost:8080/shanshuowuyeguanli/file/download?fileName=1619170665532.jpg',2,'浙江省江浙区三环史家寨存23号','2021-04-23 17:38:25');

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `building` varchar(200) DEFAULT NULL COMMENT '楼幢 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room_number` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `fangchan_number` varchar(200) DEFAULT NULL COMMENT '房产编号 Search111 ',
  `room_content` varchar(200) DEFAULT NULL COMMENT '房间信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房间';

/*Data for the table `room` */

insert  into `room`(`id`,`yonghu_id`,`building`,`unit`,`room_number`,`fangchan_number`,`room_content`,`insert_time`,`create_time`) values (1,4,'1','2','101','2011','房产基本信息详情\r\n','2021-04-23 16:38:52','2021-04-23 16:38:52'),(2,2,'1','1','102','2022','一号楼一单元房间102的详情\r\n','2021-04-23 16:40:26','2021-04-23 16:40:26'),(3,4,'1','1','101','1099','1号楼一单元1012房间的详情\r\n','2021-04-23 17:40:25','2021-04-23 17:40:25');

/*Table structure for table `shuibiao` */

DROP TABLE IF EXISTS `shuibiao`;

CREATE TABLE `shuibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuibiao_name` varchar(200) DEFAULT NULL COMMENT '水表编号 Search111 ',
  `shuibiao_number` int(11) DEFAULT NULL COMMENT '水表余额  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='售水';

/*Data for the table `shuibiao` */

insert  into `shuibiao`(`id`,`yonghu_id`,`shuibiao_name`,`shuibiao_number`,`create_time`) values (1,2,'101',101,'2021-04-15 15:13:45'),(2,1,'102',12,'2021-04-15 15:22:17'),(3,1,'103',10,'2021-04-15 15:22:29'),(4,3,'104',160,'2021-04-15 15:28:36');

/*Table structure for table `shuibiao_jiaofei` */

DROP TABLE IF EXISTS `shuibiao_jiaofei`;

CREATE TABLE `shuibiao_jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuibiao_id` int(11) DEFAULT NULL COMMENT '水表',
  `shuibiao_jiaofei_yingshou_money` int(200) DEFAULT NULL COMMENT '应收金额 Search111 ',
  `shuibiao_jiaofei_money` int(200) DEFAULT NULL COMMENT '缴费金额 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='水表缴费';

/*Data for the table `shuibiao_jiaofei` */

insert  into `shuibiao_jiaofei`(`id`,`shuibiao_id`,`shuibiao_jiaofei_yingshou_money`,`shuibiao_jiaofei_money`,`insert_time`,`create_time`) values (1,4,101,100,'2021-04-23 17:01:47','2021-04-23 17:01:47'),(2,4,9,9,'2021-04-23 17:03:39','2021-04-23 17:03:39'),(3,4,10,10,'2021-04-23 17:04:22','2021-04-23 17:04:22'),(4,4,40,40,'2021-04-23 17:41:13','2021-04-23 17:41:13'),(5,1,101,100,'2021-04-23 17:47:54','2021-04-23 17:47:54');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','g6xm087yxd6nyjmddfinrq2b9u4nesue','2021-04-15 15:11:55','2021-04-23 18:54:10'),(2,3,'a3','yonghu','用户','kq4w2h6nk3xamo0my38k769fxd1pmfd4','2021-04-15 15:36:44','2021-04-23 18:53:18'),(3,2,'a2','yonghu','用户','whrrixv3buntoyp8o20pyxb0974uu03a','2021-04-15 15:37:24','2021-04-23 18:52:25'),(4,4,'a4','yonghu','用户','keqslq575ewn8xh39svp80j6y5elzfi1','2021-04-15 15:39:17','2021-04-23 18:54:27'),(5,2,'a22','renshi','人事','ofrlsr1qpwlf7cbevu3vj59ja1lbda36','2021-04-23 17:44:25','2021-04-23 18:44:25'),(6,1,'a1','yonghu','用户','4yaspv4488epeih5hikjn8xh71eu9myy','2021-04-23 17:45:45','2021-04-23 18:48:07'),(7,5,'a5','yonghu','用户','fidb21tj4vlzw6uubphyfzyi7x3n0mlf','2021-04-23 17:57:25','2021-04-23 18:57:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `wuyefei` */

DROP TABLE IF EXISTS `wuyefei`;

CREATE TABLE `wuyefei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuyefei_time` varchar(200) DEFAULT NULL COMMENT '年份 Search111 ',
  `wuyefei_danjia` int(11) DEFAULT NULL COMMENT '物业费单价',
  `wuyefei_yingshou_number` int(11) DEFAULT NULL COMMENT '应收金额 ',
  `wuyefei_number` int(11) DEFAULT NULL COMMENT '缴费金额  Search111 ',
  `wuyefei_types` int(11) DEFAULT NULL COMMENT '是否缴费 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='物业费';

/*Data for the table `wuyefei` */

insert  into `wuyefei`(`id`,`yonghu_id`,`wuyefei_time`,`wuyefei_danjia`,`wuyefei_yingshou_number`,`wuyefei_number`,`wuyefei_types`,`insert_time`,`create_time`) values (1,2,'2020',10,1100,NULL,2,NULL,'2021-04-15 15:24:53'),(2,2,'2021',10,1200,NULL,2,NULL,'2021-04-15 15:25:17'),(3,1,'2019',10,1300,NULL,2,NULL,'2021-04-15 15:25:31'),(4,3,'2020',10,1400,1400,1,'2021-04-24 15:30:55','2021-04-15 15:30:55'),(5,3,'2019',10,1500,NULL,2,NULL,'2021-04-15 15:31:21'),(6,4,'2020',10,120,NULL,2,NULL,'2021-04-23 17:33:27'),(7,4,'2019',10,100,100,1,'2021-04-23 17:43:36','2021-04-23 17:43:36'),(8,4,'2018',10,989,999,1,'2021-04-23 17:44:08','2021-04-23 17:43:56');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-04-15 15:02:47','日常公告','日常公告','公告信息','2021-04-15 15:02:47'),(2,'2021-04-15 15:02:47','紧急公告','紧急公告','公告信息','2021-04-15 15:02:47'),(3,'2021-04-15 15:02:47','其他公告','其他公告','公告信息','2021-04-15 15:02:47'),(4,'2021-04-15 15:36:30','公告1','日常公告','公告1的详情','2021-04-15 15:36:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_number` varchar(255) DEFAULT NULL COMMENT '用户编号',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `insert_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`insert_time`,`create_time`) values (1,'a1','123456','101','石金明','17703786901','410224199610232001','http://localhost:8080/shanshuowuyeguanli/file/download?fileName=1618470745775.jpg',2,'2021-04-23 17:45:59','2021-04-15 15:12:28'),(2,'a2','123456','102','林明曾','17703786902','410224199610232002','http://localhost:8080/shanshuowuyeguanli/file/download?fileName=1618470771519.jpg',2,'2021-04-23 17:39:35','2021-04-15 15:12:53'),(3,'a3','123456','103','胡万','17703786903','410224199610232003','http://localhost:8080/shanshuowuyeguanli/file/download?fileName=1618471636079.jpg',1,'2021-04-23 17:39:44','2021-04-15 15:27:27'),(4,'a4','123456','104','张牧之','17703786904','410224199610232004','http://localhost:8080/shanshuowuyeguanli/file/download?fileName=1618472343859.jpg',1,'2021-04-23 17:39:50','2021-04-15 15:12:28'),(5,'a5','123456','105','王建明','17703786905','410224199610232005','http://localhost:8080/shanshuowuyeguanli/file/download?fileName=1619171833499.jpg',1,NULL,'2021-04-23 17:57:21');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
