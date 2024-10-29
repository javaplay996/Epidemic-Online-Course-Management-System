-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot38dw8
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615472394141 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (1615472372339,'2021-03-11 14:19:31','数学一班'),(1615472380434,'2021-03-11 14:19:39','语文一班'),(1615472386838,'2021-03-11 14:19:46','计算机一班'),(1615472394140,'2021-03-11 14:19:53','计算机二班');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615473150521 DEFAULT CHARSET=utf8 COMMENT='师生聊天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (101,'2021-03-11 14:15:00',1,1,'提问1','回复1',1),(102,'2021-03-11 14:15:00',2,2,'提问2','回复2',2),(103,'2021-03-11 14:15:00',3,3,'提问3','回复3',3),(104,'2021-03-11 14:15:00',4,4,'提问4','回复4',4),(105,'2021-03-11 14:15:00',5,5,'提问5','回复5',5),(106,'2021-03-11 14:15:00',6,6,'提问6','回复6',6),(1615472901396,'2021-03-11 14:28:20',1615472790352,NULL,'XXXXXXXX',NULL,0),(1615473150520,'2021-03-11 14:32:29',1615472790352,1615472644586,NULL,'在此回复',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot38dw8/upload/1615472560508.jpg'),(2,'picture2','http://localhost:8080/springboot38dw8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot38dw8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615472886166 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (111,'2021-03-11 14:15:00','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(112,'2021-03-11 14:15:00','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(113,'2021-03-11 14:15:00','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(114,'2021-03-11 14:15:00','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(115,'2021-03-11 14:15:00','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(1615472870954,'2021-03-11 14:27:50',NULL,'可评论他人帖子',111,1615472790352,'01',NULL),(1615472886165,'2021-03-11 14:28:06','XXXX','<p>XXXXXXX</p>',0,1615472790352,'01','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshi` varchar(200) NOT NULL COMMENT '教师',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615472644587 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (22,'2021-03-11 14:15:00','教师2','123456','教师2','男',2,'初级','13823888882','773890002@qq.com','http://localhost:8080/springboot38dw8/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-03-11 14:15:00','教师3','123456','教师3','男',3,'初级','13823888883','773890003@qq.com','http://localhost:8080/springboot38dw8/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-03-11 14:15:00','教师4','123456','教师4','男',4,'初级','13823888884','773890004@qq.com','http://localhost:8080/springboot38dw8/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-03-11 14:15:00','教师5','123456','教师5','男',5,'初级','13823888885','773890005@qq.com','http://localhost:8080/springboot38dw8/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-03-11 14:15:00','教师6','123456','教师6','男',6,'初级','13823888886','773890006@qq.com','http://localhost:8080/springboot38dw8/upload/jiaoshi_zhaopian6.jpg'),(1615472644586,'2021-03-11 14:24:04','001','001','李老师','女',36,'中级','13800000000','138@qq.com','http://localhost:8080/springboot38dw8/upload/1615472672734.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengbiao`
--

DROP TABLE IF EXISTS `kechengbiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengbiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kebiao` varchar(200) DEFAULT NULL COMMENT '课表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615472499189 DEFAULT CHARSET=utf8 COMMENT='课程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengbiao`
--

LOCK TABLES `kechengbiao` WRITE;
/*!40000 ALTER TABLE `kechengbiao` DISABLE KEYS */;
INSERT INTO `kechengbiao` VALUES (51,'2021-03-11 14:15:00','标题1','班级1','http://localhost:8080/springboot38dw8/upload/kechengbiao_fengmian1.jpg',''),(52,'2021-03-11 14:15:00','标题2','班级2','http://localhost:8080/springboot38dw8/upload/kechengbiao_fengmian2.jpg',''),(53,'2021-03-11 14:15:00','标题3','班级3','http://localhost:8080/springboot38dw8/upload/kechengbiao_fengmian3.jpg',''),(54,'2021-03-11 14:15:00','标题4','班级4','http://localhost:8080/springboot38dw8/upload/kechengbiao_fengmian4.jpg',''),(55,'2021-03-11 14:15:00','标题5','班级5','http://localhost:8080/springboot38dw8/upload/kechengbiao_fengmian5.jpg',''),(56,'2021-03-11 14:15:00','标题6','班级6','http://localhost:8080/springboot38dw8/upload/kechengbiao_fengmian6.jpg',''),(1615472499188,'2021-03-11 14:21:38','某某班级XXXX课程表上传文件','数学一班','http://localhost:8080/springboot38dw8/upload/1615472476512.jpg','http://localhost:8080/springboot38dw8/upload/1615472497295.docx');
/*!40000 ALTER TABLE `kechengbiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengfenlei`
--

DROP TABLE IF EXISTS `kechengfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615472423482 DEFAULT CHARSET=utf8 COMMENT='课程分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengfenlei`
--

LOCK TABLES `kechengfenlei` WRITE;
/*!40000 ALTER TABLE `kechengfenlei` DISABLE KEYS */;
INSERT INTO `kechengfenlei` VALUES (41,'2021-03-11 14:15:00','数学'),(1615472417784,'2021-03-11 14:20:17','语文'),(1615472423481,'2021-03-11 14:20:23','计算机');
/*!40000 ALTER TABLE `kechengfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoye` varchar(200) DEFAULT NULL COMMENT '作业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615472750289 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (1615472750288,'2021-03-11 14:25:49','几月几号什么课，自行编辑','001','李老师','数学','数学一班','http://localhost:8080/springboot38dw8/upload/1615472747228.docx');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='学校公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2021-03-11 14:15:00','公告测试1','可自行编辑','http://localhost:8080/springboot38dw8/upload/1615472587697.jpg','<p>编辑器可上传图文，新增操作相同<img src=\"http://localhost:8080/springboot38dw8/upload/1615472618752.jpg\"></p>'),(132,'2021-03-11 14:15:00','标题2','简介2','http://localhost:8080/springboot38dw8/upload/news_picture2.jpg','内容2'),(133,'2021-03-11 14:15:00','标题3','简介3','http://localhost:8080/springboot38dw8/upload/news_picture3.jpg','内容3'),(134,'2021-03-11 14:15:00','标题4','简介4','http://localhost:8080/springboot38dw8/upload/news_picture4.jpg','内容4'),(135,'2021-03-11 14:15:00','标题5','简介5','http://localhost:8080/springboot38dw8/upload/news_picture5.jpg','内容5'),(136,'2021-03-11 14:15:00','标题6','简介6','http://localhost:8080/springboot38dw8/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiaxinxi`
--

DROP TABLE IF EXISTS `qingjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuesheng` varchar(200) DEFAULT NULL COMMENT '学生',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `qishishijian` date DEFAULT NULL COMMENT '起始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `qingjialiyou` longtext COMMENT '请假理由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615473023320 DEFAULT CHARSET=utf8 COMMENT='请假信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiaxinxi`
--

LOCK TABLES `qingjiaxinxi` WRITE;
/*!40000 ALTER TABLE `qingjiaxinxi` DISABLE KEYS */;
INSERT INTO `qingjiaxinxi` VALUES (1615473023319,'2021-03-11 14:30:22','01','小王','数学一班','2021-03-11','2021-03-13','<p>请假理由自行编辑</p>','是','好好休息');
/*!40000 ALTER TABLE `qingjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangkeqiandao`
--

DROP TABLE IF EXISTS `shangkeqiandao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangkeqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daka` varchar(200) DEFAULT NULL COMMENT '打卡',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuesheng` varchar(200) DEFAULT NULL COMMENT '学生',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615473039260 DEFAULT CHARSET=utf8 COMMENT='上课签到';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangkeqiandao`
--

LOCK TABLES `shangkeqiandao` WRITE;
/*!40000 ALTER TABLE `shangkeqiandao` DISABLE KEYS */;
INSERT INTO `shangkeqiandao` VALUES (91,'2021-03-11 14:15:00','上课','学号1','学生1','班级1','正常','课程1','2021-03-11 22:15:00'),(92,'2021-03-11 14:15:00','上课','学号2','学生2','班级2','正常','课程2','2021-03-11 22:15:00'),(93,'2021-03-11 14:15:00','上课','学号3','学生3','班级3','正常','课程3','2021-03-11 22:15:00'),(94,'2021-03-11 14:15:00','上课','学号4','学生4','班级4','正常','课程4','2021-03-11 22:15:00'),(95,'2021-03-11 14:15:00','上课','学号5','学生5','班级5','正常','课程5','2021-03-11 22:15:00'),(96,'2021-03-11 14:15:00','上课','学号6','学生6','班级6','正常','课程6','2021-03-11 22:15:00'),(1615473039259,'2021-03-11 14:30:38','上课','01','小王','数学一班','正常','数学','2021-03-11 22:30:37');
/*!40000 ALTER TABLE `shangkeqiandao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615472920204 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615472920203,'2021-03-11 14:28:39',1615472790352,1615472499188,'kechengbiao','某某班级XXXX课程表上传文件','http://localhost:8080/springboot38dw8/upload/1615472476512.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','dr7fbu8ktnhtirsunpdf3abcie9v1sqc','2021-03-11 14:18:35','2021-03-11 15:18:36'),(2,1615472644586,'001','jiaoshi','管理员','rllv4netwkm2mevxuibghup807u8eji7','2021-03-11 14:24:20','2021-03-11 15:30:54'),(3,1615472790352,'01','xuesheng','学生','ori3yf9kn06tkx7nffw7ww85b7691r1z','2021-03-11 14:26:38','2021-03-11 15:26:38');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-11 14:15:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xuesheng` varchar(200) NOT NULL COMMENT '学生',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615472790353 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-03-11 14:15:00','学生1','123456','学生1','男',1,'13823888881','773890001@qq.com','班级1','http://localhost:8080/springboot38dw8/upload/xuesheng_zhaopian1.jpg'),(12,'2021-03-11 14:15:00','学生2','123456','学生2','男',2,'13823888882','773890002@qq.com','班级2','http://localhost:8080/springboot38dw8/upload/xuesheng_zhaopian2.jpg'),(13,'2021-03-11 14:15:00','学生3','123456','学生3','女',3,'13823888883','773890003@qq.com','班级3','http://localhost:8080/springboot38dw8/upload/xuesheng_zhaopian3.jpg'),(14,'2021-03-11 14:15:00','学生4','123456','学生4','男',4,'13823888884','773890004@qq.com','班级4','http://localhost:8080/springboot38dw8/upload/xuesheng_zhaopian4.jpg'),(15,'2021-03-11 14:15:00','学生5','123456','学生5','男',5,'13823888885','773890005@qq.com','班级5','http://localhost:8080/springboot38dw8/upload/xuesheng_zhaopian5.jpg'),(16,'2021-03-11 14:15:00','学生6','123456','学生6','男',6,'13823888886','773890006@qq.com','班级6','http://localhost:8080/springboot38dw8/upload/xuesheng_zhaopian6.jpg'),(1615472790352,'2021-03-11 14:26:30','01','01','小王','女',23,'13900000000','11@qq.com','数学一班','http://localhost:8080/springboot38dw8/upload/1615472815493.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyexinxi`
--

DROP TABLE IF EXISTS `zuoyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuesheng` varchar(200) DEFAULT NULL COMMENT '学生',
  `tijiaozuoye` varchar(200) DEFAULT NULL COMMENT '提交作业',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615473002387 DEFAULT CHARSET=utf8 COMMENT='作业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyexinxi`
--

LOCK TABLES `zuoyexinxi` WRITE;
/*!40000 ALTER TABLE `zuoyexinxi` DISABLE KEYS */;
INSERT INTO `zuoyexinxi` VALUES (1615473002386,'2021-03-11 14:30:01','几月几号什么课，自行编辑','001','李老师','数学','数学一班','01','小王','http://localhost:8080/springboot38dw8/upload/1615472998717.docx','2021-03-11 22:30:00','是','可下载学生提交作业批改，不再演示下载，一样的，在此打分评语，或者自己想法');
/*!40000 ALTER TABLE `zuoyexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-12  9:34:23
