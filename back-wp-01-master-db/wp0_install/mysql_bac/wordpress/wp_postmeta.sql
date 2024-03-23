-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,1,'_edit_lock','1709842549:1'),(6,2,'_edit_lock','1710073884:1'),(7,10,'origin','theme'),(8,12,'_edit_lock','1709841647:1'),(11,16,'_edit_lock','1709842739:1'),(14,12,'_wp_trash_meta_status','publish'),(15,12,'_wp_trash_meta_time','1709842298'),(16,12,'_wp_desired_post_slug','help'),(17,12,'_wp_trash_meta_comments_status','a:13:{i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"0\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"0\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"0\";i:11;s:5:\"trash\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}'),(18,1,'_wp_trash_meta_status','publish'),(19,1,'_wp_trash_meta_time','1709842704'),(20,1,'_wp_desired_post_slug','%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),(21,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:5:\"trash\";}'),(23,22,'origin','theme'),(24,24,'_wp_attached_file','2024/03/Screenshot_1.jpg'),(25,24,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:353;s:6:\"height\";i:590;s:4:\"file\";s:24:\"2024/03/Screenshot_1.jpg\";s:8:\"filesize\";i:72352;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Screenshot_1-179x300.jpg\";s:5:\"width\";i:179;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15087;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7278;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(26,25,'origin','theme'),(27,26,'_wp_attached_file','2024/03/Screenshot_1-1.jpg'),(28,26,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:353;s:6:\"height\";i:590;s:4:\"file\";s:26:\"2024/03/Screenshot_1-1.jpg\";s:8:\"filesize\";i:72352;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Screenshot_1-1-179x300.jpg\";s:5:\"width\";i:179;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15087;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Screenshot_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7278;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(29,16,'_wp_trash_meta_status','publish'),(30,16,'_wp_trash_meta_time','1710072229'),(31,16,'_wp_desired_post_slug','%d0%b2%d0%b0%d1%88%d0%b5-%d0%b8%d0%bc%d1%8f'),(32,16,'_wp_trash_meta_comments_status','a:11:{i:15;s:5:\"trash\";i:16;s:5:\"trash\";i:17;s:5:\"trash\";i:18;s:5:\"trash\";i:19;s:5:\"trash\";i:20;s:5:\"trash\";i:21;s:5:\"trash\";i:22;s:5:\"trash\";i:23;s:1:\"0\";i:24;s:1:\"0\";i:25;s:1:\"0\";}'),(33,2,'_wp_trash_meta_status','publish'),(34,2,'_wp_trash_meta_time','1710074045'),(35,2,'_wp_desired_post_slug','sample-page'),(36,3,'_wp_trash_meta_status','draft'),(37,3,'_wp_trash_meta_time','1710074047'),(38,3,'_wp_desired_post_slug','privacy-policy'),(39,45,'origin','theme'),(40,48,'origin','theme'),(41,50,'_edit_lock','1710078996:1'),(42,52,'origin','theme'),(43,54,'_edit_lock','1710077608:1'),(44,55,'_edit_lock','1710077614:1'),(45,56,'footnotes',''),(46,50,'_wp_trash_meta_status','publish'),(47,50,'_wp_trash_meta_time','1710077898'),(48,50,'_wp_desired_post_slug','comments'),(49,50,'_wp_trash_meta_comments_status','a:1:{i:26;s:1:\"1\";}'),(50,60,'origin','theme'),(51,61,'origin','theme'),(52,62,'origin','theme'),(53,66,'origin','theme'),(54,85,'_edit_lock','1710583327:1'),(55,86,'_edit_lock','1710583477:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:15:01
