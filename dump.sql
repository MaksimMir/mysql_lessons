-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='grupps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'quidem','1978-07-20 11:53:42','1988-05-21 06:33:47'),(2,'aut','2003-12-16 09:02:17','2021-02-16 17:49:00'),(3,'sapiente','2011-11-20 21:27:28','2021-02-16 17:49:00'),(4,'et','1991-06-12 12:05:07','2021-02-16 17:49:00'),(5,'quia','1988-09-03 07:13:30','2008-01-13 23:37:50'),(6,'culpa','2005-10-29 15:41:20','2021-02-16 17:49:00'),(7,'perferendis','1979-11-11 13:01:45','2021-02-16 17:49:00'),(8,'dolor','2011-02-28 11:55:32','2021-02-16 17:49:00'),(9,'voluptas','2004-03-19 04:12:14','2021-02-16 17:49:00'),(10,'illo','2007-01-29 08:21:08','2021-02-16 17:49:00'),(11,'placeat','1985-10-31 11:28:34','2014-02-02 06:17:16'),(12,'beatae','2011-09-24 10:35:33','2013-11-16 22:10:39'),(13,'eaque','1993-06-24 11:45:14','2021-02-16 17:49:00'),(14,'libero','1992-10-12 18:22:54','2019-03-29 12:07:57'),(15,'nobis','2009-03-13 17:15:42','2021-02-16 17:49:00'),(16,'ratione','1974-05-31 04:06:09','2005-01-13 16:07:28'),(17,'pariatur','2017-09-04 07:12:40','2021-02-16 17:49:00'),(18,'distinctio','2006-09-22 22:23:56','2021-02-16 17:49:00'),(19,'quo','1972-07-17 14:44:33','2020-07-17 01:54:35'),(20,'mollitia','1977-01-17 12:45:41','2021-02-16 17:49:00');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `user_id` int unsigned NOT NULL,
  `community_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,3,'1971-02-10 05:18:24'),(2,11,'1986-10-22 04:43:07'),(3,8,'1996-07-06 12:46:02'),(4,6,'2017-09-21 18:59:34'),(5,4,'1992-01-25 15:54:56'),(6,2,'1986-05-11 12:08:00'),(7,18,'2020-03-14 17:15:38'),(8,2,'2005-03-16 20:07:26'),(9,16,'1984-07-22 08:33:36'),(10,13,'1991-12-18 19:53:48'),(11,15,'1981-04-18 04:10:31'),(12,18,'1987-04-21 17:13:15'),(13,5,'1984-03-05 21:17:58'),(14,8,'1977-09-08 08:44:45'),(15,8,'2001-07-16 20:47:40'),(16,12,'2011-03-17 05:45:58'),(17,16,'1998-10-04 08:11:33'),(18,2,'1985-02-09 20:49:32'),(19,4,'1997-07-10 14:07:12'),(20,14,'1983-08-19 05:44:49'),(21,17,'2009-08-13 00:37:47'),(22,4,'2016-11-19 06:15:42'),(23,8,'1978-04-26 03:09:56'),(24,6,'2016-11-30 10:18:51'),(25,5,'1996-05-08 07:14:47'),(26,6,'1976-03-06 08:55:16'),(27,17,'2016-03-14 22:08:33'),(28,6,'1990-07-12 03:19:39'),(29,18,'1992-10-27 16:59:34'),(30,13,'1984-10-21 07:29:10'),(31,10,'2007-06-22 06:54:50'),(32,10,'2006-11-20 00:03:06'),(33,18,'2019-04-11 20:33:16'),(34,3,'1994-05-06 01:41:00'),(35,18,'2020-07-26 22:21:40'),(36,20,'1971-04-10 15:38:33'),(37,7,'2011-08-21 17:52:54'),(38,14,'1971-09-04 23:44:35'),(39,7,'1991-03-23 11:57:59'),(40,12,'2002-04-07 15:48:29'),(41,19,'1978-04-19 17:22:08'),(42,20,'2006-01-12 02:21:19'),(43,2,'1993-01-29 22:21:22'),(44,10,'1988-03-28 12:55:44'),(45,5,'1984-11-15 12:59:13'),(46,13,'2013-09-13 02:07:07'),(47,11,'1999-02-22 09:13:27'),(48,14,'1981-10-21 20:32:01'),(49,16,'1987-08-07 22:55:48'),(50,18,'2010-09-30 04:20:20'),(51,3,'1980-12-14 21:08:10'),(52,19,'1998-11-01 05:08:44'),(53,6,'1981-09-19 13:47:28'),(54,14,'1973-01-16 13:49:16'),(55,10,'1979-02-08 16:00:53'),(56,6,'1990-10-07 10:50:46'),(57,2,'1971-01-11 20:23:54'),(58,12,'2016-11-30 19:07:49'),(59,14,'1992-04-08 18:18:42'),(60,12,'2011-12-13 02:02:06'),(61,17,'1993-05-17 21:46:12'),(62,10,'2006-12-12 23:26:44'),(63,17,'1993-01-09 22:46:20'),(64,13,'1986-03-02 07:28:24'),(65,17,'1971-07-20 21:03:29'),(66,4,'2012-08-15 07:10:37'),(67,8,'1974-09-20 00:33:24'),(68,9,'2006-09-13 15:30:10'),(69,18,'2011-01-04 05:14:04'),(70,4,'1990-11-01 17:22:31'),(71,7,'2009-11-10 01:18:50'),(72,2,'2003-08-08 00:17:53'),(73,8,'2012-03-13 16:20:53'),(74,13,'1983-10-25 01:38:48'),(75,1,'2007-07-01 13:10:16'),(76,4,'1996-08-02 19:14:58'),(77,17,'1974-05-18 18:49:42'),(78,12,'1983-11-24 21:56:05'),(79,11,'2000-07-03 02:21:18'),(80,16,'1972-01-18 23:08:10'),(81,5,'2019-07-09 06:05:40'),(82,19,'2017-06-03 12:47:52'),(83,18,'1998-03-09 17:55:16'),(84,14,'2013-05-24 18:07:56'),(85,15,'1971-08-13 06:47:55'),(86,11,'2008-11-08 18:27:59'),(87,11,'1992-03-27 14:43:28'),(88,20,'1994-01-16 08:05:22'),(89,9,'1980-02-17 08:38:15'),(90,5,'1993-11-14 17:52:10'),(91,15,'1982-07-14 22:57:39'),(92,1,'2014-10-10 12:04:44'),(93,19,'1989-11-20 12:16:30'),(94,12,'1995-01-31 05:19:41'),(95,3,'2018-09-27 03:38:28'),(96,19,'1995-12-09 17:23:28'),(97,7,'2008-09-22 00:56:44'),(98,14,'1989-12-26 06:04:34'),(99,12,'1982-12-23 05:38:00'),(100,16,'2008-10-13 06:42:45');
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendeship`
--

DROP TABLE IF EXISTS `friendeship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendeship` (
  `user_id` int unsigned NOT NULL,
  `friend_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendeship`
--

LOCK TABLES `friendeship` WRITE;
/*!40000 ALTER TABLE `friendeship` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendeship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int unsigned NOT NULL,
  `friend_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (1,54,3,'2021-02-16 17:22:33','1994-05-19 01:11:56','2021-02-16 17:38:27'),(2,36,2,'2021-02-16 17:22:33','1996-07-11 10:11:12','2021-02-16 17:38:27'),(3,55,3,'2021-02-16 17:22:33','2018-04-04 19:53:34','2021-02-16 17:38:27'),(3,57,2,'2021-02-16 17:22:33','2006-12-16 08:13:31','2021-02-16 17:38:27'),(4,83,2,'2021-02-16 17:22:33','2005-06-04 23:03:41','2021-02-16 17:38:27'),(6,20,3,'2021-02-16 17:22:33','2009-05-22 04:15:02','2021-02-16 17:38:27'),(6,22,1,'2021-02-16 17:22:33','2006-09-15 04:33:26','2021-02-16 17:38:27'),(6,38,2,'1983-11-05 03:25:10','1973-12-17 08:15:05','2021-02-16 17:38:27'),(6,69,3,'2021-02-16 17:22:33','2019-11-03 17:56:23','2021-02-16 17:38:27'),(8,84,3,'2021-02-16 17:22:33','1993-01-11 09:18:58','2021-02-16 17:38:27'),(10,10,3,'2021-02-16 17:22:33','2008-05-03 16:54:07','2021-02-16 17:38:27'),(10,25,3,'2021-02-16 17:22:33','2014-05-30 13:05:29','2021-02-16 17:38:27'),(11,47,2,'2017-01-20 04:16:28','1995-08-25 22:01:38','2021-02-16 17:38:27'),(11,65,1,'1998-10-03 03:25:02','1990-11-05 23:50:30','2021-02-16 17:38:27'),(11,70,2,'2021-02-16 17:22:33','2003-10-21 01:29:56','2021-02-16 17:38:27'),(12,77,1,'2000-10-28 00:05:37','1992-12-13 23:40:59','2021-02-16 17:38:27'),(13,13,2,'1988-11-24 02:21:58','1972-01-11 01:27:10','2021-02-16 17:38:27'),(13,52,2,'2021-02-16 17:22:33','1995-01-18 04:49:29','2021-02-16 17:38:27'),(13,74,2,'1981-09-19 01:15:30','1974-12-08 14:50:05','2021-02-16 17:38:27'),(15,1,2,'2015-05-01 20:36:01','1983-12-02 09:57:37','2021-02-16 17:38:27'),(15,86,1,'2021-02-16 17:22:33','1987-08-28 08:55:02','2021-02-16 17:38:27'),(16,56,3,'2021-02-16 17:22:33','2010-06-28 15:54:46','2021-02-16 17:38:27'),(18,100,2,'2018-02-24 12:27:53','1995-03-28 22:05:54','2021-02-16 17:38:27'),(21,11,3,'2021-02-16 17:22:33','1998-01-17 04:05:33','2021-02-16 17:38:27'),(23,4,3,'1971-12-08 09:10:29','1971-07-03 15:07:52','2021-02-16 17:38:27'),(23,33,1,'2017-12-07 12:13:01','1982-07-14 19:05:54','2021-02-16 17:38:27'),(23,82,1,'2018-11-04 16:00:45','1971-11-07 20:53:18','2021-02-16 17:38:27'),(26,41,3,'2021-02-16 17:22:33','1979-12-10 00:45:06','2021-02-16 17:38:27'),(27,63,2,'1997-08-22 12:17:26','1996-09-26 14:53:17','2021-02-16 17:38:27'),(29,80,2,'2021-02-16 17:22:33','1990-03-23 21:43:36','2021-02-16 17:38:27'),(30,85,3,'2021-02-16 17:22:33','2007-07-26 19:40:38','2021-02-16 17:38:27'),(34,61,3,'2013-02-04 01:07:58','2010-05-31 00:50:54','2021-02-16 17:38:27'),(35,87,2,'2021-02-16 17:22:33','2015-03-21 20:59:17','2021-02-16 17:38:27'),(36,50,2,'2021-02-16 17:22:33','1997-10-18 14:33:31','2021-02-16 17:38:27'),(37,43,3,'1989-02-06 04:51:16','1981-03-14 23:44:04','2021-02-16 17:38:27'),(37,73,1,'2021-02-16 17:22:33','2020-07-07 01:48:05','2021-02-16 17:38:27'),(37,99,2,'2018-07-30 03:35:16','1985-04-09 08:21:18','2021-02-16 17:38:27'),(38,78,3,'2009-02-05 03:00:32','1984-09-18 17:39:00','2021-02-16 17:38:27'),(40,53,3,'2021-02-16 17:22:33','2018-02-28 06:51:08','2021-02-16 17:38:27'),(41,89,2,'1977-02-20 18:09:14','1975-05-12 17:52:26','2021-02-16 17:38:27'),(42,86,1,'1988-11-28 12:16:05','1984-04-29 14:51:25','2021-02-16 17:38:27'),(43,13,2,'2021-02-16 17:22:33','2003-12-14 14:20:38','2021-02-16 17:38:27'),(43,16,3,'2012-02-18 20:49:25','1994-07-05 15:54:00','2021-02-16 17:38:27'),(43,34,3,'2017-11-25 01:26:28','1987-04-24 12:19:35','2021-02-16 17:38:27'),(45,58,3,'2021-02-16 17:22:33','2009-08-10 08:37:43','2021-02-16 17:38:27'),(46,23,1,'2021-02-16 17:22:33','1995-01-08 12:15:41','2021-02-16 17:38:27'),(47,3,2,'2020-06-07 11:25:26','1993-08-18 21:35:18','2021-02-16 17:38:27'),(48,28,1,'2021-02-16 17:22:33','2020-06-03 00:18:39','2021-02-16 17:38:27'),(50,58,2,'2018-01-15 03:18:18','2003-09-22 09:24:28','2021-02-16 17:38:27'),(50,67,2,'2021-02-16 17:22:33','2019-03-14 05:58:31','2021-02-16 17:38:27'),(50,77,1,'2021-02-16 17:22:33','2000-08-26 06:43:37','2021-02-16 17:38:27'),(50,92,2,'2021-02-16 17:22:33','1993-03-17 02:32:17','2021-02-16 17:38:27'),(51,22,3,'2005-02-22 12:17:05','1974-01-01 08:26:34','2021-02-16 17:38:27'),(51,67,2,'2021-02-16 17:22:33','2007-06-18 01:46:39','2021-02-16 17:38:27'),(52,48,2,'1992-06-23 04:53:35','1976-07-25 22:46:14','2021-02-16 17:38:27'),(53,42,1,'1991-05-24 05:47:04','1986-12-23 04:40:49','2021-02-16 17:38:27'),(54,65,2,'2021-02-16 17:22:33','2017-12-07 23:20:02','2021-02-16 17:38:27'),(57,2,1,'1989-07-14 13:30:21','1970-11-02 12:51:01','2021-02-16 17:38:27'),(59,72,1,'1980-12-15 11:19:48','1971-01-23 17:33:45','2021-02-16 17:38:27'),(61,25,3,'2019-11-21 11:00:06','1973-08-23 08:37:09','2021-02-16 17:38:27'),(62,63,3,'2021-02-16 17:22:33','2011-11-13 06:49:49','2021-02-16 17:38:27'),(63,10,2,'2015-06-18 05:44:02','2003-03-16 23:17:40','2021-02-16 17:38:27'),(64,70,3,'2014-08-07 14:38:56','1972-08-10 18:36:15','2021-02-16 17:38:27'),(64,81,2,'2021-02-16 17:22:33','2016-09-24 08:14:37','2021-02-16 17:38:27'),(64,96,2,'1996-06-27 05:10:51','1976-11-24 12:46:28','2021-02-16 17:38:27'),(67,88,1,'2021-02-16 17:22:33','1978-12-31 08:55:40','2021-02-16 17:38:27'),(68,11,3,'2013-12-13 13:04:41','2007-12-05 02:59:59','2021-02-16 17:38:27'),(70,2,2,'2021-02-16 17:22:33','1997-04-27 16:12:32','2021-02-16 17:38:27'),(70,88,1,'2003-11-05 04:40:10','1987-02-17 04:57:02','2021-02-16 17:38:27'),(71,25,1,'1986-11-17 15:32:54','1970-04-16 16:36:49','2021-02-16 17:38:27'),(71,72,2,'1984-04-11 12:43:57','1979-02-23 00:53:26','2021-02-16 17:38:27'),(72,77,2,'2018-01-20 13:17:03','2014-04-16 20:05:07','2021-02-16 17:38:27'),(73,2,2,'2021-02-16 17:22:33','2018-02-12 19:11:16','2021-02-16 17:38:27'),(75,81,2,'2021-02-16 17:22:33','1994-08-27 07:32:08','2021-02-16 17:38:27'),(76,5,3,'2021-02-16 17:22:33','2009-04-20 00:03:16','2021-02-16 17:38:27'),(76,55,1,'2009-04-13 05:39:05','1979-10-19 18:04:27','2021-02-16 17:38:27'),(80,25,1,'2021-02-16 17:22:33','2016-03-15 08:13:10','2021-02-16 17:38:27'),(80,40,1,'2008-02-19 17:35:14','1975-05-18 00:25:05','2021-02-16 17:38:27'),(84,11,1,'1987-02-08 22:00:11','1979-03-26 00:27:33','2021-02-16 17:38:27'),(84,35,2,'2021-02-16 17:22:33','1999-02-15 16:13:38','2021-02-16 17:38:27'),(87,91,3,'2004-11-25 23:41:32','1988-10-19 08:59:09','2021-02-16 17:38:27'),(88,19,3,'2019-10-25 00:49:25','1980-07-26 06:57:04','2021-02-16 17:38:27'),(88,42,1,'2010-12-07 07:07:19','1972-11-23 21:29:55','2021-02-16 17:38:27'),(88,71,1,'2021-02-16 17:22:33','2012-11-05 15:22:59','2021-02-16 17:38:27'),(89,88,3,'2001-05-03 03:17:19','1990-03-25 23:23:15','2021-02-16 17:38:27'),(90,77,3,'2019-04-21 19:07:05','1987-07-22 12:41:19','2021-02-16 17:38:27'),(91,22,1,'2016-10-06 06:22:11','1974-07-31 09:57:26','2021-02-16 17:38:27'),(91,55,3,'1987-08-03 22:48:55','1973-02-24 08:12:54','2021-02-16 17:38:27'),(91,70,3,'2021-02-16 17:22:33','1997-04-23 17:07:42','2021-02-16 17:38:27'),(92,71,1,'2019-07-05 01:31:54','2014-09-27 06:22:40','2021-02-16 17:38:27'),(92,77,2,'2021-02-16 17:22:33','1992-06-01 10:45:59','2021-02-16 17:38:27'),(93,50,2,'2020-04-09 03:45:30','1993-01-12 18:30:31','2021-02-16 17:38:27'),(93,57,1,'2021-02-16 17:22:33','1983-09-29 01:37:42','2021-02-16 17:38:27'),(94,27,3,'2007-08-31 20:21:37','1971-09-29 13:52:59','2021-02-16 17:38:27'),(94,57,1,'2017-08-25 04:50:48','1996-04-10 03:05:23','2021-02-16 17:38:27'),(96,38,1,'2021-02-16 17:22:33','2000-02-15 23:52:54','2021-02-16 17:38:27'),(98,2,1,'2021-02-16 17:22:33','1997-08-21 04:22:14','2021-02-16 17:38:27'),(98,71,3,'1988-12-21 06:50:32','1984-08-11 20:10:59','2021-02-16 17:38:27'),(99,69,3,'2021-02-16 17:22:33','2020-07-04 07:17:48','2021-02-16 17:38:27'),(100,22,2,'2019-03-21 13:54:37','1996-02-20 10:18:05','2021-02-16 17:38:27');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (2,'confirmed'),(3,'regected'),(1,'requested');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int unsigned NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `media_type_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,19,'http://dropbox.com/vk/filename.png',7704,'{\"owner\": \"Gerson Runolfsson\"}',4,'1995-09-30 22:46:44','2021-02-16 16:58:59'),(2,29,'http://dropbox.com/vk/filename.mp3',8612,'{\"owner\": \"Clay Rice\"}',2,'1997-05-22 09:54:52','2021-02-16 16:58:59'),(3,87,'http://dropbox.com/vk/filename.avi',564449,'{\"owner\": \"Kali Jenkins\"}',1,'1980-10-12 14:21:37','2021-02-16 16:58:59'),(4,48,'http://dropbox.com/vk/filename.jpeg',4957545,'{\"owner\": \"Tanya Littel\"}',2,'2013-09-08 03:13:43','2021-02-16 16:26:13'),(5,79,'http://dropbox.com/vk/filename.mpeg4',84553719,'{\"owner\": \"Destany Medhurst\"}',3,'1990-05-20 23:06:12','2021-02-16 16:58:59'),(6,51,'http://dropbox.com/vk/filename.mp3',4971832,'{\"owner\": \"Susanna Altenwerth\"}',3,'2013-03-18 13:03:57','2021-02-16 16:58:59'),(7,17,'http://dropbox.com/vk/filename..mpeg4',5678033,'{\"owner\": \"Kurt Emmerich\"}',1,'2005-12-24 20:11:53','2021-02-16 16:58:59'),(8,33,'http://dropbox.com/vk/filename.mp3',9948,'{\"owner\": \"Teresa Hilll\"}',2,'2009-07-27 19:51:34','2021-02-16 16:58:59'),(9,11,'http://dropbox.com/vk/filename.jpeg',45034135,'{\"owner\": \"Shany Berge\"}',1,'2016-02-14 14:15:39','2021-02-16 16:26:13'),(10,54,'http://dropbox.com/vk/filename.png',3905,'{\"owner\": \"Adelbert Toy\"}',1,'2013-03-05 14:05:13','2021-02-16 16:58:59'),(11,40,'http://dropbox.com/vk/filename.jpeg',9678,'{\"owner\": \"Mayra Mitchell\"}',2,'2018-10-05 11:12:37','2021-02-16 16:58:59'),(12,35,'http://dropbox.com/vk/filename.jpeg',19896934,'{\"owner\": \"Bella Murazik\"}',4,'1976-06-07 00:56:42','2021-02-16 16:26:13'),(13,55,'http://dropbox.com/vk/filename..mpeg4',68654,'{\"owner\": \"Sandy Zboncak\"}',1,'1986-11-29 09:45:31','2021-02-16 16:26:13'),(14,69,'http://dropbox.com/vk/filename..png',2910,'{\"owner\": \"Leopold Durgan\"}',1,'1971-04-09 04:24:53','2021-02-16 16:58:59'),(15,79,'http://dropbox.com/vk/filename.mp3',98586841,'{\"owner\": \"Destany Medhurst\"}',3,'1970-09-21 13:42:23','2021-02-16 16:58:59'),(16,90,'http://dropbox.com/vk/filename..mpeg4',6676,'{\"owner\": \"Alison Sanford\"}',1,'2006-03-09 07:24:39','2021-02-16 16:58:59'),(17,11,'http://dropbox.com/vk/filename.jpeg',4347,'{\"owner\": \"Shany Berge\"}',2,'1995-08-25 01:53:50','2021-02-16 16:58:59'),(18,86,'http://dropbox.com/vk/filename.avi',1704,'{\"owner\": \"Patsy Daniel\"}',1,'2007-11-27 12:13:40','2021-02-16 16:58:59'),(19,97,'http://dropbox.com/vk/filename.avi',5481,'{\"owner\": \"Jerad Mohr\"}',2,'1986-05-15 20:48:30','2021-02-16 16:58:59'),(20,24,'http://dropbox.com/vk/filename.mpeg4',2290,'{\"owner\": \"Warren Littel\"}',3,'1975-06-20 13:53:02','2021-02-16 16:58:59'),(21,30,'http://dropbox.com/vk/filename.avi',580604,'{\"owner\": \"Johan Thompson\"}',1,'1972-08-17 02:46:38','2021-02-16 16:58:59'),(22,77,'http://dropbox.com/vk/filename.png',894145,'{\"owner\": \"Weldon Blick\"}',2,'2003-07-28 03:18:57','2021-02-16 16:58:59'),(23,94,'http://dropbox.com/vk/filename.mpeg4',6711,'{\"owner\": \"Vance Lynch\"}',1,'1981-01-12 23:06:32','2021-02-16 16:58:59'),(24,41,'http://dropbox.com/vk/filename.jpeg',36749,'{\"owner\": \"Miller Marks\"}',1,'1976-06-17 20:45:25','2021-02-16 16:58:59'),(25,21,'http://dropbox.com/vk/filename.mpeg4',62706,'{\"owner\": \"Cara Murray\"}',4,'2011-10-21 23:00:32','2021-02-16 16:26:13'),(26,82,'http://dropbox.com/vk/filename.png',21733,'{\"owner\": \"Camila Mertz\"}',3,'2010-05-28 06:35:47','2021-02-16 16:58:59'),(27,47,'http://dropbox.com/vk/filename.jpeg',567613122,'{\"owner\": \"Johathan Baumbach\"}',2,'1995-11-20 00:56:38','2021-02-16 16:58:59'),(28,87,'http://dropbox.com/vk/filename.jpeg',652587813,'{\"owner\": \"Kali Jenkins\"}',1,'2008-07-07 21:41:29','2021-02-16 16:26:13'),(29,93,'http://dropbox.com/vk/filename..jpeg',1366,'{\"owner\": \"Greg Waters\"}',2,'1982-10-29 21:57:52','2021-02-16 16:26:13'),(30,5,'http://dropbox.com/vk/filename.avi',5254,'{\"owner\": \"Meda Stoltenberg\"}',4,'1976-04-03 12:20:35','2021-02-16 16:58:59'),(31,47,'http://dropbox.com/vk/filename..jpeg',5050,'{\"owner\": \"Johathan Baumbach\"}',3,'2016-05-16 16:28:01','2021-02-16 16:58:59'),(32,18,'http://dropbox.com/vk/filename.mpeg4',743041,'{\"owner\": \"Breanne Keebler\"}',1,'1999-09-05 17:43:10','2021-02-16 16:26:13'),(33,48,'http://dropbox.com/vk/filename.mp3',581729015,'{\"owner\": \"Tanya Littel\"}',4,'2003-10-25 16:08:16','2021-02-16 16:58:59'),(34,88,'http://dropbox.com/vk/filename.mp3',4223,'{\"owner\": \"Milton Macejkovic\"}',4,'1971-01-25 00:01:35','2021-02-16 16:26:13'),(35,93,'http://dropbox.com/vk/filename.jpeg',6030,'{\"owner\": \"Greg Waters\"}',4,'1978-08-26 00:05:53','2021-02-16 16:58:59'),(36,3,'http://dropbox.com/vk/filename.jpeg',5007,'{\"owner\": \"Macey Bahringer\"}',2,'1987-08-24 03:19:54','2021-02-16 16:58:59'),(37,34,'http://dropbox.com/vk/filename..jpeg',56969,'{\"owner\": \"Brain Russel\"}',4,'2009-06-14 18:19:02','2021-02-16 16:58:59'),(38,62,'http://dropbox.com/vk/filename..avi',713682,'{\"owner\": \"Keaton Heidenreich\"}',2,'1987-11-21 11:54:18','2021-02-16 16:58:59'),(39,5,'http://dropbox.com/vk/filename.png',534352,'{\"owner\": \"Meda Stoltenberg\"}',1,'2005-10-16 13:05:08','2021-02-16 16:58:59'),(40,41,'http://dropbox.com/vk/filename.jpeg',72108986,'{\"owner\": \"Miller Marks\"}',1,'2010-02-02 12:02:58','2021-02-16 16:58:59'),(41,88,'http://dropbox.com/vk/filename.mp3',8166,'{\"owner\": \"Milton Macejkovic\"}',4,'1991-06-01 02:32:55','2021-02-16 16:58:59'),(42,16,'http://dropbox.com/vk/filename..mp3',7776,'{\"owner\": \"Olaf Skiles\"}',1,'1986-03-26 09:42:49','2021-02-16 16:58:59'),(43,17,'http://dropbox.com/vk/filename.png',5807,'{\"owner\": \"Kurt Emmerich\"}',2,'2013-10-22 00:12:24','2021-02-16 16:58:59'),(44,37,'http://dropbox.com/vk/filename..jpeg',4536,'{\"owner\": \"Miles Reichert\"}',1,'1995-08-09 11:26:39','2021-02-16 16:58:59'),(45,32,'http://dropbox.com/vk/filename.png',811153345,'{\"owner\": \"Eveline Murphy\"}',4,'1977-05-27 06:42:22','2021-02-16 16:58:59'),(46,48,'http://dropbox.com/vk/filename..png',772455812,'{\"owner\": \"Tanya Littel\"}',2,'1981-11-30 23:12:27','2021-02-16 16:58:59'),(47,44,'http://dropbox.com/vk/filename.avi',777889,'{\"owner\": \"Meredith Goyette\"}',2,'1971-09-24 07:05:47','2021-02-16 16:58:59'),(48,75,'http://dropbox.com/vk/filename..mp3',139599254,'{\"owner\": \"Malvina Hodkiewicz\"}',3,'1993-11-05 19:12:27','2021-02-16 16:58:59'),(49,44,'http://dropbox.com/vk/filename..png',156644664,'{\"owner\": \"Meredith Goyette\"}',3,'1986-06-18 02:43:55','2021-02-16 16:58:59'),(50,95,'http://dropbox.com/vk/filename.jpeg',30823,'{\"owner\": \"Warren Schinner\"}',2,'2012-05-26 19:38:04','2021-02-16 16:26:13'),(51,40,'http://dropbox.com/vk/filename.jpeg',5261,'{\"owner\": \"Mayra Mitchell\"}',1,'1971-05-22 20:16:26','2021-02-16 16:58:59'),(52,16,'http://dropbox.com/vk/filename.mpeg4',3998371,'{\"owner\": \"Olaf Skiles\"}',1,'2010-07-24 11:12:43','2021-02-16 16:58:59'),(53,61,'http://dropbox.com/vk/filename..png',976324647,'{\"owner\": \"Lavon Gorczany\"}',2,'1974-01-14 14:40:14','2021-02-16 16:58:59'),(54,54,'http://dropbox.com/vk/filename.mp3',2674975,'{\"owner\": \"Adelbert Toy\"}',4,'2005-08-09 23:49:23','2021-02-16 16:58:59'),(55,88,'http://dropbox.com/vk/filename.mp3',2696,'{\"owner\": \"Milton Macejkovic\"}',2,'1974-02-25 07:07:10','2021-02-16 16:58:59'),(56,76,'http://dropbox.com/vk/filename..mpeg4',610430618,'{\"owner\": \"Gavin Kunde\"}',1,'2008-11-05 18:26:59','2021-02-16 16:58:59'),(57,18,'http://dropbox.com/vk/filename..jpeg',72975,'{\"owner\": \"Breanne Keebler\"}',4,'1998-12-18 19:36:44','2021-02-16 16:58:59'),(58,58,'http://dropbox.com/vk/filename..jpeg',7697,'{\"owner\": \"Lisa Schaden\"}',3,'2003-07-30 22:07:58','2021-02-16 16:58:59'),(59,39,'http://dropbox.com/vk/filename.mpeg4',397,'{\"owner\": \"Glenda Kling\"}',1,'2003-05-14 00:34:52','2021-02-16 16:58:59'),(60,20,'http://dropbox.com/vk/filename.avi',32531829,'{\"owner\": \"Elsa Ondricka\"}',4,'1986-01-10 10:59:07','2021-02-16 16:58:59'),(61,82,'http://dropbox.com/vk/filename.mpeg4',337895005,'{\"owner\": \"Camila Mertz\"}',2,'1972-06-18 04:17:12','2021-02-16 16:26:13'),(62,51,'http://dropbox.com/vk/filename.png',57669,'{\"owner\": \"Susanna Altenwerth\"}',2,'1977-01-12 01:34:18','2021-02-16 16:26:13'),(63,8,'http://dropbox.com/vk/filename.mpeg4',8893,'{\"owner\": \"Polly Moen\"}',2,'2016-12-02 21:01:21','2021-02-16 16:58:59'),(64,87,'http://dropbox.com/vk/filename..avi',88222,'{\"owner\": \"Kali Jenkins\"}',2,'1992-11-09 08:30:10','2021-02-16 16:26:13'),(65,10,'http://dropbox.com/vk/filename..avi',3632,'{\"owner\": \"Eve Ledner\"}',4,'1976-07-30 16:35:24','2021-02-16 16:58:59'),(66,90,'http://dropbox.com/vk/filename..jpeg',3275,'{\"owner\": \"Alison Sanford\"}',3,'1973-05-03 19:44:53','2021-02-16 16:58:59'),(67,20,'http://dropbox.com/vk/filename.mp3',617081,'{\"owner\": \"Elsa Ondricka\"}',3,'2003-03-03 02:22:54','2021-02-16 16:58:59'),(68,29,'http://dropbox.com/vk/filename.mp3',6450852,'{\"owner\": \"Clay Rice\"}',1,'2009-05-15 13:46:00','2021-02-16 16:58:59'),(69,84,'http://dropbox.com/vk/filename..png',9694,'{\"owner\": \"Rogers Kuhn\"}',1,'1978-05-23 20:24:07','2021-02-16 16:58:59'),(70,31,'http://dropbox.com/vk/filename.jpeg',8643,'{\"owner\": \"Katlyn Rau\"}',3,'1989-01-08 13:40:55','2021-02-16 16:58:59'),(71,5,'http://dropbox.com/vk/filename..avi',4135,'{\"owner\": \"Meda Stoltenberg\"}',2,'2008-07-13 21:09:56','2021-02-16 16:58:59'),(72,32,'http://dropbox.com/vk/filename..mpeg4',4744,'{\"owner\": \"Eveline Murphy\"}',3,'1990-10-11 16:36:43','2021-02-16 16:26:13'),(73,42,'http://dropbox.com/vk/filename.png',1317,'{\"owner\": \"Alejandra Erdman\"}',1,'1996-01-24 03:48:50','2021-02-16 16:58:59'),(74,14,'http://dropbox.com/vk/filename..mpeg4',72082886,'{\"owner\": \"Davonte Bauch\"}',4,'2006-05-25 03:47:42','2021-02-16 16:58:59'),(75,42,'http://dropbox.com/vk/filename.png',2349,'{\"owner\": \"Alejandra Erdman\"}',1,'1989-06-15 22:27:36','2021-02-16 16:58:59'),(76,68,'http://dropbox.com/vk/filename.mp3',3041954,'{\"owner\": \"Beth Feest\"}',1,'2008-12-27 19:19:30','2021-02-16 16:58:59'),(77,12,'http://dropbox.com/vk/filename.mp3',1553,'{\"owner\": \"Jazmyne O\'Keefe\"}',1,'1993-08-26 14:52:46','2021-02-16 16:58:59'),(78,59,'http://dropbox.com/vk/filename.jpeg',261499914,'{\"owner\": \"Margarita Mueller\"}',1,'2004-12-14 21:03:04','2021-02-16 16:58:59'),(79,55,'http://dropbox.com/vk/filename.png',7796,'{\"owner\": \"Sandy Zboncak\"}',1,'1973-04-27 00:39:07','2021-02-16 16:58:59'),(80,99,'http://dropbox.com/vk/filename.jpeg',58980,'{\"owner\": \"Retta Huels\"}',4,'2014-03-14 08:34:11','2021-02-16 16:58:59'),(81,31,'http://dropbox.com/vk/filename.mpeg4',1933,'{\"owner\": \"Katlyn Rau\"}',2,'1972-06-24 19:00:39','2021-02-16 16:58:59'),(82,59,'http://dropbox.com/vk/filename.mp3',4760102,'{\"owner\": \"Margarita Mueller\"}',4,'2003-04-05 13:38:43','2021-02-16 16:26:13'),(83,98,'http://dropbox.com/vk/filename.mpeg4',6275,'{\"owner\": \"Janie Hayes\"}',3,'2012-07-24 07:20:20','2021-02-16 16:58:59'),(84,13,'http://dropbox.com/vk/filename.avi',5576,'{\"owner\": \"Magali Feeney\"}',1,'1999-08-07 11:17:08','2021-02-16 16:58:59'),(85,70,'http://dropbox.com/vk/filename.png',985262,'{\"owner\": \"Oceane Anderson\"}',4,'1993-09-08 07:54:51','2021-02-16 16:26:13'),(86,10,'http://dropbox.com/vk/filename..avi',9053,'{\"owner\": \"Eve Ledner\"}',3,'2005-06-23 04:20:04','2021-02-16 16:26:13'),(87,41,'http://dropbox.com/vk/filename.jpeg',62586,'{\"owner\": \"Miller Marks\"}',4,'1971-01-22 23:25:11','2021-02-16 16:26:13'),(88,74,'http://dropbox.com/vk/filename.avi',8536,'{\"owner\": \"Myrtis Casper\"}',4,'1970-04-28 11:34:58','2021-02-16 16:58:59'),(89,49,'http://dropbox.com/vk/filename.png',65612,'{\"owner\": \"Alden Kuhic\"}',3,'1998-11-01 13:22:56','2021-02-16 16:58:59'),(90,19,'http://dropbox.com/vk/filename..png',5521,'{\"owner\": \"Gerson Runolfsson\"}',2,'1976-11-16 17:50:21','2021-02-16 16:26:13'),(91,48,'http://dropbox.com/vk/filename.png',9784,'{\"owner\": \"Tanya Littel\"}',2,'1997-05-05 18:51:18','2021-02-16 16:58:59'),(92,84,'http://dropbox.com/vk/filename..avi',1997,'{\"owner\": \"Rogers Kuhn\"}',3,'1980-08-28 06:02:37','2021-02-16 16:58:59'),(93,76,'http://dropbox.com/vk/filename..png',52354,'{\"owner\": \"Gavin Kunde\"}',3,'2008-12-15 14:34:18','2021-02-16 16:58:59'),(94,26,'http://dropbox.com/vk/filename..jpeg',93299,'{\"owner\": \"Eldred Shanahan\"}',1,'1990-03-13 01:03:28','2021-02-16 16:58:59'),(95,1,'http://dropbox.com/vk/filename..mp3',3974,'{\"owner\": \"Jared Walker\"}',1,'1986-12-07 16:42:46','2021-02-16 16:58:59'),(96,29,'http://dropbox.com/vk/filename.png',3420,'{\"owner\": \"Clay Rice\"}',3,'1995-06-28 18:31:21','2021-02-16 16:58:59'),(97,40,'http://dropbox.com/vk/filename.jpeg',1110,'{\"owner\": \"Mayra Mitchell\"}',4,'1999-09-15 22:16:17','2021-02-16 16:58:59'),(98,13,'http://dropbox.com/vk/filename..png',40054,'{\"owner\": \"Magali Feeney\"}',1,'1987-04-10 17:52:41','2021-02-16 16:58:59'),(99,43,'http://dropbox.com/vk/filename.png',5289,'{\"owner\": \"Kamryn Hessel\"}',3,'1984-04-09 02:53:05','2021-02-16 16:58:59'),(100,77,'http://dropbox.com/vk/filename.png',3114,'{\"owner\": \"Weldon Blick\"}',1,'1979-06-16 14:45:54','2021-02-16 16:58:59');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'photo','2021-02-16 17:09:37','2021-02-16 17:09:37'),(2,'video','2021-02-16 17:09:37','2021-02-16 17:09:37'),(3,'audio','2021-02-16 17:09:37','2021-02-16 17:09:37'),(4,'image','2021-02-16 17:09:37','2021-02-16 17:09:37');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int unsigned NOT NULL,
  `to_user_id` int unsigned NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_imprtant` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,62,26,'Cupiditate omnis quo alias sapiente ut. Ut enim impedit consequatur et rerum voluptatem itaque necessitatibus. Consequatur ad fugiat deleniti aut beatae quia commodi.',1,0,'2019-03-25 01:40:07'),(2,46,48,'Enim minima aut mollitia earum consequatur optio. Omnis molestias facilis molestias totam dolores dolor sit perspiciatis. Aut ex exercitationem et aut repellendus quia enim veritatis. Est velit natus qui vero officia debitis dolor. Perspiciatis necessitatibus architecto rem aliquam est quaerat fugiat.',1,1,'2005-01-01 16:53:33'),(3,5,79,'Architecto quis et aut aspernatur. Ut temporibus minima temporibus qui voluptas ullam quia. Quod placeat iure quod laudantium magni. Accusamus molestiae aut provident quod architecto dolorem non.',0,1,'1994-11-21 14:00:42'),(4,79,57,'Ab reprehenderit dolore soluta omnis magnam voluptate eius molestiae. Voluptas velit vel placeat officia. Cupiditate quasi quisquam eum corporis dolorem quae quas nesciunt. Architecto vel voluptates harum autem.',0,1,'2000-01-14 06:57:07'),(5,46,62,'Blanditiis magni aliquid facilis dolores itaque et perferendis. Esse eos dicta sunt quo. Amet aut ratione architecto aut possimus. Omnis rem possimus voluptas asperiores.',1,0,'1991-09-12 03:31:47'),(6,69,58,'Consequatur architecto placeat voluptates exercitationem quisquam non magni quod. Modi voluptas ea non eveniet temporibus et voluptatem. Nesciunt qui adipisci aut atque saepe necessitatibus.',1,1,'1983-08-12 19:59:49'),(7,82,38,'Eius sit ut dolor impedit. Saepe est veniam a ut veritatis ut sapiente. Consequatur placeat consequatur minus dolorum rerum architecto aut.',0,1,'2014-07-08 09:28:40'),(8,40,89,'Odit rerum exercitationem quidem ipsam asperiores et consequatur. Doloremque alias tempora voluptate sed id sapiente itaque. Et aut suscipit ut ratione reprehenderit soluta ex. Non et suscipit porro nihil consectetur sint. Aliquam eos voluptates voluptatem veritatis.',0,0,'2010-02-21 16:30:58'),(9,25,54,'Similique placeat quia excepturi ipsum quam quod. Consequatur soluta repudiandae ipsam omnis perspiciatis. Minima consequatur provident modi ut aut alias necessitatibus. Mollitia inventore sed magni aspernatur numquam sequi aspernatur.',1,0,'2020-09-30 12:48:09'),(10,97,22,'Ratione nulla quod pariatur enim dolores quasi saepe. Aut et asperiores cupiditate mollitia veritatis delectus soluta. Aperiam consequatur vel aperiam animi iusto est voluptatum.',1,1,'1974-05-31 03:04:50');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL,
  `gender` enum('m','w') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','Brucetown','Lesotho','2021-02-16 13:31:18','2018-05-04 22:14:40','2021-02-16 13:52:28'),(2,'m','Cummingsmouth','Ireland','2021-02-16 13:31:18','2012-09-15 11:04:29','2021-02-16 13:52:28'),(3,'m','North Easton','Montenegro','2018-03-15 07:06:44','1989-10-06 20:12:54','2021-02-16 13:52:28'),(4,'w','South Kiera','Christmas Island','2021-02-16 13:31:18','2011-12-22 05:05:08','2021-02-16 13:52:28'),(5,'m','Joanneburgh','Kyrgyz Republic','2021-02-16 13:31:18','2004-08-02 04:03:53','2021-02-16 13:52:28'),(6,'w','Gerlachhaven','Cook Islands','2021-02-16 13:31:18','1986-12-29 07:48:30','2021-02-16 13:52:28'),(7,'m','Wiegandborough','Algeria','2021-02-16 13:31:18','1992-04-21 21:37:33','2021-02-16 13:52:28'),(8,'m','Lucindabury','Canada','2017-08-29 00:12:37','1984-05-10 05:01:14','2021-02-16 13:52:28'),(9,'w','Meggiefort','Congo','2014-08-06 10:07:21','2005-12-13 07:51:06','2021-02-16 13:52:28'),(10,'m','Jaquanchester','Gibraltar','2002-12-28 11:32:27','1996-09-24 02:16:41','2021-02-16 13:52:28'),(11,'m','North Duane','Suriname','2021-02-16 13:31:18','2005-05-08 00:48:35','2021-02-16 13:52:28'),(12,'w','Port Lonnieburgh','Angola','2021-02-16 13:31:18','2010-01-15 02:30:57','2021-02-16 13:52:28'),(13,'m','Wisozktown','Ireland','2021-02-16 13:31:18','1981-01-26 22:32:07','2021-02-16 13:52:28'),(14,'w','East Dillon','Burkina Faso','2021-02-16 13:31:18','2013-07-12 02:51:56','2021-02-16 13:52:28'),(15,'w','Dickinsonland','Faroe Islands','2021-02-16 13:31:18','1997-11-14 04:23:09','2021-02-16 13:52:28'),(16,'m','Tommiehaven','Gambia','2021-02-16 13:31:18','1997-02-28 12:44:31','2021-02-16 13:52:28'),(17,'m','Jaronbury','Zambia','2021-02-16 13:31:18','2014-06-30 12:38:12','2021-02-16 13:52:28'),(18,'m','South Reneeville','Vanuatu','2021-02-16 13:31:18','2016-07-21 10:34:32','2021-02-16 13:52:28'),(19,'m','Wyattport','Libyan Arab Jamahiriya','2007-03-15 19:24:40','1976-10-29 17:03:00','2021-02-16 13:52:28'),(20,'w','East Winstonview','Tuvalu','2011-01-22 21:45:25','1995-11-21 23:31:47','2021-02-16 13:52:28'),(21,'w','Port Talonbury','United Arab Emirates','2021-02-16 13:31:18','1986-12-26 03:01:34','2021-02-16 13:52:28'),(22,'w','Lueilwitzville','Zambia','2004-10-11 07:29:45','2004-07-21 01:57:36','2021-02-16 13:52:28'),(23,'m','Rohanchester','Kyrgyz Republic','2021-02-16 13:31:18','2016-02-06 19:40:39','2021-02-16 13:52:28'),(24,'m','Aracelymouth','Burkina Faso','1990-03-31 13:05:01','1975-10-01 06:45:22','2021-02-16 13:52:28'),(25,'m','Sawaynborough','Kuwait','2007-08-18 08:46:41','2006-04-08 21:58:12','2021-02-16 13:52:28'),(26,'m','Lake Freida','Ukraine','2016-01-24 06:26:16','2005-10-19 14:33:44','2021-02-16 13:52:28'),(27,'w','Schinnerland','Botswana','1978-03-22 15:04:49','1974-09-15 02:18:43','2021-02-16 13:52:28'),(28,'m','North Reanna','Madagascar','2017-08-31 05:51:49','1970-05-30 11:53:41','2021-02-16 13:52:28'),(29,'w','East Marcellusland','Vanuatu','2021-02-16 13:31:18','2007-09-23 04:42:21','2021-02-16 13:52:28'),(30,'m','Richmondstad','Georgia','2021-02-16 13:31:18','1996-01-16 10:46:49','2021-02-16 13:52:28'),(31,'w','Morganhaven','Puerto Rico','1995-08-03 03:46:06','1982-05-16 16:00:08','2021-02-16 13:52:28'),(32,'m','South Robin','Jamaica','2019-11-12 20:03:34','1992-12-21 20:36:13','2021-02-16 13:52:28'),(33,'w','West Orlandfurt','Panama','2021-02-16 13:31:18','1994-03-02 07:24:46','2021-02-16 13:52:28'),(34,'w','Handfurt','Austria','2016-05-30 19:56:08','1975-03-30 03:59:12','2021-02-16 13:52:28'),(35,'w','Port Jarodland','Netherlands Antilles','2021-02-16 13:31:18','2014-06-01 15:30:46','2021-02-16 13:52:28'),(36,'w','Brandonton','Korea','2021-02-16 13:31:18','1995-07-02 04:49:58','2021-02-16 13:52:28'),(37,'m','Port Ned','Swaziland','2021-02-16 13:31:18','2002-05-25 08:53:59','2021-02-16 13:52:28'),(38,'w','Robbchester','Montenegro','2021-02-16 13:31:18','2020-04-20 15:43:10','2021-02-16 13:52:28'),(39,'m','Lake Bochester','Bouvet Island (Bouvetoya)','2021-02-16 13:31:18','1972-12-31 15:54:01','2021-02-16 13:52:28'),(40,'m','West Shaylee','Dominica','2021-02-16 13:31:18','1990-10-09 12:47:45','2021-02-16 13:52:28'),(41,'m','South Dovietown','Netherlands Antilles','2021-02-16 13:31:18','2012-11-23 14:15:37','2021-02-16 13:52:28'),(42,'w','Marksmouth','Indonesia','2021-02-16 13:31:18','1996-11-02 19:04:20','2021-02-16 13:52:28'),(43,'w','South Eliezer','Italy','2021-02-16 13:31:18','2016-07-18 10:35:37','2021-02-16 13:52:28'),(44,'m','Kassandraside','Finland','2021-02-16 13:31:18','2001-09-28 13:55:51','2021-02-16 13:52:28'),(45,'m','Boganstad','Philippines','2009-03-29 22:01:30','2005-07-08 04:44:57','2021-02-16 13:52:28'),(46,'w','South Ray','Wallis and Futuna','1999-06-12 04:59:16','1990-11-23 07:32:15','2021-02-16 13:52:28'),(47,'w','Port Andreanechester','Tokelau','2001-02-25 21:03:04','1972-07-28 17:24:40','2021-02-16 13:52:28'),(48,'w','Monahanport','Haiti','1986-11-22 10:39:53','1984-09-15 18:42:33','2021-02-16 13:52:28'),(49,'w','Bradfordstad','Mozambique','2021-02-16 13:31:18','2011-08-31 12:28:16','2021-02-16 13:52:28'),(50,'m','Connellyfort','Zambia','2006-12-03 23:27:56','1987-09-16 04:39:01','2021-02-16 13:52:28'),(51,'w','Lake Vicenteland','Egypt','2013-08-25 14:26:36','1975-12-31 07:29:50','2021-02-16 13:52:28'),(52,'w','Roselynmouth','Gibraltar','2021-02-16 13:31:18','2006-08-19 17:13:03','2021-02-16 13:52:28'),(53,'m','Alishaville','Indonesia','2021-02-16 13:31:18','1988-12-07 21:52:12','2021-02-16 13:52:28'),(54,'w','Port Havenfurt','Mongolia','2021-02-16 13:31:18','2015-05-17 22:09:25','2021-02-16 13:52:28'),(55,'w','East Cleochester','Saint Kitts and Nevis','2008-02-22 12:43:55','1974-05-12 16:07:10','2021-02-16 13:52:28'),(56,'m','New Nellie','United States of America','1988-08-12 04:01:12','1976-02-24 23:21:07','2021-02-16 13:52:28'),(57,'w','Lake Tyrese','South Georgia and the South Sandwich Islands','2021-02-16 13:31:18','1993-10-01 22:33:36','2021-02-16 13:52:28'),(58,'m','New Reinabury','Gabon','2021-02-16 13:31:18','2017-12-13 12:49:37','2021-02-16 13:52:28'),(59,'m','Orlandchester','Tajikistan','2021-02-16 13:31:18','2010-07-15 08:26:52','2021-02-16 13:52:28'),(60,'m','Rolandostad','Israel','1994-09-11 11:03:48','1973-12-27 15:57:51','2021-02-16 13:52:28'),(61,'w','Clareshire','Guyana','2014-08-19 19:03:40','1989-07-10 09:15:46','2021-02-16 13:52:28'),(62,'m','Careyburgh','Lithuania','2021-02-16 13:31:18','1999-07-01 16:05:07','2021-02-16 13:52:28'),(63,'m','Queenieview','New Zealand','2021-02-16 13:31:18','2017-03-01 21:24:00','2021-02-16 13:52:28'),(64,'w','Kipfurt','South Africa','2021-02-16 13:31:18','1989-08-24 10:05:50','2021-02-16 13:52:28'),(65,'m','Pattown','Bosnia and Herzegovina','2021-02-16 13:31:18','1996-04-12 15:18:26','2021-02-16 13:52:28'),(66,'m','Lexusbury','Brazil','2021-02-16 13:31:18','2019-05-11 19:36:33','2021-02-16 13:52:28'),(67,'w','Binsmouth','Mozambique','2021-02-16 13:31:18','2018-02-28 00:02:58','2021-02-16 13:52:28'),(68,'w','Anselberg','Egypt','2021-02-16 13:31:18','1996-02-16 23:37:23','2021-02-16 13:52:28'),(69,'m','New Elisha','Mauritius','1999-08-03 11:31:28','1981-02-17 21:09:20','2021-02-16 13:52:28'),(70,'m','North Lauryhaven','Norfolk Island','2021-02-16 13:31:18','2019-03-02 02:25:36','2021-02-16 13:52:28'),(71,'m','D\'Amoremouth','Oman','2021-02-16 13:31:18','1999-06-25 11:54:05','2021-02-16 13:52:28'),(72,'m','Friesenbury','Mexico','2021-02-16 13:31:18','2015-04-05 02:13:37','2021-02-16 13:52:28'),(73,'w','Port Rod','Zambia','2003-06-11 17:17:58','1985-12-30 18:22:25','2021-02-16 13:52:28'),(74,'m','Hattieview','French Polynesia','2021-02-16 13:31:18','1988-03-26 11:01:30','2021-02-16 13:52:28'),(75,'w','Kundemouth','Congo','2010-11-29 15:27:14','2001-03-25 20:48:32','2021-02-16 13:52:28'),(76,'m','Vaughnfurt','Azerbaijan','1998-03-11 06:14:40','1981-02-15 14:08:49','2021-02-16 13:52:28'),(77,'w','West Julestown','United States Virgin Islands','2021-02-16 13:31:18','2002-11-20 03:17:18','2021-02-16 13:52:28'),(78,'m','Pagacport','Sri Lanka','2016-07-11 12:01:58','1991-03-31 13:20:41','2021-02-16 13:52:28'),(79,'w','Buckridgeberg','Malawi','1997-06-25 22:27:05','1974-02-11 00:20:15','2021-02-16 13:52:28'),(80,'w','Hansberg','Barbados','2015-12-25 03:01:04','1990-03-27 07:52:23','2021-02-16 13:52:28'),(81,'w','North Miles','El Salvador','2021-02-16 13:31:18','1987-02-24 02:41:32','2021-02-16 13:52:28'),(82,'m','Wuckertburgh','Pakistan','1992-11-29 15:29:20','1971-07-31 20:14:40','2021-02-16 13:52:28'),(83,'m','West Merle','Senegal','2021-02-16 13:31:18','1994-10-15 04:19:30','2021-02-16 13:52:28'),(84,'w','Ernserside','Venezuela','2017-09-03 00:41:23','1989-03-05 05:11:10','2021-02-16 13:52:28'),(85,'m','Lake Samantabury','Czech Republic','2021-02-16 13:31:18','2010-12-10 10:44:30','2021-02-16 13:52:28'),(86,'w','Port Katelyn','Portugal','2021-02-16 13:31:18','2016-10-31 07:29:24','2021-02-16 13:52:28'),(87,'w','South Theresaville','Nepal','2021-02-16 13:31:18','2014-11-28 13:59:15','2021-02-16 13:52:28'),(88,'w','Evalynberg','Croatia','2021-02-16 13:31:18','1985-06-20 15:18:41','2021-02-16 13:52:28'),(89,'m','South Noel','Puerto Rico','2021-02-16 13:31:18','2003-10-14 14:18:14','2021-02-16 13:52:28'),(90,'m','New Tamia','Martinique','2021-02-16 13:31:18','2004-04-01 18:14:41','2021-02-16 13:52:28'),(91,'m','Krajcikview','Burkina Faso','2021-02-16 13:31:18','2006-05-14 07:20:44','2021-02-16 13:52:28'),(92,'m','Heathcotestad','United States Virgin Islands','1976-02-24 13:58:03','1971-06-23 13:17:41','2021-02-16 13:52:28'),(93,'m','Jennyferborough','Bangladesh','1988-08-27 05:35:21','1978-09-10 02:07:25','2021-02-16 13:52:28'),(94,'w','Lake Peggiemouth','Svalbard & Jan Mayen Islands','1981-01-09 00:32:42','1976-06-14 05:57:16','2021-02-16 13:52:28'),(95,'w','Heidenreichmouth','Ghana','2013-07-31 14:11:07','1986-05-30 06:10:02','2021-02-16 13:52:28'),(96,'m','Justusfort','Barbados','1986-04-30 18:21:44','1979-09-05 18:56:52','2021-02-16 13:52:28'),(97,'w','Arturoview','Madagascar','2020-07-12 09:47:38','2012-01-30 16:28:00','2021-02-16 13:52:28'),(98,'m','Mariliemouth','China','2021-02-16 13:31:18','1989-09-16 23:41:51','2021-02-16 13:52:28'),(99,'m','East Willahaven','Cape Verde','2018-10-20 08:42:00','2016-06-01 09:10:58','2021-02-16 13:52:28'),(100,'m','East Marguerite','Turkmenistan','2021-02-16 13:31:18','2002-05-03 09:58:05','2021-02-16 13:52:28');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'walker149','Jared','Walker','jamil.kuphal@example.net','067.900.9748x228','1973-07-27 04:37:38','2021-02-16 13:23:33'),(2,'pollich136','Ricardo','Pollich','ddeckow@example.com','922.645.2451x92364','1971-01-24 00:27:33','2021-02-16 13:23:33'),(3,'bahringer132','Macey','Bahringer','rcrist@example.com','1-551-926-7391x876','1983-07-25 07:50:31','2021-02-16 13:23:33'),(4,'hamill154','Hilda','Hamill','berta.cassin@example.com','(402)382-7701','2013-10-15 09:44:25','2021-02-16 13:23:33'),(5,'stoltenberg173','Meda','Stoltenberg','lowe.dallas@example.net','(818)300-0232','2003-09-04 16:55:47','2021-02-16 13:23:33'),(6,'kohler104','Herminia','Kohler','parisian.rubie@example.org','(117)006-0208x94977','2020-11-06 00:23:45','2021-02-16 13:23:33'),(7,'gutmann102','Zoey','Gutmann','mekhi58@example.org','115-231-7198x76195','1979-08-18 14:47:49','2021-02-16 13:23:33'),(8,'moen199','Polly','Moen','chasity35@example.org','(801)073-6867x8714','2007-08-27 17:38:11','2021-02-16 13:23:33'),(9,'leffler190','Tyson','Leffler','jewel16@example.net','112.458.0726','2017-11-20 04:26:01','2021-02-16 13:23:33'),(10,'ledner152','Eve','Ledner','price.emmalee@example.net','992-877-3707','2013-04-30 11:41:14','2021-02-16 13:23:33'),(11,'berge189','Shany','Berge','tschoen@example.com','415-173-9604','1973-07-17 01:36:06','2021-02-16 13:23:33'),(12,'o\'keefe191','Jazmyne','O\'Keefe','hoppe.crawford@example.com','755-838-2712','2001-05-13 10:30:26','2021-02-16 13:23:33'),(13,'feeney188','Magali','Feeney','alicia.brown@example.net','(983)227-3683','1985-05-26 23:15:46','2021-02-16 13:23:33'),(14,'bauch166','Davonte','Bauch','albin81@example.com','372-923-0889','2018-04-21 04:32:43','2021-02-16 13:23:33'),(15,'schinner167','Sylvia','Schinner','gorczany.phoebe@example.net','694.688.9331','1991-02-21 17:40:00','2021-02-16 13:23:33'),(16,'skiles137','Olaf','Skiles','maggio.gordon@example.com','+64(7)0845027493','2011-05-10 01:41:14','2021-02-16 13:23:33'),(17,'emmerich186','Kurt','Emmerich','harvey51@example.net','+55(6)3959185758','2003-07-29 09:55:05','2021-02-16 13:23:33'),(18,'keebler120','Breanne','Keebler','effertz.vallie@example.com','196.596.3634','2019-11-28 09:35:50','2021-02-16 13:23:33'),(19,'runolfsson142','Gerson','Runolfsson','bennie.schaden@example.com','1-564-089-3166x1159','1989-06-14 04:58:30','2021-02-16 13:23:33'),(20,'ondricka152','Elsa','Ondricka','alexandre67@example.org','1-967-411-7083x82808','1987-01-21 11:55:20','2021-02-16 13:23:33'),(21,'murray131','Cara','Murray','zhodkiewicz@example.org','302-555-4103','2014-10-08 16:53:25','2021-02-16 13:23:33'),(22,'moore102','Thalia','Moore','williamson.trevor@example.net','00117193753','1984-05-06 16:24:59','2021-02-16 13:23:33'),(23,'bechtelar117','Weldon','Bechtelar','hconn@example.org','(369)161-2854x1984','2007-03-03 23:59:27','2021-02-16 13:23:33'),(24,'littel180','Warren','Littel','mireya.altenwerth@example.org','880-231-9994','1975-11-21 04:02:25','2021-02-16 13:23:33'),(25,'marks149','Ana','Marks','ford21@example.net','350-344-5895','1974-02-26 12:10:43','2021-02-16 13:23:33'),(26,'shanahan105','Eldred','Shanahan','nbogisich@example.net','485.453.7603x11489','1978-12-08 16:12:27','2021-02-16 13:23:33'),(27,'hartmann179','Angus','Hartmann','jamir.kreiger@example.com','+60(8)6606265641','1986-09-16 21:18:14','2021-02-16 13:23:33'),(28,'medhurst178','Jermaine','Medhurst','wbahringer@example.org','1-716-020-7093x82659','1970-05-11 20:47:52','2021-02-16 13:23:33'),(29,'rice157','Clay','Rice','simonis.alessandro@example.org','631-298-6521','2004-02-07 17:48:55','2021-02-16 13:23:33'),(30,'thompson149','Johan','Thompson','hermina40@example.com','1-195-342-9180x5842','1979-07-14 06:08:57','2021-02-16 13:23:33'),(31,'rau175','Katlyn','Rau','cgorczany@example.net','587.828.2464x83193','1992-02-27 12:31:18','2021-02-16 13:23:33'),(32,'murphy129','Eveline','Murphy','vergie00@example.com','(498)057-3291','1995-08-28 22:58:26','2021-02-16 13:23:33'),(33,'hilll122','Teresa','Hilll','wwest@example.com','925.721.0602x07874','1985-02-21 13:10:33','2021-02-16 13:23:33'),(34,'russel121','Brain','Russel','mante.aric@example.com','553.228.5889x036','1982-05-22 05:54:02','2021-02-16 13:23:33'),(35,'murazik141','Bella','Murazik','parker.yadira@example.net','(379)173-8598x259','1980-06-03 21:50:45','2021-02-16 13:23:33'),(36,'schaden140','Rusty','Schaden','norn@example.net','1-043-887-2632x8185','2003-11-04 20:58:53','2021-02-16 13:23:33'),(37,'reichert180','Miles','Reichert','williamson.silas@example.net','1-933-989-4793x71995','1994-09-28 18:43:25','2021-02-16 13:23:33'),(38,'brakus180','Amy','Brakus','amelie88@example.com','063.225.4413x286','2004-10-19 10:48:22','2021-02-16 13:23:33'),(39,'kling160','Glenda','Kling','carlo.gleason@example.com','(154)467-4790x94630','1975-12-08 19:43:57','2021-02-16 13:23:33'),(40,'mitchell161','Mayra','Mitchell','patricia44@example.com','946.803.5929x395','1994-02-05 03:54:59','2021-02-16 13:23:33'),(41,'marks126','Miller','Marks','maverick.luettgen@example.net','248-602-3905x464','1981-10-21 22:28:08','2021-02-16 13:23:33'),(42,'erdman146','Alejandra','Erdman','sanford.marian@example.com','079.462.0585x60702','1989-12-09 15:46:35','2021-02-16 13:23:33'),(43,'hessel152','Kamryn','Hessel','lenora.wisoky@example.org','09417190181','2018-05-19 00:37:40','2021-02-16 13:23:33'),(44,'goyette124','Meredith','Goyette','solon.deckow@example.org','1-661-527-5813x3977','1979-08-30 02:30:58','2021-02-16 13:23:33'),(45,'blanda163','Hattie','Blanda','kunde.milan@example.com','1-152-684-5153x8262','2020-05-09 08:22:48','2021-02-16 13:23:33'),(46,'bednar145','Haylie','Bednar','pjones@example.org','1-301-269-1588','1996-08-24 23:26:51','2021-02-16 13:23:33'),(47,'baumbach135','Johathan','Baumbach','pwiza@example.com','(875)153-3606x0691','2012-09-28 21:04:29','2021-02-16 13:23:33'),(48,'littel141','Tanya','Littel','bkilback@example.org','(991)049-8327x2701','2018-11-27 02:43:03','2021-02-16 13:23:33'),(49,'kuhic101','Alden','Kuhic','leora93@example.org','300.446.0490','2003-02-14 15:58:32','2021-02-16 13:23:33'),(50,'mitchell182','Brannon','Mitchell','travis.shields@example.org','1-526-383-4936','1989-09-08 16:30:01','2021-02-16 13:23:33'),(51,'altenwerth108','Susanna','Altenwerth','josefa.grady@example.com','1-643-634-8745','1975-10-24 08:00:52','2021-02-16 13:23:33'),(52,'bins194','Haleigh','Bins','anderson.lizeth@example.com','736-041-5906x33965','2010-03-17 19:51:09','2021-02-16 13:23:33'),(53,'bartell147','Kaya','Bartell','iharvey@example.net','(917)075-2323x017','2007-03-24 06:05:26','2021-02-16 13:23:33'),(54,'toy152','Adelbert','Toy','darrin86@example.com','(860)150-5625x064','1993-07-18 09:12:40','2021-02-16 13:23:33'),(55,'zboncak120','Sandy','Zboncak','feest.jackeline@example.org','856.278.4122','1971-10-06 16:57:58','2021-02-16 13:23:33'),(56,'mueller144','Aliza','Mueller','murphy.wilford@example.net','1-402-951-5028x28122','2020-09-15 08:19:57','2021-02-16 13:23:33'),(57,'schowalter162','Llewellyn','Schowalter','kcrooks@example.com','549.808.9200x8286','1988-03-14 16:20:36','2021-02-16 13:23:33'),(58,'schaden177','Lisa','Schaden','wilburn61@example.org','+93(8)4182045750','1992-03-23 18:35:13','2021-02-16 13:23:33'),(59,'mueller101','Margarita','Mueller','domenic.kassulke@example.org','(642)215-4690','1973-01-05 16:44:48','2021-02-16 13:23:33'),(60,'medhurst173','Mollie','Medhurst','marjolaine.graham@example.org','+91(6)0540644329','1993-05-12 20:48:23','2021-02-16 13:23:33'),(61,'gorczany165','Lavon','Gorczany','kuhic.jamison@example.com','00717559205','2021-02-08 22:32:48','2021-02-16 13:23:33'),(62,'heidenreich106','Keaton','Heidenreich','hgaylord@example.org','(073)398-2317','2004-04-01 16:11:49','2021-02-16 13:23:33'),(63,'streich133','Cloyd','Streich','cpouros@example.com','1-461-753-4079x58530','1971-10-29 10:47:26','2021-02-16 13:23:33'),(64,'lind150','Tommie','Lind','xfisher@example.net','811.304.8146x780','1991-09-22 07:26:39','2021-02-16 13:23:33'),(65,'volkman150','Eddie','Volkman','ispinka@example.org','(533)221-3701x7516','1994-06-02 07:56:46','2021-02-16 13:23:33'),(66,'murphy102','Cristopher','Murphy','pwalsh@example.com','191.851.2983','1994-10-30 16:24:32','2021-02-16 13:23:33'),(67,'hauck160','Rosemary','Hauck','hand.bertha@example.net','837.428.9283','1999-08-19 17:33:58','2021-02-16 13:23:33'),(68,'feest196','Beth','Feest','maeve.christiansen@example.com','851-773-4290x308','2018-12-17 06:00:51','2021-02-16 13:23:33'),(69,'durgan199','Leopold','Durgan','grant.torrance@example.net','863-162-0754x316','2015-09-07 14:38:41','2021-02-16 13:23:33'),(70,'anderson107','Oceane','Anderson','rhett81@example.net','880.577.4862x6777','1987-12-30 15:21:53','2021-02-16 13:23:33'),(71,'hintz138','Sarah','Hintz','ereichert@example.com','(182)222-3263','1986-09-23 06:15:39','2021-02-16 13:23:33'),(72,'mosciski171','Mafalda','Mosciski','rodger44@example.com','575-419-8271x400','1995-05-22 10:55:51','2021-02-16 13:23:33'),(73,'simonis140','Lolita','Simonis','herman.kaelyn@example.org','1-670-903-3758x16240','1971-12-02 16:15:20','2021-02-16 13:23:33'),(74,'casper189','Myrtis','Casper','vrenner@example.com','966.986.9757','1983-11-18 08:34:53','2021-02-16 13:23:33'),(75,'hodkiewicz125','Malvina','Hodkiewicz','ricardo.jakubowski@example.net','838.857.0784','1979-12-03 13:51:30','2021-02-16 13:23:33'),(76,'kunde158','Gavin','Kunde','frami.betty@example.org','751-211-8161','2011-12-19 02:05:47','2021-02-16 13:23:33'),(77,'blick114','Weldon','Blick','smitham.marjolaine@example.com','06295672628','1988-12-08 17:47:12','2021-02-16 13:23:33'),(78,'ernser197','Letitia','Ernser','nkihn@example.net','1-748-745-3010','1976-04-15 00:03:05','2021-02-16 13:23:33'),(79,'medhurst143','Destany','Medhurst','sgreen@example.net','608.535.9048x34665','1980-03-28 08:44:20','2021-02-16 13:23:33'),(80,'collier126','Anne','Collier','katelynn79@example.net','07772427034','1982-02-06 07:14:24','2021-02-16 13:23:33'),(81,'marks100','Tanya','Marks','clarabelle61@example.org','873.722.0064','1981-09-12 00:40:17','2021-02-16 13:23:33'),(82,'mertz124','Camila','Mertz','mstoltenberg@example.com','+12(5)9996511666','2006-05-20 17:22:58','2021-02-16 13:23:33'),(83,'ankunding118','Milton','Ankunding','letitia87@example.net','592.939.7430','2005-11-13 06:16:33','2021-02-16 13:23:33'),(84,'kuhn120','Rogers','Kuhn','maymie.shields@example.com','072-151-8650x478','1971-12-01 21:32:57','2021-02-16 13:23:33'),(85,'schulist147','Marquise','Schulist','ojacobs@example.net','813.704.0643x031','2001-07-21 16:36:02','2021-02-16 13:23:33'),(86,'daniel175','Patsy','Daniel','murphy.darien@example.com','(553)865-2391','1988-09-22 17:10:45','2021-02-16 13:23:33'),(87,'jenkins134','Kali','Jenkins','kailyn.bechtelar@example.org','482.568.3219x5097','1973-03-15 17:41:24','2021-02-16 13:23:33'),(88,'macejkovic145','Milton','Macejkovic','lambert69@example.net','(649)018-7971x38743','1974-09-16 21:22:48','2021-02-16 13:23:33'),(89,'hand125','Gerhard','Hand','dax29@example.net','1-480-633-9791','2006-12-22 16:32:42','2021-02-16 13:23:33'),(90,'sanford191','Alison','Sanford','gtreutel@example.com','05938010386','1980-02-18 11:54:10','2021-02-16 13:23:33'),(91,'hauck180','Roy','Hauck','leilani52@example.org','423-831-1324','2010-08-27 04:52:58','2021-02-16 13:23:33'),(92,'aufderhar126','Joel','Aufderhar','bennett77@example.net','748.228.1101x285','2015-03-09 03:49:21','2021-02-16 13:23:33'),(93,'waters190','Greg','Waters','dock.mohr@example.org','+15(9)2078869001','1995-01-23 20:56:42','2021-02-16 13:23:33'),(94,'lynch171','Vance','Lynch','savanna.daniel@example.org','1-745-388-5067','1980-10-08 03:00:42','2021-02-16 13:23:33'),(95,'schinner189','Warren','Schinner','maxwell.o\'hara@example.com','962.174.9423x113','1983-10-14 20:28:25','2021-02-16 13:23:33'),(96,'baumbach131','Barrett','Baumbach','kohler.josie@example.net','+60(1)6126811445','1997-04-23 17:39:29','2021-02-16 13:23:33'),(97,'mohr188','Jerad','Mohr','ejacobs@example.net','371-533-5859x8036','1993-05-14 07:45:59','2021-02-16 13:23:33'),(98,'hayes147','Janie','Hayes','kadin44@example.com','06588043988','1981-01-22 14:19:47','2021-02-16 13:23:33'),(99,'huels173','Retta','Huels','littel.mary@example.net','+69(7)6348638660','2014-09-30 15:45:09','2021-02-16 13:23:33'),(100,'grady123','Delta','Grady','qwisozk@example.net','+19(4)3012230169','1985-02-16 11:40:54','2021-02-16 13:23:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-16 18:31:34
