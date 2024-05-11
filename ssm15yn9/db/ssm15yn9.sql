/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm15yn9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm15yn9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm15yn9`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm15yn9/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm15yn9/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm15yn9/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `dingdan` */

insert  into `dingdan`(`id`,`addtime`,`dingdanbianhao`,`zhanghao`,`yonghuxingming`,`lianxifangshi`,`shouhuodizhi`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`kucun`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-04-21 21:22:48','订单编号1','账号1','用户姓名1','联系方式1','收货地址1','商家账号1','商品编号1','商品名称1','商品类型1',1,1,'总金额1','2021-04-21 21:22:48','http://localhost:8080/ssm15yn9/upload/dingdan_tupian1.jpg','是','','未支付',1);
insert  into `dingdan`(`id`,`addtime`,`dingdanbianhao`,`zhanghao`,`yonghuxingming`,`lianxifangshi`,`shouhuodizhi`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`kucun`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`,`userid`) values (42,'2021-04-21 21:22:48','订单编号2','账号2','用户姓名2','联系方式2','收货地址2','商家账号2','商品编号2','商品名称2','商品类型2',2,2,'总金额2','2021-04-21 21:22:48','http://localhost:8080/ssm15yn9/upload/dingdan_tupian2.jpg','是','','未支付',2);
insert  into `dingdan`(`id`,`addtime`,`dingdanbianhao`,`zhanghao`,`yonghuxingming`,`lianxifangshi`,`shouhuodizhi`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`kucun`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`,`userid`) values (43,'2021-04-21 21:22:48','订单编号3','账号3','用户姓名3','联系方式3','收货地址3','商家账号3','商品编号3','商品名称3','商品类型3',3,3,'总金额3','2021-04-21 21:22:48','http://localhost:8080/ssm15yn9/upload/dingdan_tupian3.jpg','是','','未支付',3);
insert  into `dingdan`(`id`,`addtime`,`dingdanbianhao`,`zhanghao`,`yonghuxingming`,`lianxifangshi`,`shouhuodizhi`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`kucun`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`,`userid`) values (44,'2021-04-21 21:22:48','订单编号4','账号4','用户姓名4','联系方式4','收货地址4','商家账号4','商品编号4','商品名称4','商品类型4',4,4,'总金额4','2021-04-21 21:22:48','http://localhost:8080/ssm15yn9/upload/dingdan_tupian4.jpg','是','','未支付',4);
insert  into `dingdan`(`id`,`addtime`,`dingdanbianhao`,`zhanghao`,`yonghuxingming`,`lianxifangshi`,`shouhuodizhi`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`kucun`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`,`userid`) values (45,'2021-04-21 21:22:48','订单编号5','账号5','用户姓名5','联系方式5','收货地址5','商家账号5','商品编号5','商品名称5','商品类型5',5,5,'总金额5','2021-04-21 21:22:48','http://localhost:8080/ssm15yn9/upload/dingdan_tupian5.jpg','是','','未支付',5);
insert  into `dingdan`(`id`,`addtime`,`dingdanbianhao`,`zhanghao`,`yonghuxingming`,`lianxifangshi`,`shouhuodizhi`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`kucun`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`,`userid`) values (46,'2021-04-21 21:22:48','订单编号6','账号6','用户姓名6','联系方式6','收货地址6','商家账号6','商品编号6','商品名称6','商品类型6',6,6,'总金额6','2021-04-21 21:22:48','http://localhost:8080/ssm15yn9/upload/dingdan_tupian6.jpg','是','','未支付',6);

/*Table structure for table `discussshangpin` */

DROP TABLE IF EXISTS `discussshangpin`;

CREATE TABLE `discussshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpin` */

insert  into `discussshangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-21 21:22:48',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-04-21 21:22:48',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-04-21 21:22:48',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-04-21 21:22:48',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-04-21 21:22:48',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-04-21 21:22:48',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fahuoxinxi` */

DROP TABLE IF EXISTS `fahuoxinxi`;

CREATE TABLE `fahuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpinzhuangtai` varchar(200) DEFAULT NULL COMMENT '商品状态',
  `songhuoshijian` datetime DEFAULT NULL COMMENT '送货时间',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kuaidigongsi` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `kuaididanhao` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kuaididanhao` (`kuaididanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='发货信息';

/*Data for the table `fahuoxinxi` */

insert  into `fahuoxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`songhuoshijian`,`shouhuodizhi`,`tupian`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (51,'2021-04-21 21:22:48','账号1','用户姓名1','商家账号1','商品编号1','商品名称1','商品类型1','未发货','2021-04-21 21:22:48','收货地址1','http://localhost:8080/ssm15yn9/upload/fahuoxinxi_tupian1.jpg','快递公司1','快递单号1',1);
insert  into `fahuoxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`songhuoshijian`,`shouhuodizhi`,`tupian`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (52,'2021-04-21 21:22:48','账号2','用户姓名2','商家账号2','商品编号2','商品名称2','商品类型2','未发货','2021-04-21 21:22:48','收货地址2','http://localhost:8080/ssm15yn9/upload/fahuoxinxi_tupian2.jpg','快递公司2','快递单号2',2);
insert  into `fahuoxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`songhuoshijian`,`shouhuodizhi`,`tupian`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (53,'2021-04-21 21:22:48','账号3','用户姓名3','商家账号3','商品编号3','商品名称3','商品类型3','未发货','2021-04-21 21:22:48','收货地址3','http://localhost:8080/ssm15yn9/upload/fahuoxinxi_tupian3.jpg','快递公司3','快递单号3',3);
insert  into `fahuoxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`songhuoshijian`,`shouhuodizhi`,`tupian`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (54,'2021-04-21 21:22:48','账号4','用户姓名4','商家账号4','商品编号4','商品名称4','商品类型4','未发货','2021-04-21 21:22:48','收货地址4','http://localhost:8080/ssm15yn9/upload/fahuoxinxi_tupian4.jpg','快递公司4','快递单号4',4);
insert  into `fahuoxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`songhuoshijian`,`shouhuodizhi`,`tupian`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (55,'2021-04-21 21:22:48','账号5','用户姓名5','商家账号5','商品编号5','商品名称5','商品类型5','未发货','2021-04-21 21:22:48','收货地址5','http://localhost:8080/ssm15yn9/upload/fahuoxinxi_tupian5.jpg','快递公司5','快递单号5',5);
insert  into `fahuoxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`songhuoshijian`,`shouhuodizhi`,`tupian`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (56,'2021-04-21 21:22:48','账号6','用户姓名6','商家账号6','商品编号6','商品名称6','商品类型6','未发货','2021-04-21 21:22:48','收货地址6','http://localhost:8080/ssm15yn9/upload/fahuoxinxi_tupian6.jpg','快递公司6','快递单号6',6);

/*Table structure for table `gouwuche` */

DROP TABLE IF EXISTS `gouwuche`;

CREATE TABLE `gouwuche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `gouwuche` */

insert  into `gouwuche`(`id`,`addtime`,`dingdanbianhao`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`xiadanshijian`,`kucun`,`jiage`,`zongjine`,`zhanghao`,`yonghuxingming`,`tupian`,`ispay`,`userid`) values (31,'2021-04-21 21:22:48','订单编号1','商家账号1','商品编号1','商品名称1','商品类型1','2021-04-21 21:22:48',1,1,'总金额1','账号1','用户姓名1','http://localhost:8080/ssm15yn9/upload/gouwuche_tupian1.jpg','未支付',1);
insert  into `gouwuche`(`id`,`addtime`,`dingdanbianhao`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`xiadanshijian`,`kucun`,`jiage`,`zongjine`,`zhanghao`,`yonghuxingming`,`tupian`,`ispay`,`userid`) values (32,'2021-04-21 21:22:48','订单编号2','商家账号2','商品编号2','商品名称2','商品类型2','2021-04-21 21:22:48',2,2,'总金额2','账号2','用户姓名2','http://localhost:8080/ssm15yn9/upload/gouwuche_tupian2.jpg','未支付',2);
insert  into `gouwuche`(`id`,`addtime`,`dingdanbianhao`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`xiadanshijian`,`kucun`,`jiage`,`zongjine`,`zhanghao`,`yonghuxingming`,`tupian`,`ispay`,`userid`) values (33,'2021-04-21 21:22:48','订单编号3','商家账号3','商品编号3','商品名称3','商品类型3','2021-04-21 21:22:48',3,3,'总金额3','账号3','用户姓名3','http://localhost:8080/ssm15yn9/upload/gouwuche_tupian3.jpg','未支付',3);
insert  into `gouwuche`(`id`,`addtime`,`dingdanbianhao`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`xiadanshijian`,`kucun`,`jiage`,`zongjine`,`zhanghao`,`yonghuxingming`,`tupian`,`ispay`,`userid`) values (34,'2021-04-21 21:22:48','订单编号4','商家账号4','商品编号4','商品名称4','商品类型4','2021-04-21 21:22:48',4,4,'总金额4','账号4','用户姓名4','http://localhost:8080/ssm15yn9/upload/gouwuche_tupian4.jpg','未支付',4);
insert  into `gouwuche`(`id`,`addtime`,`dingdanbianhao`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`xiadanshijian`,`kucun`,`jiage`,`zongjine`,`zhanghao`,`yonghuxingming`,`tupian`,`ispay`,`userid`) values (35,'2021-04-21 21:22:48','订单编号5','商家账号5','商品编号5','商品名称5','商品类型5','2021-04-21 21:22:48',5,5,'总金额5','账号5','用户姓名5','http://localhost:8080/ssm15yn9/upload/gouwuche_tupian5.jpg','未支付',5);
insert  into `gouwuche`(`id`,`addtime`,`dingdanbianhao`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`xiadanshijian`,`kucun`,`jiage`,`zongjine`,`zhanghao`,`yonghuxingming`,`tupian`,`ispay`,`userid`) values (36,'2021-04-21 21:22:48','订单编号6','商家账号6','商品编号6','商品名称6','商品类型6','2021-04-21 21:22:48',6,6,'总金额6','账号6','用户姓名6','http://localhost:8080/ssm15yn9/upload/gouwuche_tupian6.jpg','未支付',6);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-21 21:22:48','标题1','简介1','http://localhost:8080/ssm15yn9/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-04-21 21:22:48','标题2','简介2','http://localhost:8080/ssm15yn9/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-04-21 21:22:48','标题3','简介3','http://localhost:8080/ssm15yn9/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-04-21 21:22:48','标题4','简介4','http://localhost:8080/ssm15yn9/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-04-21 21:22:48','标题5','简介5','http://localhost:8080/ssm15yn9/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-04-21 21:22:48','标题6','简介6','http://localhost:8080/ssm15yn9/upload/news_picture6.jpg','内容6');

/*Table structure for table `qianshouxinxi` */

DROP TABLE IF EXISTS `qianshouxinxi`;

CREATE TABLE `qianshouxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpinzhuangtai` varchar(200) DEFAULT NULL COMMENT '商品状态',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `songhuoshijian` datetime DEFAULT NULL COMMENT '送货时间',
  `shouhuoshijian` datetime DEFAULT NULL COMMENT '收货时间',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `kuaidigongsi` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `kuaididanhao` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='签收信息';

/*Data for the table `qianshouxinxi` */

insert  into `qianshouxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`tupian`,`songhuoshijian`,`shouhuoshijian`,`shouhuodizhi`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (61,'2021-04-21 21:22:48','账号1','用户姓名1','商家账号1','商品编号1','商品名称1','商品类型1','商品状态1','http://localhost:8080/ssm15yn9/upload/qianshouxinxi_tupian1.jpg','2021-04-21 21:22:48','2021-04-21 21:22:48','收货地址1','快递公司1','快递单号1',1);
insert  into `qianshouxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`tupian`,`songhuoshijian`,`shouhuoshijian`,`shouhuodizhi`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (62,'2021-04-21 21:22:48','账号2','用户姓名2','商家账号2','商品编号2','商品名称2','商品类型2','商品状态2','http://localhost:8080/ssm15yn9/upload/qianshouxinxi_tupian2.jpg','2021-04-21 21:22:48','2021-04-21 21:22:48','收货地址2','快递公司2','快递单号2',2);
insert  into `qianshouxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`tupian`,`songhuoshijian`,`shouhuoshijian`,`shouhuodizhi`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (63,'2021-04-21 21:22:48','账号3','用户姓名3','商家账号3','商品编号3','商品名称3','商品类型3','商品状态3','http://localhost:8080/ssm15yn9/upload/qianshouxinxi_tupian3.jpg','2021-04-21 21:22:48','2021-04-21 21:22:48','收货地址3','快递公司3','快递单号3',3);
insert  into `qianshouxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`tupian`,`songhuoshijian`,`shouhuoshijian`,`shouhuodizhi`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (64,'2021-04-21 21:22:48','账号4','用户姓名4','商家账号4','商品编号4','商品名称4','商品类型4','商品状态4','http://localhost:8080/ssm15yn9/upload/qianshouxinxi_tupian4.jpg','2021-04-21 21:22:48','2021-04-21 21:22:48','收货地址4','快递公司4','快递单号4',4);
insert  into `qianshouxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`tupian`,`songhuoshijian`,`shouhuoshijian`,`shouhuodizhi`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (65,'2021-04-21 21:22:48','账号5','用户姓名5','商家账号5','商品编号5','商品名称5','商品类型5','商品状态5','http://localhost:8080/ssm15yn9/upload/qianshouxinxi_tupian5.jpg','2021-04-21 21:22:48','2021-04-21 21:22:48','收货地址5','快递公司5','快递单号5',5);
insert  into `qianshouxinxi`(`id`,`addtime`,`zhanghao`,`yonghuxingming`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinzhuangtai`,`tupian`,`songhuoshijian`,`shouhuoshijian`,`shouhuodizhi`,`kuaidigongsi`,`kuaididanhao`,`userid`) values (66,'2021-04-21 21:22:48','账号6','用户姓名6','商家账号6','商品编号6','商品名称6','商品类型6','商品状态6','http://localhost:8080/ssm15yn9/upload/qianshouxinxi_tupian6.jpg','2021-04-21 21:22:48','2021-04-21 21:22:48','收货地址6','快递公司6','快递单号6',6);

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (81,'2021-04-21 21:22:48','商家1','123456','商家姓名1','男','13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/ssm15yn9/upload/shangjia_touxiang1.jpg');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (82,'2021-04-21 21:22:48','商家2','123456','商家姓名2','男','13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/ssm15yn9/upload/shangjia_touxiang2.jpg');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (83,'2021-04-21 21:22:48','商家3','123456','商家姓名3','男','13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/ssm15yn9/upload/shangjia_touxiang3.jpg');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (84,'2021-04-21 21:22:48','商家4','123456','商家姓名4','男','13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/ssm15yn9/upload/shangjia_touxiang4.jpg');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (85,'2021-04-21 21:22:48','商家5','123456','商家姓名5','男','13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/ssm15yn9/upload/shangjia_touxiang5.jpg');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`) values (86,'2021-04-21 21:22:48','商家6','123456','商家姓名6','男','13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/ssm15yn9/upload/shangjia_touxiang6.jpg');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpinxiangqing` varchar(200) DEFAULT NULL COMMENT '商品详情',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`addtime`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinxiangqing`,`kucun`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (21,'2021-04-21 21:22:48','商家账号1','商品编号1','商品名称1','商品类型1','商品详情1',1,1,'http://localhost:8080/ssm15yn9/upload/shangpin_tupian1.jpg',1,1,'2021-04-21 21:22:48',1,1);
insert  into `shangpin`(`id`,`addtime`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinxiangqing`,`kucun`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (22,'2021-04-21 21:22:48','商家账号2','商品编号2','商品名称2','商品类型2','商品详情2',2,2,'http://localhost:8080/ssm15yn9/upload/shangpin_tupian2.jpg',2,2,'2021-04-21 21:22:48',2,2);
insert  into `shangpin`(`id`,`addtime`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinxiangqing`,`kucun`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (23,'2021-04-21 21:22:48','商家账号3','商品编号3','商品名称3','商品类型3','商品详情3',3,3,'http://localhost:8080/ssm15yn9/upload/shangpin_tupian3.jpg',3,3,'2021-04-21 21:22:48',3,3);
insert  into `shangpin`(`id`,`addtime`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinxiangqing`,`kucun`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (24,'2021-04-21 21:22:48','商家账号4','商品编号4','商品名称4','商品类型4','商品详情4',4,4,'http://localhost:8080/ssm15yn9/upload/shangpin_tupian4.jpg',4,4,'2021-04-21 21:22:48',4,4);
insert  into `shangpin`(`id`,`addtime`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinxiangqing`,`kucun`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (25,'2021-04-21 21:22:48','商家账号5','商品编号5','商品名称5','商品类型5','商品详情5',5,5,'http://localhost:8080/ssm15yn9/upload/shangpin_tupian5.jpg',5,5,'2021-04-21 21:22:48',5,5);
insert  into `shangpin`(`id`,`addtime`,`shangjiazhanghao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpinxiangqing`,`kucun`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (26,'2021-04-21 21:22:48','商家账号6','商品编号6','商品名称6','商品类型6','商品详情6',6,6,'http://localhost:8080/ssm15yn9/upload/shangpin_tupian6.jpg',6,6,'2021-04-21 21:22:48',6,6);

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (71,'2021-04-21 21:22:48','类型1');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (72,'2021-04-21 21:22:48','类型2');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (73,'2021-04-21 21:22:48','类型3');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (74,'2021-04-21 21:22:48','类型4');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (75,'2021-04-21 21:22:48','类型5');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (76,'2021-04-21 21:22:48','类型6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 21:22:48');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghuxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (11,'2021-04-21 21:22:48','用户1','123456','用户姓名1','男','13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/ssm15yn9/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghuxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (12,'2021-04-21 21:22:48','用户2','123456','用户姓名2','男','13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/ssm15yn9/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghuxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (13,'2021-04-21 21:22:48','用户3','123456','用户姓名3','男','13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/ssm15yn9/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghuxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (14,'2021-04-21 21:22:48','用户4','123456','用户姓名4','男','13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/ssm15yn9/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghuxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (15,'2021-04-21 21:22:48','用户5','123456','用户姓名5','男','13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/ssm15yn9/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghuxingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (16,'2021-04-21 21:22:48','用户6','123456','用户姓名6','男','13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/ssm15yn9/upload/yonghu_touxiang6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
