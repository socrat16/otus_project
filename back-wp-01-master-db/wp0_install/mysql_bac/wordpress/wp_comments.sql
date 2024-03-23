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
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Комментатор WordPress','wapuu@wordpress.example','https://ru.wordpress.org/','','2024-03-07 12:50:40','2024-03-07 09:50:40','Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0),(2,12,'wordpress','nikiiitka@ya.ru','http://130.193.40.247:9915','109.63.249.25','2024-03-07 20:33:22','2024-03-07 17:33:22','jlljljkljk',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,1),(3,12,'wordpress','nikiiitka@ya.ru','http://130.193.40.247:9915','109.63.249.25','2024-03-07 20:33:25','2024-03-07 17:33:25','liliu;iu',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,1),(4,12,'вася','Nikiiitka@yandex.ru','http://еее','109.63.249.25','2024-03-07 20:35:47','2024-03-07 17:35:47','grrrr',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(5,12,'wordpress','nikiiitka@ya.ru','http://130.193.40.247:9915','109.63.249.25','2024-03-07 20:38:28','2024-03-07 17:38:28','lll',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,1),(6,12,'wordpress','nikiiitka@ya.ru','http://130.193.40.247:9915','109.63.249.25','2024-03-07 20:38:35','2024-03-07 17:38:35','2038',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,1),(7,12,'0','neoneo23232391@gmail.com','http://9','109.63.249.25','2024-03-07 20:39:02','2024-03-07 17:39:02','0',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(8,12,'jhljghl','neoneo23232391@gmail.com','http://hjlglhgl','109.63.249.25','2024-03-07 20:39:30','2024-03-07 17:39:30','0000000000000000000000000000000000000',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',6,0),(9,12,'wordpress','nikiiitka@ya.ru','http://130.193.40.247:9915','109.63.249.25','2024-03-07 20:41:35','2024-03-07 17:41:35','888888888888888888',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',8,1),(10,12,'hui','Nikiiitka@yandex.ru','http://hui','109.63.249.25','2024-03-07 20:43:48','2024-03-07 17:43:48','titov',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(11,12,'CREATE','CREATE@CREATE.ru','http://CREATE','109.63.249.25','2024-03-07 20:54:16','2024-03-07 17:54:16','CREATE',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(12,12,'hj','neoneo23232391@gmail.com','http://jh','109.63.249.25','2024-03-07 21:20:58','2024-03-07 18:20:58','hj',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(13,12,'tubik','tubik@bk.ru','','10.128.0.19','2024-03-07 21:46:44','2024-03-07 18:46:44','olalal lol',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(14,12,'Адрес WordPress (URL): https://mhthemes.com/','nikita.agapov@v.ru','http://v','10.128.0.19','2024-03-07 23:05:27','2024-03-07 20:05:27','Адрес WordPress (URL): https://mhthemes.com/',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(15,16,'ufgttttttttttttttttt','Nikiiitka@yandex.ru','http://y','10.128.0.19','2024-03-08 00:01:11','2024-03-07 21:01:11','y',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(16,16,'u','Nikiiitka@yandex.ru','http://i','10.128.0.19','2024-03-08 00:01:42','2024-03-07 21:01:42','iii',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(17,16,'tyu','Nikiiitka@yandex.ru','','10.128.0.19','2024-03-08 00:02:11','2024-03-07 21:02:11','tyu',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(18,16,'tr','neoneo23232391@gmail.com','http://tr','10.128.0.19','2024-03-08 11:32:15','2024-03-08 08:32:15','tr',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(19,16,'tretreter','nikiiikta@ya.ru','http://tretertretert','10.128.0.19','2024-03-08 12:10:24','2024-03-08 09:10:24','retretretretret',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(20,16,'666666666666','nikiiitka@ya.ru','http://666666666666','10.128.0.19','2024-03-08 13:08:49','2024-03-08 10:08:49','666666666666',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(21,16,'ttg','ff@c.r','','10.128.0.19','2024-03-08 15:18:19','2024-03-08 12:18:19','fff',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(22,16,'yto','ff@c.r','','10.128.0.19','2024-03-08 15:18:37','2024-03-08 12:18:37','yti',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(23,16,'ytoytoytoytoytoytoytoytoytoytoytoytoytoytoytoytoytoyto','ff@c.r','','10.128.0.19','2024-03-08 17:31:00','2024-03-08 14:31:00','jjj',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(24,16,'gg','ff@c.r','','10.128.0.19','2024-03-09 17:01:18','2024-03-09 14:01:18','tg',0,'post-trashed','Mozilla/5.0 (Linux; arm_64; Android 14; 23021RAA2Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.80 YaBrowser/24.1.6.80.00 SA/3 Mobile Safari/537.36','comment',0,0),(25,16,'лрполорл','nikiiikta@ya.ru','','10.128.0.19','2024-03-09 17:13:04','2024-03-09 14:13:04','орлорлпр',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,0),(26,50,'wordpress','nikiiitka@ya.ru','http://130.193.40.247:9915','10.128.0.19','2024-03-10 16:29:24','2024-03-10 13:29:24','ukyu',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','comment',0,1);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
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
