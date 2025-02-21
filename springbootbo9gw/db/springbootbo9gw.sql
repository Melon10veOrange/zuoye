-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootbo9gw
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
-- Current Database: `springbootbo9gw`
--

/*!40000 DROP DATABASE IF EXISTS `springbootbo9gw`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootbo9gw` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootbo9gw`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1678164940289 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2023-03-07 03:54:14',1,1,'提问1','回复1',0),(72,'2023-03-07 03:54:14',2,2,'提问2','回复2',2),(73,'2023-03-07 03:54:14',3,3,'提问3','回复3',3),(74,'2023-03-07 03:54:14',4,4,'提问4','回复4',4),(75,'2023-03-07 03:54:14',5,5,'提问5','回复5',5),(76,'2023-03-07 03:54:14',6,6,'提问6','回复6',6),(77,'2023-03-07 03:54:14',7,7,'提问7','回复7',7),(78,'2023-03-07 03:54:14',8,8,'提问8','回复8',8),(1678161569392,'2023-03-07 03:59:28',1,18,NULL,'主人，我是您的智能助手小搏，请问有什么可以帮您！',NULL),(1678164856821,'2023-03-07 04:54:16',1678164632381,NULL,'你好',NULL,0),(1678164858370,'2023-03-07 04:54:17',1678164632381,1678164632381,NULL,'智能助手是可以自己设置问题跟回复的，当问到问题的时候就会自动回复\n',0),(1678164860937,'2023-03-07 04:54:20',1678164632381,1678164632381,NULL,'您好，在线客服很高兴为您服务！',0),(1678164862988,'2023-03-07 04:54:22',1678164632381,NULL,'666',NULL,0),(1678164924818,'2023-03-07 04:55:24',1678164632381,1,NULL,'8888',0),(1678164939527,'2023-03-07 04:55:38',1678164632381,NULL,'222',NULL,0),(1678164940288,'2023-03-07 04:55:39',1678164632381,1678164632381,NULL,'主人，小搏还不够聪明，无法理解您的意思！',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chathelper`
--

DROP TABLE IF EXISTS `chathelper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chathelper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ask` varchar(200) DEFAULT NULL COMMENT '提问',
  `reply` longtext COMMENT '回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='聊天助手表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chathelper`
--

LOCK TABLES `chathelper` WRITE;
/*!40000 ALTER TABLE `chathelper` DISABLE KEYS */;
INSERT INTO `chathelper` VALUES (81,'2023-03-07 03:54:14','提问1','回复1'),(82,'2023-03-07 03:54:14','提问2','回复2'),(83,'2023-03-07 03:54:14','提问3','回复3'),(84,'2023-03-07 03:54:14','提问4','回复4'),(85,'2023-03-07 03:54:14','提问5','回复5'),(86,'2023-03-07 03:54:14','提问6','回复6'),(87,'2023-03-07 03:54:14','提问7','回复7'),(88,'2023-03-07 03:54:14','你好','智能助手是可以自己设置问题跟回复的，当问到问题的时候就会自动回复\n');
/*!40000 ALTER TABLE `chathelper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliangxinxi`
--

DROP TABLE IF EXISTS `cheliangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangmingcheng` varchar(200) NOT NULL COMMENT '车辆名称',
  `cheliangleixing` varchar(200) DEFAULT NULL COMMENT '车辆类型',
  `tupian` longtext COMMENT '图片',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `chepaihao` varchar(200) NOT NULL COMMENT '车牌号',
  `zaizhong` varchar(200) DEFAULT NULL COMMENT '载重',
  `cheliangxiangqing` longtext COMMENT '车辆详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangxinxi`
--

LOCK TABLES `cheliangxinxi` WRITE;
/*!40000 ALTER TABLE `cheliangxinxi` DISABLE KEYS */;
INSERT INTO `cheliangxinxi` VALUES (31,'2023-03-07 03:54:14','车辆名称1','车辆类型1','upload/cheliangxinxi_tupian1.jpg,upload/cheliangxinxi_tupian2.jpg,upload/cheliangxinxi_tupian3.jpg','车辆颜色1','车牌号1','载重1','车辆详情1'),(32,'2023-03-07 03:54:14','车辆名称2','车辆类型2','upload/cheliangxinxi_tupian2.jpg,upload/cheliangxinxi_tupian3.jpg,upload/cheliangxinxi_tupian4.jpg','车辆颜色2','车牌号2','载重2','车辆详情2'),(33,'2023-03-07 03:54:14','车辆名称3','车辆类型3','upload/cheliangxinxi_tupian3.jpg,upload/cheliangxinxi_tupian4.jpg,upload/cheliangxinxi_tupian5.jpg','车辆颜色3','车牌号3','载重3','车辆详情3'),(34,'2023-03-07 03:54:14','车辆名称4','车辆类型4','upload/cheliangxinxi_tupian4.jpg,upload/cheliangxinxi_tupian5.jpg,upload/cheliangxinxi_tupian6.jpg','车辆颜色4','车牌号4','载重4','车辆详情4'),(35,'2023-03-07 03:54:14','车辆名称5','车辆类型5','upload/cheliangxinxi_tupian5.jpg,upload/cheliangxinxi_tupian6.jpg,upload/cheliangxinxi_tupian7.jpg','车辆颜色5','车牌号5','载重5','车辆详情5'),(36,'2023-03-07 03:54:14','车辆名称6','车辆类型6','upload/cheliangxinxi_tupian6.jpg,upload/cheliangxinxi_tupian7.jpg,upload/cheliangxinxi_tupian8.jpg','车辆颜色6','车牌号6','载重6','车辆详情6'),(37,'2023-03-07 03:54:14','车辆名称7','车辆类型7','upload/cheliangxinxi_tupian7.jpg,upload/cheliangxinxi_tupian8.jpg,upload/cheliangxinxi_tupian9.jpg','车辆颜色7','车牌号7','载重7','车辆详情7'),(38,'2023-03-07 03:54:14','物流车','小型车','upload/cheliangxinxi_tupian8.jpg','白色','A88888a','50km','车辆详情8二手');
/*!40000 ALTER TABLE `cheliangxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuliudanhao` varchar(200) DEFAULT NULL COMMENT '物流单号',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `wuliuleixing` varchar(200) NOT NULL COMMENT '物流类型',
  `zhongliang` varchar(200) NOT NULL COMMENT '重量',
  `feiyong` float DEFAULT NULL COMMENT '费用',
  `shoujianren` varchar(200) NOT NULL COMMENT '收件人',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `shoujiandizhi` varchar(200) NOT NULL COMMENT '收件地址',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuliudanhao` (`wuliudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1678164825938 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (51,'2023-03-07 03:54:14','1111111111','物品名称1','普通','重量1',1,'收件人1','13823888881','收件地址1','2023-03-07 11:54:14','用户名1','姓名1','13823888881','已配送','未支付'),(52,'2023-03-07 03:54:14','2222222222','物品名称2','普通','重量2',2,'收件人2','13823888882','收件地址2','2023-03-07 11:54:14','用户名2','姓名2','13823888882','已配送','未支付'),(53,'2023-03-07 03:54:14','3333333333','物品名称3','普通','重量3',3,'收件人3','13823888883','收件地址3','2023-03-07 11:54:14','用户名3','姓名3','13823888883','已配送','未支付'),(54,'2023-03-07 03:54:14','4444444444','物品名称4','普通','重量4',4,'收件人4','13823888884','收件地址4','2023-03-07 11:54:14','用户名4','姓名4','13823888884','已配送','未支付'),(55,'2023-03-07 03:54:14','5555555555','物品名称5','普通','重量5',5,'收件人5','13823888885','收件地址5','2023-03-07 11:54:14','用户名5','姓名5','13823888885','已配送','未支付'),(56,'2023-03-07 03:54:14','6666666666','物品名称6','普通','重量6',6,'收件人6','13823888886','收件地址6','2023-03-07 11:54:14','用户名6','姓名6','13823888886','已配送','未支付'),(57,'2023-03-07 03:54:14','7777777777','物品名称7','普通','重量7',7,'收件人7','13823888887','收件地址7','2023-03-07 11:54:14','用户名7','姓名7','13823888887','已配送','未支付'),(58,'2023-03-07 03:54:14','8888888888','物品名称8','普通','重量8',8,'收件人8','13823888888','收件地址8','2023-03-07 11:54:14','用户名8','姓名8','13823888888','已配送','未支付'),(1678161588730,'2023-03-07 03:59:47','1678161575846','21121221','普通','重量3',3,'21','15210212111','121111','2023-03-07 11:59:35','1','姓名8','13823888888','已配送',''),(1678164825937,'2023-03-07 04:53:45','1678164800642','xx物品','速递','50KG以下',15,'张慧','15214121411','上海市xx地址','2023-03-07 12:53:20','2','王丽','15214121411','已配送','已支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678164849954 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2023-03-07 03:54:14',1,'用户名1','upload/messages_avatarurl1.jpg','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(112,'2023-03-07 03:54:14',2,'用户名2','upload/messages_avatarurl2.jpg','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(113,'2023-03-07 03:54:14',3,'用户名3','upload/messages_avatarurl3.jpg','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(114,'2023-03-07 03:54:14',4,'用户名4','upload/messages_avatarurl4.jpg','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(115,'2023-03-07 03:54:14',5,'用户名5','upload/messages_avatarurl5.jpg','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(116,'2023-03-07 03:54:14',6,'用户名6','upload/messages_avatarurl6.jpg','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(117,'2023-03-07 03:54:14',7,'用户名7','upload/messages_avatarurl7.jpg','留言内容7','upload/messages_cpicture7.jpg','回复内容7','upload/messages_rpicture7.jpg'),(118,'2023-03-07 03:54:14',8,'用户名8','upload/messages_avatarurl8.jpg','留言内容8','upload/messages_cpicture8.jpg','回复内容8','upload/messages_rpicture8.jpg'),(1678164849953,'2023-03-07 04:54:09',1678164632381,'2','upload/1678164619704.jpg','有什么问题或者意见都是可以在这里进行交流或者反馈给管理员的，管理员可以进行回复\n',NULL,'好的可以的',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2023-03-07 03:54:14','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(92,'2023-03-07 03:54:14','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(93,'2023-03-07 03:54:14','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(94,'2023-03-07 03:54:14','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(95,'2023-03-07 03:54:14','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(96,'2023-03-07 03:54:14','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(97,'2023-03-07 03:54:14','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(98,'2023-03-07 03:54:14','新闻资讯','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。二手</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoufeibiaozhun`
--

DROP TABLE IF EXISTS `shoufeibiaozhun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoufeibiaozhun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoufeimingcheng` varchar(200) NOT NULL COMMENT '收费名称',
  `tupian` longtext NOT NULL COMMENT '图片',
  `zhongliang` varchar(200) NOT NULL COMMENT '重量',
  `feiyong` float NOT NULL COMMENT '费用',
  `zhongliangshuoming` longtext COMMENT '重量说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='收费标准';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoufeibiaozhun`
--

LOCK TABLES `shoufeibiaozhun` WRITE;
/*!40000 ALTER TABLE `shoufeibiaozhun` DISABLE KEYS */;
INSERT INTO `shoufeibiaozhun` VALUES (41,'2023-03-07 03:54:14','收费名称1','upload/shoufeibiaozhun_tupian1.jpg,upload/shoufeibiaozhun_tupian2.jpg,upload/shoufeibiaozhun_tupian3.jpg','重量1',1,'重量说明1'),(42,'2023-03-07 03:54:14','收费名称2','upload/shoufeibiaozhun_tupian2.jpg,upload/shoufeibiaozhun_tupian3.jpg,upload/shoufeibiaozhun_tupian4.jpg','重量2',2,'重量说明2'),(43,'2023-03-07 03:54:14','收费名称3','upload/shoufeibiaozhun_tupian3.jpg,upload/shoufeibiaozhun_tupian4.jpg,upload/shoufeibiaozhun_tupian5.jpg','重量3',3,'重量说明3'),(44,'2023-03-07 03:54:14','收费名称4','upload/shoufeibiaozhun_tupian4.jpg,upload/shoufeibiaozhun_tupian5.jpg,upload/shoufeibiaozhun_tupian6.jpg','重量4',4,'重量说明4'),(45,'2023-03-07 03:54:14','收费名称5','upload/shoufeibiaozhun_tupian5.jpg,upload/shoufeibiaozhun_tupian6.jpg,upload/shoufeibiaozhun_tupian7.jpg','重量5',5,'重量说明5'),(46,'2023-03-07 03:54:14','收费名称6','upload/shoufeibiaozhun_tupian6.jpg,upload/shoufeibiaozhun_tupian7.jpg,upload/shoufeibiaozhun_tupian8.jpg','重量6',6,'重量说明6'),(47,'2023-03-07 03:54:14','收费名称7','upload/shoufeibiaozhun_tupian7.jpg,upload/shoufeibiaozhun_tupian8.jpg,upload/shoufeibiaozhun_tupian9.jpg','重量7',7,'重量说明7'),(48,'2023-03-07 03:54:14','重量收费','upload/shoufeibiaozhun_tupian8.jpg,upload/shoufeibiaozhun_tupian9.jpg,upload/shoufeibiaozhun_tupian10.jpg','50KG以下',15,'重量说明8测试');
/*!40000 ALTER TABLE `shoufeibiaozhun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-03-07 03:54:14','你是最棒的','SYSTEM INTRODUCTION','<p>当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。测试</p>','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','ausv5k3e4gzvr73vzgrpth3mp5bzt2sc','2023-03-07 03:59:25','2023-03-07 05:54:42'),(2,18,'1','yonghu','用户','77yg157tzsd7r2msspxw1cf8fqla46lo','2023-03-07 03:59:28','2023-03-07 05:00:06'),(3,1678164632381,'2','yonghu','用户','eabykfwpkq1h3k90r9zweii02taznj62','2023-03-07 04:50:35','2023-03-07 05:55:31');
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-07 03:54:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliuxinxi`
--

DROP TABLE IF EXISTS `wuliuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuliuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuliudanhao` varchar(200) DEFAULT NULL COMMENT '物流单号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wuliuleixing` varchar(200) DEFAULT NULL COMMENT '物流类型',
  `feiyong` float DEFAULT NULL COMMENT '费用',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wuliuxinxi` longtext NOT NULL COMMENT '物流信息',
  `peisongshijian` datetime DEFAULT NULL COMMENT '配送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678164896560 DEFAULT CHARSET=utf8 COMMENT='物流信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliuxinxi`
--

LOCK TABLES `wuliuxinxi` WRITE;
/*!40000 ALTER TABLE `wuliuxinxi` DISABLE KEYS */;
INSERT INTO `wuliuxinxi` VALUES (61,'2023-03-07 03:54:14','物流单号1','物品名称1','物流类型1',1,'用户名1','姓名1','物流信息1','2023-03-07 11:54:14'),(62,'2023-03-07 03:54:14','物流单号2','物品名称2','物流类型2',2,'用户名2','姓名2','物流信息2','2023-03-07 11:54:14'),(63,'2023-03-07 03:54:14','物流单号3','物品名称3','物流类型3',3,'用户名3','姓名3','物流信息3','2023-03-07 11:54:14'),(64,'2023-03-07 03:54:14','物流单号4','物品名称4','物流类型4',4,'用户名4','姓名4','物流信息4','2023-03-07 11:54:14'),(65,'2023-03-07 03:54:14','物流单号5','物品名称5','物流类型5',5,'用户名5','姓名5','物流信息5','2023-03-07 11:54:14'),(66,'2023-03-07 03:54:14','物流单号6','物品名称6','物流类型6',6,'用户名6','姓名6','物流信息6','2023-03-07 11:54:14'),(67,'2023-03-07 03:54:14','物流单号7','物品名称7','物流类型7',7,'用户名7','姓名7','物流信息7','2023-03-07 11:54:14'),(68,'2023-03-07 03:54:14','物流单号8','物品名称8','物流类型8',8,'用户名8','姓名8','物流信息8','2023-03-07 11:54:14'),(1678161602555,'2023-03-07 04:00:02','1678161575846','21121221','普通',3,'1','姓名8','21112121','2023-03-07 12:00:02'),(1678164896559,'2023-03-07 04:54:56','1678164800642','xx物品','速递',15,'2','王丽','已揽件从哪里触达到你那里。。。。','2023-03-07 12:54:47');
/*!40000 ALTER TABLE `wuliuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1678164632382 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-03-07 03:54:14','用户名1','e10adc3949ba59abbe56e057f20f883e','姓名1','男','upload/yonghu_touxiang1.jpg','年龄1','773890001@qq.com','13823888881'),(12,'2023-03-07 03:54:14','用户名2','e10adc3949ba59abbe56e057f20f883e','姓名2','男','upload/yonghu_touxiang2.jpg','年龄2','773890002@qq.com','13823888882'),(13,'2023-03-07 03:54:14','用户名3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','upload/yonghu_touxiang3.jpg','年龄3','773890003@qq.com','13823888883'),(14,'2023-03-07 03:54:14','用户名4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','upload/yonghu_touxiang4.jpg','年龄4','773890004@qq.com','13823888884'),(15,'2023-03-07 03:54:14','用户名5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','upload/yonghu_touxiang5.jpg','年龄5','773890005@qq.com','13823888885'),(16,'2023-03-07 03:54:14','用户名6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','upload/yonghu_touxiang6.jpg','年龄6','773890006@qq.com','13823888886'),(17,'2023-03-07 03:54:14','用户名7','e10adc3949ba59abbe56e057f20f883e','姓名7','男','upload/yonghu_touxiang7.jpg','年龄7','773890007@qq.com','13823888887'),(18,'2023-03-07 03:54:14','1','c4ca4238a0b923820dcc509a6f75849b','姓名8','男','upload/yonghu_touxiang8.jpg','年龄8','773890008@qq.com','13823888888'),(1678164632381,'2023-03-07 04:50:32','2','c4ca4238a0b923820dcc509a6f75849b','王丽','女','upload/1678164619704.jpg','18','12121@120.com','15214121411');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhandianxinxi`
--

DROP TABLE IF EXISTS `zhandianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhandianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhandianmingcheng` varchar(200) NOT NULL COMMENT '站点名称',
  `fuwufanwei` varchar(200) NOT NULL COMMENT '服务范围',
  `tupian` longtext COMMENT '图片',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `zhandiandizhi` varchar(200) NOT NULL COMMENT '站点地址',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `zhandianjieshao` longtext COMMENT '站点介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='站点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhandianxinxi`
--

LOCK TABLES `zhandianxinxi` WRITE;
/*!40000 ALTER TABLE `zhandianxinxi` DISABLE KEYS */;
INSERT INTO `zhandianxinxi` VALUES (21,'2023-03-07 03:54:14','站点名称1','服务范围1','upload/zhandianxinxi_tupian1.jpg,upload/zhandianxinxi_tupian2.jpg,upload/zhandianxinxi_tupian3.jpg','地区1','站点地址1','13823888881','站点介绍1'),(22,'2023-03-07 03:54:14','站点名称2','服务范围2','upload/zhandianxinxi_tupian2.jpg,upload/zhandianxinxi_tupian3.jpg,upload/zhandianxinxi_tupian4.jpg','地区2','站点地址2','13823888882','站点介绍2'),(23,'2023-03-07 03:54:14','站点名称3','服务范围3','upload/zhandianxinxi_tupian3.jpg,upload/zhandianxinxi_tupian4.jpg,upload/zhandianxinxi_tupian5.jpg','地区3','站点地址3','13823888883','站点介绍3'),(24,'2023-03-07 03:54:14','站点名称4','服务范围4','upload/zhandianxinxi_tupian4.jpg,upload/zhandianxinxi_tupian5.jpg,upload/zhandianxinxi_tupian6.jpg','地区4','站点地址4','13823888884','站点介绍4'),(25,'2023-03-07 03:54:14','站点名称5','服务范围5','upload/zhandianxinxi_tupian5.jpg,upload/zhandianxinxi_tupian6.jpg,upload/zhandianxinxi_tupian7.jpg','地区5','站点地址5','13823888885','站点介绍5'),(26,'2023-03-07 03:54:14','站点名称6','服务范围6','upload/zhandianxinxi_tupian6.jpg,upload/zhandianxinxi_tupian7.jpg,upload/zhandianxinxi_tupian8.jpg','地区6','站点地址6','13823888886','站点介绍6'),(27,'2023-03-07 03:54:14','站点名称7','服务范围7','upload/zhandianxinxi_tupian7.jpg,upload/zhandianxinxi_tupian8.jpg,upload/zhandianxinxi_tupian9.jpg','地区7','站点地址7','13823888887','站点介绍7'),(28,'2023-03-07 03:54:14','xx站点','200km','upload/zhandianxinxi_tupian8.jpg','上海','xx地址','13823888888','<p>站点介绍8测试</p>');
/*!40000 ALTER TABLE `zhandianxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 10:30:59
