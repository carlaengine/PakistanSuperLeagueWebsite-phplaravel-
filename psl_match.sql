CREATE DATABASE  IF NOT EXISTS `psl` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `psl`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: psl
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match` (
  `match_id` int unsigned NOT NULL AUTO_INCREMENT,
  `match_Date` date NOT NULL,
  `match_Time` time NOT NULL,
  `team_1_Id` int unsigned NOT NULL,
  `team_2_Id` int unsigned NOT NULL,
  `Commentator` varchar(80) NOT NULL,
  `toss_Winner` int unsigned NOT NULL,
  `choose_To` varchar(45) NOT NULL,
  `Score` int NOT NULL,
  `Stats` varchar(45) NOT NULL,
  `stadium_Id` int unsigned NOT NULL,
  `umpire_Id` int unsigned NOT NULL,
  PRIMARY KEY (`match_id`),
  KEY `team match_idx` (`team_1_Id`,`team_2_Id`),
  KEY `team rivals2_idx` (`team_2_Id`),
  KEY `umpire select_idx` (`umpire_Id`),
  KEY `stadium select_idx` (`stadium_Id`),
  KEY `team winner_idx` (`toss_Winner`),
  CONSTRAINT `stadium select` FOREIGN KEY (`stadium_Id`) REFERENCES `stadium` (`stadium_Id`),
  CONSTRAINT `team rivals` FOREIGN KEY (`team_1_Id`) REFERENCES `teams` (`team_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team rivals2` FOREIGN KEY (`team_2_Id`) REFERENCES `teams` (`team_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team winner` FOREIGN KEY (`toss_Winner`) REFERENCES `teams` (`team_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `umpire select` FOREIGN KEY (`umpire_Id`) REFERENCES `umpire` (`umpire_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` VALUES (1,'2021-02-20','19:00:00',2,6,'Ramiz Raja',2,'Field',121,'Karachi won by 7 wickets',2,6),(2,'2021-02-21','14:00:00',3,5,'Ramiz Raja',3,'Field',140,'Lahore won by 4 wickets',2,7),(3,'2021-02-21','19:00:00',1,4,'Wasim Akram',1,'Field',150,'Islamabad won by 3 wickets',2,5),(4,'2021-02-22','19:00:00',3,6,'Urooj Mumtaz',3,'Field',178,'Lahore won 9 wickets',2,9),(5,'2021-02-23','19:00:00',4,5,'Alan Wilkins',5,'Field',193,'Peshawar won by 6 wockets',2,2),(6,'2021-02-24','19:00:00',1,2,'Danny Morrison',1,'Field',196,'Islamabad won 5 wickets',2,8),(7,'2021-02-26','15:00:00',3,4,'JP Duminy',4,'Field',157,'Multan won by 7 wickets',2,1),(8,'2021-02-26','20:00:00',5,6,'Sana Mir',5,'Field',198,'Peshawar won by 3 wickets',2,5),(9,'2021-02-27','14:00:00',2,4,'Ramiz Raja',2,'Field',195,'Karachi won by 7 wickets',2,8),(10,'2021-02-27','19:00:00',1,5,'Dominic Cork',5,'Field',118,'Peshawar won 6 wickets',2,7),(11,'2021-02-28','19:00:00',2,3,'Alan Wilkins',3,'Field',186,'Lahore won by 6 wickets',2,6),(12,'2021-03-02','21:00:00',1,6,'David Gower',1,'Field',156,'Islamabad won by 6 wickets',2,7),(13,'2021-03-03','14:00:00',2,5,'Bazid Khan',2,'Field',188,'Karachi won by 6 wickets',2,6),(14,'2021-03-03','19:00:00',4,6,'Danny Morrison',4,'Field',176,'Quetta won by 22 runs',2,5),(15,'2021-06-09','21:00:00',1,3,'Urooj Mumtaz',3,'Field',143,'Lahore won by 5 wickets',1,7),(16,'2021-06-10','18:00:00',2,4,'Alan Wilkins',2,'Field',176,'Multan won by 12 runs',1,8),(17,'2021-06-10','22:00:00',3,5,'Dominic Cork',5,'Field',170,'Lahore won by 10 runs',1,6),(18,'2021-06-11','20:00:00',1,6,'David Gower',1,'Field',133,'Islamabad won by 10 wickets',1,8),(19,'2021-06-12','20:00:00',5,6,'Bazid Khan',6,'Field',197,'Peshawar won by 61 runs',1,2),(20,'2021-06-13','18:00:00',1,3,'Ramiz Raja',1,'Bat',152,'Islamabad won by 28 runs',1,6),(21,'2021-06-13','23:00:00',4,5,'Danny Morrison',4,'Field',166,'Multan won by 8 wickets',1,9),(22,'2021-06-14','21:00:00',1,2,'Alan Wilkins',1,'Field',190,'Islamabad won by 8 wickets',1,7),(23,'2021-06-15','06:00:00',3,6,'Sana Mir',3,'Field',158,'Quetta won by 18 runs',1,7),(24,'2021-06-15','23:00:00',2,5,'JP Duminy',5,'Field',108,'Peshawar won by 6 wickets',1,8),(25,'2021-06-16','21:00:00',4,6,'Bazid Khan',6,'Field',183,'Multan won by 110 runs',1,9),(26,'2021-06-17','18:00:00',1,5,'Ramiz Raja',5,'Field',247,'Islamabad won by 15 runs',1,6),(27,'2021-06-17','23:00:00',2,3,'David Gower',2,'Bat',176,'Karachi won by 7 wickets',1,2),(28,'2021-06-18','21:00:00',3,4,'Bazid Khan',3,'Field',169,'Multan won 80 runs',1,9),(29,'2021-06-19','18:00:00',2,6,'Dominic Cork',2,'Bat',176,'Karachi won by 14',1,6),(30,'2021-06-19','23:00:00',1,4,'Urooj Mumtaz',1,'Field',149,'Islamabad won by 4 wickets',1,9),(31,'2021-06-21','18:00:00',1,4,'Alan Wilkins',4,'Bat',180,'Multan won by 31 runs',1,2),(32,'2021-06-21','23:00:00',2,5,'David Gower',5,'Field',175,'Peshawar won by 5 wickets',1,9),(33,'2021-06-22','21:00:00',1,5,'Ramiz Raja ',5,'Field',174,'Peshawar won by 8 wickets',1,8),(34,'2021-06-24','21:00:00',4,5,'JP Duminy',5,'Field',206,'Multan won by 47 runs',1,9);
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10 23:05:07
