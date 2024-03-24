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
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wordpress','$P$B.Tz29.FWTTM/QzBGXIe2tpVBvWiju/','wordpress','new@email.com','http://130.193.40.247:9915','2024-03-07 09:50:39','',0,'wordpress'),(2,'j','$P$B4lHEvG4W9FsB1BloRR7gDWWAkE7kq1','j','j@rrr.ru','http://j','2024-03-07 17:22:14','1709832134:$P$Bxg1fxUBhJQFRjVKV0BZEJHA5wEg/V1',0,'j j'),(3,'erik','$P$BzAqZAjZ6F8GXnsNBdy4iKRojfMp6k0','erik','erik@erik.erik','','2024-03-10 14:19:39','1710080379:$P$BSmA5kmf.r2WyvTbpIDPx7gDTxhqw81',0,'erik erik'),(4,'maxik','$P$BhITv/5pap7w8dRZ9/ciOWXpiBRlPv1','maxik','maxik@maxik.maxik','http://maxik','2024-03-10 14:20:00','1710080402:$P$B48xhEqNBQW8o.I33GNrnUB3/8HEk90',0,'maxik maxik'),(5,'slobotok','$P$BGmY9J44Sr7epj6Z765nbaAxHD3xFu.','slobotok','slobotok@gmail.com','http://slobotok','2024-03-11 16:48:02','',0,'slobotok slobotok'),(6,'slobotok16','$P$B2bCIvJ8gtFMbl39qobMRQ50C53x6d/','slobotok16','slobotok16@slobotok16.uu','http://slobotok16','2024-03-11 16:50:08','1710175809:$P$BiYv49aWeWyL.q2KyzjiYnd1yFDS1h.',0,'slobotok16 slobotok16'),(7,'mysqlmysqlmysqlmysql','$P$BCkD9Ly.fyiJEYw3Qckk6ppUJ4Xhay0','mysqlmysqlmysqlmysql','mysqlmysql@gmail.com','http://mysql','2024-03-11 20:31:40','',0,'mysql mysql'),(8,'korona','$P$BMytVi4EdjHLD5PvZxrFMjom2HSDpM0','korona','korona@korona.korona','','2024-03-11 20:34:20','',0,'korona korona'),(9,'eret','$P$BGihb883N2xhpyJsbgBVDG35zHbosr0','eret','eret@eret.ru','http://eret','2024-03-15 17:25:40','1710523541:$P$B4OsStT11MWS/o2tJTQnbMIUV0EiyR.',0,'eret eret');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:15:02
