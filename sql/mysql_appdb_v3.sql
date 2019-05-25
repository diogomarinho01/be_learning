-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: appdb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `tbl_item_projeto`
--

LOCK TABLES `tbl_item_projeto` WRITE;
/*!40000 ALTER TABLE `tbl_item_projeto` DISABLE KEYS */;
INSERT INTO `tbl_item_projeto` VALUES (16,'novo item','Descricao',16,'2019-04-30 21:40:30'),(18,'ddd','ddd',15,'2019-05-01 12:12:45'),(19,'1','Descricao',20,'2019-05-01 12:14:25'),(20,'2','Descricao',20,'2019-05-01 12:14:30'),(22,'item novo','Descricao',19,'2019-05-01 12:18:38'),(27,'ddd','ddd',15,'2019-05-04 11:39:13'),(41,'Item Novo','Descricao Item Novo',21,'2019-05-04 12:24:53'),(43,'imagine','uma coisa e faca',21,'2019-05-05 18:36:47'),(73,'Item novo','teste',22,'2019-05-24 21:51:04'),(74,'novo item','item novo',22,'2019-05-24 23:02:57'),(79,'opaopa','opaoasasdksaksadkjdsajklsadjkdsakjdsajksdakjsdksadl sadasdkldasksaklsadkjsdajksadkjsdakjsdakjsadkjlasdjkl sajkasdksdakljsakjadsjklasdkjlasdkjlsadljkasdkjlsadkjldas dasjklasksadjkasdjksajklsaljksadjkl',22,'2019-05-24 23:50:11');
/*!40000 ALTER TABLE `tbl_item_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_projeto`
--

LOCK TABLES `tbl_projeto` WRITE;
/*!40000 ALTER TABLE `tbl_projeto` DISABLE KEYS */;
INSERT INTO `tbl_projeto` VALUES (15,'Python Fundamentos','Basico de Python',8,'aprender sintax, conexoes, bd, objetos, metodos, poo','2019-04-30 20:04:21','2019-05-03 00:42:53',1,0),(16,'Meu projeto python','python',8,'python','2019-04-30 21:37:19','2019-05-03 00:42:43',1,0),(17,'Meu projeto','aprendendo',8,'sobre a vida','2019-05-01 11:49:06','2019-05-03 00:42:10',1,0),(18,'outro projeto','projeto 2',8,'opa','2019-05-01 12:00:05','2019-05-03 00:42:01',1,0),(19,'projeto 3','projeto 3',8,'PROJETO 3','2019-05-01 12:10:26','2019-05-03 00:31:25',1,0),(20,'PROJETO NOVO 4','P4',9,'P4','2019-05-01 12:14:01','2019-05-18 11:37:05',0,1),(21,'Novo Projeto','Projeto Final',8,'Faculdade','2019-05-03 00:43:40',NULL,1,0),(22,'Python Fundamentos para Ciencia de Dados','aprender estruturas, variaveis, tipos, classes, etc',8,'Apender o basico de python','2019-05-05 18:56:09',NULL,0,1),(23,'qw','qw',8,'qw','2019-05-18 11:02:58',NULL,1,1);
/*!40000 ALTER TABLE `tbl_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_projeto_views`
--

LOCK TABLES `tbl_projeto_views` WRITE;
/*!40000 ALTER TABLE `tbl_projeto_views` DISABLE KEYS */;
INSERT INTO `tbl_projeto_views` VALUES (1,15,8,'2019-04-30 21:12:31'),(2,15,9,'2019-04-30 21:12:39'),(4,15,8,'2019-04-30 21:12:49'),(8,15,9,'2019-04-30 21:19:42'),(9,15,9,'2019-04-30 21:19:52'),(23,15,8,'2019-04-30 21:23:23'),(24,15,8,'2019-04-30 21:23:43'),(25,15,8,'2019-04-30 21:24:04'),(26,15,8,'2019-04-30 21:29:41'),(27,16,8,'2019-04-30 21:40:16'),(28,16,8,'2019-04-30 21:40:30'),(29,16,8,'2019-04-30 21:41:27'),(30,17,8,'2019-05-01 11:49:57'),(31,17,8,'2019-05-01 11:50:10'),(32,17,8,'2019-05-01 11:51:00'),(33,17,8,'2019-05-01 11:55:26'),(34,17,8,'2019-05-01 11:55:38'),(35,17,8,'2019-05-01 11:55:49'),(36,17,8,'2019-05-01 11:57:30'),(37,17,8,'2019-05-01 11:57:40'),(38,17,8,'2019-05-01 11:58:05'),(39,17,8,'2019-05-01 11:59:08'),(40,16,8,'2019-05-01 11:59:13'),(41,17,8,'2019-05-01 11:59:32'),(42,17,8,'2019-05-01 12:09:57'),(43,18,8,'2019-05-01 12:10:11'),(44,19,8,'2019-05-01 12:10:26'),(45,15,8,'2019-05-01 12:12:15'),(46,15,8,'2019-05-01 12:12:27'),(47,15,8,'2019-05-01 12:12:31'),(48,15,8,'2019-05-01 12:12:34'),(49,15,8,'2019-05-01 12:12:45'),(50,17,8,'2019-05-01 12:13:38'),(51,20,8,'2019-05-01 12:14:01'),(52,20,8,'2019-05-01 12:14:14'),(53,20,8,'2019-05-01 12:14:25'),(54,20,8,'2019-05-01 12:14:30'),(55,20,8,'2019-05-01 12:14:34'),(56,20,8,'2019-05-01 12:15:54'),(57,20,8,'2019-05-01 12:17:41'),(58,20,8,'2019-05-01 12:17:56'),(59,19,8,'2019-05-01 12:18:32'),(60,19,8,'2019-05-01 12:18:38'),(61,19,8,'2019-05-01 12:20:20'),(62,20,8,'2019-05-01 12:40:35'),(63,20,8,'2019-05-01 12:40:52'),(64,20,8,'2019-05-02 23:44:17'),(65,19,8,'2019-05-02 23:44:31'),(66,19,8,'2019-05-02 23:44:44'),(67,19,8,'2019-05-02 23:44:54'),(68,19,8,'2019-05-03 00:01:33'),(69,19,8,'2019-05-03 00:32:48'),(70,21,8,'2019-05-03 00:43:40'),(71,21,8,'2019-05-03 00:43:55'),(72,21,8,'2019-05-03 00:44:02'),(73,18,8,'2019-05-03 00:44:17'),(74,21,8,'2019-05-03 00:46:06'),(75,19,8,'2019-05-03 00:46:20'),(76,19,8,'2019-05-03 00:47:03'),(77,19,8,'2019-05-03 00:47:41'),(78,19,8,'2019-05-03 00:49:31'),(79,19,8,'2019-05-03 00:49:41'),(80,19,8,'2019-05-03 00:49:54'),(81,19,8,'2019-05-03 00:51:02'),(82,19,8,'2019-05-03 00:52:52'),(83,19,8,'2019-05-03 00:53:02'),(84,19,8,'2019-05-03 00:53:15'),(85,21,8,'2019-05-03 00:53:20'),(86,20,8,'2019-05-03 21:08:29'),(87,20,8,'2019-05-03 21:08:34'),(88,20,8,'2019-05-03 21:09:47'),(89,20,8,'2019-05-03 21:10:16'),(90,19,8,'2019-05-03 21:11:11'),(91,19,8,'2019-05-03 21:15:41'),(92,21,8,'2019-05-03 21:15:45'),(93,21,8,'2019-05-03 21:16:31'),(94,21,8,'2019-05-03 21:18:49'),(95,21,8,'2019-05-03 21:20:16'),(96,21,8,'2019-05-03 21:20:17'),(97,21,8,'2019-05-03 21:20:54'),(98,21,8,'2019-05-03 21:23:24'),(99,21,8,'2019-05-03 21:26:49'),(100,21,8,'2019-05-03 21:26:51'),(101,21,8,'2019-05-03 21:26:58'),(102,21,8,'2019-05-03 21:28:33'),(103,21,8,'2019-05-03 21:28:57'),(104,21,8,'2019-05-03 21:31:58'),(105,21,8,'2019-05-03 21:37:00'),(106,21,8,'2019-05-03 21:37:02'),(107,21,8,'2019-05-03 21:37:03'),(108,21,8,'2019-05-03 21:37:06'),(109,21,8,'2019-05-03 21:38:00'),(110,18,8,'2019-05-03 21:38:37'),(111,21,8,'2019-05-03 21:39:06'),(112,21,8,'2019-05-03 21:43:27'),(113,21,8,'2019-05-03 21:43:29'),(114,21,8,'2019-05-03 21:44:18'),(115,21,8,'2019-05-03 21:44:50'),(116,21,8,'2019-05-03 21:45:32'),(117,21,8,'2019-05-03 21:46:09'),(118,21,8,'2019-05-03 21:54:46'),(119,21,8,'2019-05-03 21:55:19'),(120,21,8,'2019-05-03 22:05:45'),(121,21,8,'2019-05-03 22:06:26'),(122,20,8,'2019-05-03 22:06:39'),(123,21,8,'2019-05-03 22:06:43'),(124,21,8,'2019-05-03 22:10:45'),(125,21,8,'2019-05-03 22:11:18'),(126,21,8,'2019-05-03 22:12:44'),(127,21,8,'2019-05-04 10:49:35'),(128,21,8,'2019-05-04 10:51:39'),(129,21,8,'2019-05-04 10:52:04'),(130,21,8,'2019-05-04 10:53:12'),(131,21,8,'2019-05-04 10:53:35'),(132,21,8,'2019-05-04 11:20:08'),(133,21,8,'2019-05-04 11:21:15'),(134,21,8,'2019-05-04 11:23:49'),(135,21,8,'2019-05-04 11:23:55'),(136,21,8,'2019-05-04 11:40:14'),(137,21,8,'2019-05-04 11:40:29'),(138,21,8,'2019-05-04 11:40:43'),(139,21,8,'2019-05-04 11:40:53'),(140,21,8,'2019-05-04 11:42:02'),(141,21,8,'2019-05-04 11:46:15'),(142,21,8,'2019-05-04 11:46:58'),(143,21,8,'2019-05-04 11:47:01'),(144,21,8,'2019-05-04 11:54:03'),(145,21,8,'2019-05-04 11:54:15'),(146,21,8,'2019-05-04 11:54:30'),(147,21,8,'2019-05-04 11:54:44'),(148,21,8,'2019-05-04 11:55:54'),(149,21,8,'2019-05-04 11:56:01'),(150,21,8,'2019-05-04 11:56:14'),(151,21,8,'2019-05-04 12:00:01'),(152,21,8,'2019-05-04 12:00:42'),(153,21,8,'2019-05-04 12:01:21'),(154,21,8,'2019-05-04 12:01:31'),(155,21,8,'2019-05-04 12:09:08'),(156,21,8,'2019-05-04 12:09:20'),(157,21,8,'2019-05-04 12:11:00'),(158,21,8,'2019-05-04 12:11:08'),(159,21,8,'2019-05-04 12:11:19'),(160,21,8,'2019-05-04 12:17:56'),(161,21,8,'2019-05-04 12:18:18'),(162,21,8,'2019-05-04 12:19:46'),(163,21,8,'2019-05-04 12:19:54'),(164,21,8,'2019-05-04 12:23:35'),(165,21,8,'2019-05-04 12:23:49'),(166,21,8,'2019-05-04 12:24:03'),(167,21,8,'2019-05-04 12:24:12'),(168,21,8,'2019-05-04 12:24:15'),(169,21,8,'2019-05-04 12:24:18'),(170,21,8,'2019-05-04 12:24:20'),(171,21,8,'2019-05-04 12:24:22'),(172,21,8,'2019-05-04 12:24:24'),(173,21,8,'2019-05-04 12:24:26'),(174,21,8,'2019-05-04 12:24:27'),(175,21,8,'2019-05-04 12:24:27'),(176,21,8,'2019-05-04 12:24:28'),(177,21,8,'2019-05-04 12:24:29'),(178,21,8,'2019-05-04 12:24:30'),(179,21,8,'2019-05-04 12:24:31'),(180,21,8,'2019-05-04 12:24:34'),(181,21,8,'2019-05-04 12:24:35'),(182,21,8,'2019-05-04 12:24:53'),(183,21,8,'2019-05-04 12:26:29'),(184,21,8,'2019-05-04 12:28:40'),(185,20,8,'2019-05-05 17:41:30'),(186,17,8,'2019-05-05 17:41:58'),(187,21,8,'2019-05-05 17:43:26'),(188,19,8,'2019-05-05 18:17:29'),(189,20,8,'2019-05-05 18:32:35'),(190,21,8,'2019-05-05 18:33:13'),(191,21,8,'2019-05-05 18:33:35'),(192,21,8,'2019-05-05 18:34:14'),(193,21,8,'2019-05-05 18:34:56'),(194,21,8,'2019-05-05 18:36:47'),(195,21,8,'2019-05-05 18:37:03'),(196,21,8,'2019-05-05 18:37:31'),(197,21,8,'2019-05-05 18:37:55'),(198,21,8,'2019-05-05 18:38:02'),(199,21,8,'2019-05-05 18:47:06'),(200,15,8,'2019-05-05 18:49:07'),(201,20,8,'2019-05-05 18:53:59'),(202,22,8,'2019-05-05 18:56:09'),(203,22,8,'2019-05-05 18:57:23'),(204,22,8,'2019-05-05 18:58:08'),(205,22,8,'2019-05-05 18:58:27'),(206,22,8,'2019-05-05 18:58:37'),(207,22,8,'2019-05-05 18:58:42'),(208,22,8,'2019-05-05 18:58:58'),(209,22,8,'2019-05-05 18:59:31'),(210,22,8,'2019-05-05 18:59:34'),(211,22,8,'2019-05-05 18:59:37'),(212,22,8,'2019-05-05 18:59:42'),(213,22,8,'2019-05-05 19:00:01'),(214,22,8,'2019-05-05 19:00:21'),(215,22,8,'2019-05-05 19:02:28'),(216,22,8,'2019-05-05 19:02:40'),(217,22,8,'2019-05-05 19:02:43'),(218,22,8,'2019-05-05 19:02:46'),(219,22,8,'2019-05-05 19:03:11'),(220,22,8,'2019-05-05 19:03:23'),(221,22,8,'2019-05-05 19:03:35'),(222,22,8,'2019-05-05 19:03:45'),(223,22,8,'2019-05-05 19:04:18'),(224,20,8,'2019-05-06 20:20:43'),(225,22,8,'2019-05-06 20:21:04'),(226,22,8,'2019-05-06 20:21:07'),(227,22,8,'2019-05-06 20:21:08'),(228,22,8,'2019-05-06 20:21:09'),(229,22,8,'2019-05-06 20:21:22'),(230,22,8,'2019-05-06 20:25:07'),(231,22,8,'2019-05-06 20:25:11'),(232,22,8,'2019-05-06 20:25:27'),(233,22,8,'2019-05-06 20:27:03'),(234,22,8,'2019-05-06 20:27:05'),(235,22,8,'2019-05-06 20:27:17'),(236,22,8,'2019-05-06 20:28:06'),(237,22,8,'2019-05-06 20:28:08'),(238,22,8,'2019-05-06 20:28:19'),(239,22,8,'2019-05-06 20:29:38'),(240,22,8,'2019-05-06 20:29:40'),(241,22,8,'2019-05-06 20:29:50'),(242,22,8,'2019-05-06 20:35:25'),(243,22,8,'2019-05-06 20:37:01'),(244,22,8,'2019-05-06 20:41:15'),(245,22,8,'2019-05-06 20:41:17'),(246,22,8,'2019-05-06 20:41:19'),(247,22,8,'2019-05-06 21:02:43'),(248,22,8,'2019-05-06 21:03:03'),(249,22,8,'2019-05-06 21:03:05'),(250,22,8,'2019-05-06 21:03:05'),(251,22,8,'2019-05-06 21:03:08'),(252,22,8,'2019-05-06 21:03:10'),(253,22,8,'2019-05-06 21:03:15'),(254,22,8,'2019-05-06 21:03:25'),(255,22,8,'2019-05-06 21:03:28'),(256,22,8,'2019-05-06 21:03:37'),(257,22,8,'2019-05-06 21:04:39'),(258,22,8,'2019-05-06 21:05:07'),(259,22,8,'2019-05-06 21:05:40'),(260,22,8,'2019-05-06 21:05:52'),(261,22,8,'2019-05-06 21:06:19'),(262,22,8,'2019-05-06 21:07:43'),(263,22,8,'2019-05-06 21:09:05'),(264,22,8,'2019-05-06 21:09:31'),(265,22,8,'2019-05-06 21:10:15'),(266,22,8,'2019-05-06 21:10:28'),(267,22,8,'2019-05-06 21:10:31'),(268,22,8,'2019-05-06 21:12:09'),(269,22,8,'2019-05-06 21:17:04'),(270,22,8,'2019-05-06 21:17:22'),(271,22,8,'2019-05-06 21:18:11'),(272,22,8,'2019-05-06 21:18:26'),(273,22,8,'2019-05-06 21:20:27'),(274,22,8,'2019-05-06 21:25:24'),(275,22,8,'2019-05-06 21:25:25'),(276,22,8,'2019-05-06 21:27:19'),(277,22,8,'2019-05-06 21:27:29'),(278,22,8,'2019-05-06 21:27:30'),(279,22,8,'2019-05-06 21:27:30'),(280,22,8,'2019-05-06 21:27:30'),(281,22,8,'2019-05-06 21:27:31'),(282,22,8,'2019-05-06 21:27:31'),(283,22,8,'2019-05-06 21:27:31'),(284,22,8,'2019-05-06 21:27:33'),(285,22,8,'2019-05-06 21:29:21'),(286,22,8,'2019-05-06 21:29:35'),(287,22,8,'2019-05-06 21:31:19'),(288,22,8,'2019-05-06 21:31:20'),(289,22,8,'2019-05-06 21:32:47'),(290,22,8,'2019-05-06 21:39:32'),(291,22,8,'2019-05-06 21:39:54'),(292,22,8,'2019-05-06 21:40:00'),(293,22,8,'2019-05-06 21:43:02'),(294,22,8,'2019-05-06 21:44:20'),(295,22,8,'2019-05-06 21:46:23'),(296,22,8,'2019-05-06 21:49:41'),(297,22,8,'2019-05-06 21:53:13'),(298,22,8,'2019-05-06 21:53:32'),(299,22,8,'2019-05-11 21:54:36'),(300,22,8,'2019-05-11 21:55:26'),(301,22,8,'2019-05-11 21:55:55'),(302,22,8,'2019-05-11 23:37:02'),(303,22,8,'2019-05-16 21:13:21'),(304,20,8,'2019-05-16 21:29:46'),(305,22,8,'2019-05-16 21:29:56'),(306,22,8,'2019-05-18 11:00:34'),(307,22,8,'2019-05-18 11:00:57'),(308,22,8,'2019-05-18 11:01:01'),(309,23,8,'2019-05-18 11:02:58'),(311,22,8,'2019-05-18 11:24:01'),(312,22,8,'2019-05-18 11:24:05'),(313,22,8,'2019-05-18 11:24:07'),(314,22,9,'2019-05-18 11:36:50'),(315,20,9,'2019-05-18 11:37:11'),(316,22,8,'2019-05-18 18:43:25'),(317,22,8,'2019-05-24 21:36:48'),(318,22,8,'2019-05-24 21:37:20'),(319,22,8,'2019-05-24 21:37:34'),(320,22,8,'2019-05-24 21:37:48'),(321,22,8,'2019-05-24 21:42:35'),(322,22,8,'2019-05-24 21:45:04'),(323,22,8,'2019-05-24 21:48:18'),(324,22,8,'2019-05-24 21:50:47'),(325,22,8,'2019-05-24 21:51:16'),(326,22,8,'2019-05-24 22:51:37'),(327,22,8,'2019-05-24 23:00:05'),(328,22,8,'2019-05-24 23:01:40'),(329,22,8,'2019-05-24 23:01:52'),(330,22,8,'2019-05-24 23:02:26'),(331,22,8,'2019-05-24 23:02:57'),(332,22,8,'2019-05-24 23:03:55'),(333,22,8,'2019-05-24 23:05:44'),(334,22,8,'2019-05-24 23:05:55'),(335,22,8,'2019-05-24 23:06:47'),(336,22,8,'2019-05-24 23:07:40'),(337,22,8,'2019-05-24 23:09:05'),(338,22,8,'2019-05-24 23:10:05'),(339,22,8,'2019-05-24 23:11:13'),(340,22,8,'2019-05-24 23:13:02'),(341,22,8,'2019-05-24 23:13:04'),(342,22,8,'2019-05-24 23:13:13'),(343,22,8,'2019-05-24 23:13:27'),(344,22,8,'2019-05-24 23:14:18'),(345,22,8,'2019-05-24 23:14:34'),(346,22,8,'2019-05-24 23:17:13'),(347,22,8,'2019-05-24 23:17:38'),(348,22,8,'2019-05-24 23:17:52'),(349,22,8,'2019-05-24 23:19:07'),(350,22,8,'2019-05-24 23:19:09'),(351,22,8,'2019-05-24 23:19:12'),(352,22,8,'2019-05-24 23:19:14'),(353,22,8,'2019-05-24 23:21:58'),(354,22,8,'2019-05-24 23:22:14'),(355,22,8,'2019-05-24 23:23:20'),(356,22,8,'2019-05-24 23:23:50'),(357,22,8,'2019-05-24 23:24:12'),(358,22,8,'2019-05-24 23:24:22'),(359,22,8,'2019-05-24 23:24:47'),(360,22,8,'2019-05-24 23:25:19'),(361,22,8,'2019-05-24 23:29:18'),(362,22,8,'2019-05-24 23:31:48'),(363,22,8,'2019-05-24 23:31:57'),(364,22,8,'2019-05-24 23:32:03'),(365,22,8,'2019-05-24 23:36:58'),(366,22,8,'2019-05-24 23:38:09'),(367,22,8,'2019-05-24 23:38:55'),(368,22,8,'2019-05-24 23:40:18'),(369,22,8,'2019-05-24 23:44:15'),(370,22,8,'2019-05-24 23:44:52'),(371,22,8,'2019-05-24 23:47:39'),(372,22,8,'2019-05-24 23:50:11'),(373,22,8,'2019-05-24 23:50:31'),(374,22,8,'2019-05-24 23:50:37'),(375,22,8,'2019-05-24 23:51:12'),(376,22,8,'2019-05-24 23:52:08');
/*!40000 ALTER TABLE `tbl_projeto_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_site`
--

LOCK TABLES `tbl_site` WRITE;
/*!40000 ALTER TABLE `tbl_site` DISABLE KEYS */;
INSERT INTO `tbl_site` VALUES (1,'2019-05-25 01:33:43','nome do site','vivendo e aprendendo');
/*!40000 ALTER TABLE `tbl_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (8,'diogo marinho','diogo.marinho01@gmail.com','pbkdf2:sha256:50000$NBUKSOls$16b4647fc9722cc207e7fdb36aa2373f262596e68cdd77a1d8803b6fbe4f18e1','2019-04-30 19:58:05'),(9,'Yasmin Marinho','yasmin.marinho01@gmail.com','pbkdf2:sha256:50000$56okU9rN$11ad03de9e60503a12c86d1e32e76e11db18e28ab7e6c37cc64f29630bb970d7','2019-04-30 19:59:44');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'appdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_concluirProjeto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_concluirProjeto`(
    IN p_proj_id integer
)
BEGIN
     
        update appdb.tbl_projeto set ts_conclusao = now() where proj_id = p_proj_id;
        
		select 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_createItemProject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_createItemProject`(
    IN p_nome VARCHAR(45),
    IN p_descricao VARCHAR(200),
    IN p_proj_id integer,
    IN p_item_id integer
)
BEGIN
     
	if p_item_id is not null and p_item_id > 0 then
		update tbl_item_projeto set nome = p_nome, descricao = p_descricao where item_id = p_item_id;
        
        select p_item_id;
	else
        insert into tbl_item_projeto
        (
            proj_id,
            nome,
            descricao
        )
        values
        (
            p_proj_id,
            p_nome,
            p_descricao
        );
        
		select max(item_id) from tbl_item_projeto;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_createProject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_createProject`(
    IN p_nome VARCHAR(45),
    IN p_descricao VARCHAR(100),
    IN p_objetivo VARCHAR(200),
    IN p_user_id integer
)
BEGIN
     
        insert into tbl_projeto
        (
            user_id,
            proj_nome,
            proj_descricao,
            proj_objetivo
        )
        values
        (
            p_user_id,
            p_nome,
            p_descricao,
            p_objetivo
        );
        
        select max(proj_id) from appdb.tbl_projeto;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_createSite` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_createSite`(
    IN p_name VARCHAR(45),
    IN p_mensagem VARCHAR(100)
)
BEGIN
		truncate table tbl_site;
        insert into tbl_site
        (
            nome,
            mensagem
        )
        values
        (
            p_name,
            p_mensagem
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_createUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_createUser`(
    IN p_name VARCHAR(45),
    IN p_email VARCHAR(45),
    IN p_password VARCHAR(100)
)
BEGIN
    if ( select exists (select 1 from tbl_user where user_email = p_email) ) THEN
     
        select 'User Existe !!';
     
    ELSE
     
        insert into tbl_user
        (
            user_name,
            user_email,
            user_password
        )
        values
        (
            p_name,
            p_email,
            p_password
        );
     
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_excluiItemProjeto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_excluiItemProjeto`(
    IN p_item_id integer
)
BEGIN
     
        delete from appdb.tbl_item_projeto where item_id = p_item_id;
        
		select 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_excluirProjeto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_excluirProjeto`(
    IN p_proj_id integer
)
BEGIN
     
        update appdb.tbl_projeto set flag_exclusao = 1 where proj_id = p_proj_id;
        
		select 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetDataItemProject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_GetDataItemProject`(
    IN p_item_id integer
)
BEGIN
        select * from tbl_item_projeto where item_id = p_item_id order by ts_insercao desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetDataItensProject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_GetDataItensProject`(
    IN p_proj_id integer
)
BEGIN
    if ( select exists (select 1 from tbl_item_projeto where proj_id = p_proj_id) ) THEN
     
        select * from tbl_item_projeto where proj_id = p_proj_id order by ts_insercao desc;
     
    ELSE
		select 'nenhum projeto';
     
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetDataProjects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_GetDataProjects`(
    IN p_proj_id integer,
    IN p_user_id integer
)
BEGIN
    if ( select exists (select 1 from tbl_projeto where proj_id = p_proj_id) ) THEN
     
		insert into tbl_projeto_views(proj_id,user_id) values (p_proj_id,p_user_id);
        commit;
     
        select * from tbl_projeto where proj_id = p_proj_id order by ts_insercao desc;
             
    ELSE
		select 'nenhum projeto';
     
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSite` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_GetSite`()
BEGIN
	select * from appdb.tbl_site;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetUserProjects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_GetUserProjects`(
    IN p_user_id integer
)
BEGIN
    if ( select exists (select 1 from tbl_projeto where user_id = p_user_id and flag_exclusao = 0) ) THEN
     
        select * from tbl_projeto where user_id = p_user_id and flag_exclusao = 0;
     
    ELSE
		select 'nenhum projeto';
     
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_GetUsers`()
BEGIN
SELECT a.user_id,a.user_name, a.user_email, a.user_password,a.ts_insercao,
sum(coalesce(qtd_projetos,0))as qtd_projetos,
sum(coalesce(qtd_itens,0)) as qtd_itens,
sum(coalesce(qtd_consultas,0)) as qtd_consultas FROM appdb.tbl_user a
left join (select a.user_id,count(distinct a.proj_id) qtd_projetos,count(distinct item_id)qtd_itens from appdb.tbl_projeto a 
			left join appdb.tbl_item_projeto as b on a.proj_id = b.proj_id
            where a.flag_exclusao = 0
            group by a.user_id
			) b on a.user_id = b.user_id
left join (select a.user_id,count(distinct view_id)qtd_consultas from appdb.tbl_projeto a 
			left join appdb.tbl_projeto_views as b on a.proj_id = b.proj_id
            where a.flag_exclusao = 0
            group by a.user_id
			) c on a.user_id = c.user_id            
group by a.user_id,a.user_name, a.user_email, a.user_password,a.ts_insercao;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_validaAcesso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_validaAcesso`(
    IN p_email VARCHAR(45)
)
BEGIN
    if ( select exists (select user_password from tbl_user where user_email = p_email) ) THEN
     
        select * from tbl_user where user_email = p_email;
     
    ELSE
     
        select 'Acesso Negado !!';
     
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visibilidadeProjeto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`app_user`@`localhost` PROCEDURE `sp_visibilidadeProjeto`(
    IN p_proj_id integer,
    IN p_visibilidade bool
)
BEGIN
     
        update appdb.tbl_projeto set flag_privado = p_visibilidade where proj_id = p_proj_id;
        
		select 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-25  1:43:07
