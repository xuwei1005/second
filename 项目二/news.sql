-- MySQL dump 10.13  Distrib 5.6.33, for Win64 (x86_64)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	5.6.33

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
-- Table structure for table `institution`
--
DROP DATABASE IF EXISTS `news`;
CREATE DATABASE news;
use news;
DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `imgurl` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `updata` date NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (2,'创业邦','55adb1f0922cf.jpg','最懂创业者，离资本最近！','2017-05-31'),(3,'拓荒族','55b18f271faf0.gif','集办公、营销、孵化功能三位一体的企业发展生态圈','2017-05-31'),(4,'洋葱投','55bb29cd76b19.gif','洋葱投致力于为创业者打造一个全方位、宽领域、多元化的床头服务平台。','2017-05-31'),(5,'可可豆创新孵化平台','568cd5343f525.gif','可可豆创新孵化平台隶属于洛可可创新设计集团','2017-05-31'),(6,'中科金','56b2ab8db9bea.jpg','为科技企业提供多元化、多层次、全方位的金融服务','2017-05-31'),(7,'硬派空间','56f35bf25b14c.jpg','硬派空间位于中关村创业大街，由创业大街运营管理公司海置科创创办','2017-05-31'),(8,'车库咖啡','5382d949c32e6.gif','成立于2011年4月，是中关村创业大街上最早的一批创业主体咖啡厅之一','2017-05-31'),(9,'3W','5382d939c6df0.gif','互联网主题馆，旗下包含3W咖啡馆。3W创新传媒、3W孵化器、3W基金、拉钩招聘','2017-05-31'),(10,'Binggo','5382d8f746dae.gif','一家以咖啡喝空间为裁体、利用群智，跨界创新的创新性孵化器!','2017-05-31');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newstreet`
--

DROP TABLE IF EXISTS `newstreet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newstreet` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `updata` date NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newstreet`
--

LOCK TABLES `newstreet` WRITE;
/*!40000 ALTER TABLE `newstreet` DISABLE KEYS */;
INSERT INTO `newstreet` VALUES (1,'中关村创业者瞄准痛点抢先机','53ab76be33b4d.gif','中国第一个国家级高新技术产业开发区、第一个国家自主创新示范区、第一个国家级人才特区，被誉为“中国的硅谷”的中关村经过多年告诉发展，吸引并孕育出一大批拥有自主知识产权的新技术','2017-05-31'),(2,'民革中央建言：搭建青年创业就业服务平台','54b70fdccb3ae.gif','从北京中关村地铁出来再走十分钟，远远就能看到“中关村创业大街”的牌匾。每天，无数怀揣着创业梦想的青年汇聚于此。在全面建成小康社会决胜阶段\r\n','2017-05-31'),(3,'经济参考报：法国创新企业为何青睐中国','55a49695b7894.gif','法国和中国的合作近年来已经不再固于传统领域，开始探索技术创新领域方面的机会。而在创新合作方面，除了活跃着阿尔斯通，法国电力、施耐德等大企业的身影外，不少中小企业同样','2017-05-31'),(4,'人民日报：中关村创新方式助推原始创新','55a463120cdd1.gif','中关村平均每天诞生十多家科技企业，究竟哪家企业拥有重大颠覆性原创核心技术？哪家企业具有新产业的领军潜力，将面向未来、前途无限？两会之前，手握创新创业核心密码的36家“中关村前沿技术企业”在首都北京','2017-05-31'),(5,'中关村创业大街日均孵化1.7个项目','55adb1f0922cf.jpg','中关村创业大街日前亮出开街两年半以来的成绩单：截止2016年12月，这条中国首个规模化聚集创新创业要素的街区已累计孵化1581个创业项目，平均每天孵化1.7','2017-05-31'),(6,'全国共有4298家众创空间发展势头良好','55b18f271faf0.gif','众创空间作为发展新经济，培育新动能和推动实体经济转型升级的重要抓手，激发科技人员和大众的创新创业活力，取得了明显的成绩','2017-05-31'),(7,'李克强总理：以创新引领实体经济转型升级','55bb29cd76b19.gif','3月5日，国务院总理李克强在作政府工作报告时说，以创新引领实体经济转型升级。实体经济从来都是我国发展的根基，当务之急是加快转型升级。要深入实施创新驱动发展战略，推动实体经济优化结构，不断提高质量，效益','2017-05-31'),(8,'法国创新型企业在华“加速”','56b2ab8db9bea.jpg','3月7日下午，北京中关村创业大街汇集了来自法国的5家数字领域的创新型企业代表，这标志着由法国商务投资署（Business France）和法国国家投资银行','2017-05-31');
/*!40000 ALTER TABLE `newstreet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newusers`
--

DROP TABLE IF EXISTS `newusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newusers`
--

LOCK TABLES `newusers` WRITE;
/*!40000 ALTER TABLE `newusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `newusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysuser`
--

DROP TABLE IF EXISTS `sysuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysuser`
--

LOCK TABLES `sysuser` WRITE;
/*!40000 ALTER TABLE `sysuser` DISABLE KEYS */;
INSERT INTO `sysuser` VALUES (1,'tom','admin','110@qq.com'),(3,'jack','admin','120@qq.com'),(5,'','admin','');
/*!40000 ALTER TABLE `sysuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertext`
--

DROP TABLE IF EXISTS `usertext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertext` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `imgurl` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `updata` date NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertext`
--

LOCK TABLES `usertext` WRITE;
/*!40000 ALTER TABLE `usertext` DISABLE KEYS */;
INSERT INTO `usertext` VALUES (1,'【大街访谈】对话Founders Space创始人','bng5.jpg','3月15日，由北京大学创业训练营、中信前沿经济与中关村创业大街联合主办的“创业思奔.硅谷顶级孵化器Founde...”\r\n<ul>\r\n<li><a href=\"http://www.z-innoway.com/index.php?app=web&m=Article&a=detail&id=2674\">看中关村创业大街“总理咖啡”的化学反应</a></li>\r\n<li><a href=\"http://www.z-innoway.com/index.php?app=web&m=Article&a=detail&id=2672\">韩国留学生圆梦创业大街</a></li>\r\n<li><a href=\"http://www.z-innoway.com/index.php?app=web&m=Article&a=detail&id=2673\">北京市八一学校师生到创业大街“串门”</a></li>\r\n<li><a href=\"http://www.z-innoway.com/index.php?app=web&m=Article&a=detail&id=2671\">北京日报：“五四”青年节，青年创业忙</a></li>\r\n<li><a href=\"http://www.z-innoway.com/index.php?app=web&m=Article&a=detail&id=2670\">海淀发力打造知识产权强区，创业大街做好配套服务</a></li>\r\n<li><a href=\"http://www.z-innoway.com/index.php?app=web&m=Article&a=detail&id=2669\">中关村知识产权帮扶计划在创业大街启动</a></li>\r\n</ul>','2017-05-31'),(2,'中关村创业者瞄准痛点抢先机','58abb87502963.jpg','中国第一个国家级高新技术产业开发区、第一个国家自主创新示范区、第一个国家级人才特区，被誉为“中国的硅谷”的中关村经过多年告诉发展，吸引并孕育出一大批拥有自主知识产权的新技术\r\n','2017-05-31'),(3,'民革中央建言：搭建青年创业就业服务平台','58abb87502963.jpg','从北京中关村地铁出来再走十分钟，远远就能看到“中关村创业大街”的牌匾。每天，无数怀揣着创业梦想的青年汇聚于此。在全面建成小康社会决胜阶段\r\n','2017-05-31'),(4,'经济参考报：法国创新企业为何青睐中国','58abb87502963.jpg','法国和中国的合作近年来已经不再固于传统领域，开始探索技术创新领域方面的机会。而在创新合作方面，除了活跃着阿尔斯通，法国电力、施耐德等大企业的身影外，不少中小企业同样\r\n','2017-05-31'),(5,'人民日报：中关村创新方式助推原始创新','58abb87502963.jpg','中关村平均每天诞生十多家科技企业，究竟哪家企业拥有重大颠覆性原创核心技术？哪家企业具有新产业的领军潜力，将面向未来、前途无限？两会之前，手握创新创业核心密码的36家“中关村前沿技术企业”在首都北京\r\n','2017-05-31'),(6,'中关村创业大街日均孵化1.7个项目','58abb87502963.jpg','中关村创业大街日前亮出开街两年半以来的成绩单：截止2016年12月，这条中国首个规模化聚集创新创业要素的街区已累计孵化1581个创业项目，平均每天孵化1.7','2017-05-31'),(7,'全国共有4298家众创空间发展势头良好','58abb87502963.jpg','众创空间作为发展新经济，培育新动能和推动实体经济转型升级的重要抓手，激发科技人员和大众的创新创业活力，取得了明显的成绩\r\n','2017-05-31'),(8,'李克强总理：以创新引领实体经济转型升级','58abb87502963.jpg','3月5日，国务院总理李克强在作政府工作报告时说，以创新引领实体经济转型升级。实体经济从来都是我国发展的根基，当务之急是加快转型升级。要深入实施创新驱动发展战略，推动实体经济优化结构，不断提高质量，效益','2017-05-31');
/*!40000 ALTER TABLE `usertext` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-02 11:49:52
