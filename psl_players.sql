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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_Id` int unsigned NOT NULL AUTO_INCREMENT,
  `player_First_Name` varchar(50) NOT NULL,
  `player_Last_Name` varchar(50) NOT NULL,
  `D.O.B` date NOT NULL,
  `Height` float NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Style` varchar(45) NOT NULL,
  `Nationality` varchar(45) NOT NULL,
  `Performance` int NOT NULL,
  `Category` varchar(50) NOT NULL,
  `team_Id` int unsigned NOT NULL,
  PRIMARY KEY (`player_Id`),
  KEY `team select_idx` (`team_Id`),
  CONSTRAINT `team select` FOREIGN KEY (`team_Id`) REFERENCES `teams` (`team_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Babar','Azam','1994-10-15',5.11,'Batter','Right Hand','Pakistani',94,'Platinum',2),(2,'Muhammad','Rizwan','1992-06-01',5.7,'Wicket-Keeper','Right Hand','Pakistani',92,'Silver',4),(3,'Sarfaraz','Ahmed','1987-05-22',5.8,'Wicket-Keeper','Right Hand','Pakistani',85,'Platinum',6),(4,'Wahab','Riaz','1985-06-28',6.2,'Bowler','Left Hand','Pakistani',86,'Platinum',5),(5,'Sohail','Akhtar','1986-03-02',5.8,'All-rounder','Right Hand','Pakistani',82,'Silver',3),(6,'Shadab','Khan','1998-10-04',5.11,'All-rounder','Right Hand','Pakistani',88,'Platinum',1),(7,'Imad','Wasim','1988-12-18',6.1,'All-rounder','Left Hand','Pakistani',89,'Diamond',2),(8,'Muhammad','Hafeez','1980-10-17',5.9,'All-rounder','Right Hand','Pakistani',88,'Platinum',3),(9,'Rilee','Rossouw','1989-10-09',6,'Batter','Left Hand','South African',90,'Platinum',4),(10,'Shoaib','Malik','1982-02-01',5.11,'All-rounder','Right Hand','Pakistani',87,'Platinum',5),(11,'Mohammad','Hasnain','2000-04-05',6.1,'Bowler','Right Hand','Pakistani',89,'Diamond',6),(12,'Colin','Munro','1987-03-11',5.11,'Batter','Left Hand','South African',85,'Diamond',1),(13,'Muhammad','Amir','1992-04-13',6.2,'Bowler','Left Hand','Pakistani',87,'Platinum',2),(14,'Shaheen Shah','Afridi','2000-04-06',6.6,'Bowler','Left Hand','Pakisitani',86,'Platinum',3),(15,'Sohail','Tanvir','1984-12-12',6.3,'Bowler','Left Hand','Pakistani',80,'Diamond',4),(16,'Kamran','Akmal','1982-01-13',5.6,'Wicket-keeper','Right Hand','Pakistani',82,'Diamond',5),(17,'Muhammad','Nawaz','1994-03-21',5.11,'All-rounder','Left Hand','Pakistani',83,'Diamond',6),(18,'Faheem','Ashraf','1994-01-16',5.11,'Bowler','Right Hand','Pakistani',84,'Diamond',1),(19,'Aamer','Yamin','1990-06-26',6.1,'All-rounder','Right Hand','Pakistani',78,'Gold',2),(20,'Fakhar','Zaman','1990-04-10',5.11,'Batter','Left Hand','Pakistani',83,'Diamond',3),(21,'Muhammad Imran','Tahir','1979-03-27',5.11,'Bowler','Right Hand','South African',82,'Diamond',4),(22,'Haider','Ali','2000-10-02',6,'Batter','Right Hand','Pakistani',79,'Gold',5),(23,'Azam','Khan','1998-08-10',5.8,'Wicket-keeper','Right Hand','Pakistani',77,'Gold',6),(24,'Muhammad Hussain','Talat','1996-02-12',5.9,'Batter','Left Hand','Pakistani',79,'Gold',1),(25,'Sharjeel ','Khan','1989-08-14',5.11,'Batter','Left Hand','Pakistani',78,'Gold',2),(26,'Haris','Rauf','1993-11-07',5.11,'Bowler','Right Hand','Pakistani',81,'Diamond',3),(27,'Khushdil','Shah','1995-02-07',5.9,'Batter','Left Hand','Pakistani',80,'Diamond',4),(28,'David Andrew','Miller','1989-06-10',6,'Batter','Left Hand','South African',86,'Platinum',5),(29,'Naseem Abbas','Shah','2003-02-15',5.11,'Bowler','Right Hand','Pakistani',79,'Gold',6),(30,'Asif','Ali','1991-11-01',5.7,'Batter','Right Hand','Pakistani',77,'Gold',1),(31,'Waqas','Maqsood','1987-11-04',5.11,'All-rounder','Left Hand','Pakistani',72,'Silver',2),(32,'Ben Robert','Dunk','1987-03-11',6,'Batter','Left Hand','Australian',76,'Gold',3),(33,'Usman','Qadir','1993-08-10',5.11,'Bowler','Right Hand','Pakistani',77,'Gold',4),(34,'Sherfane Eviston','Rutherford','1998-08-15',5.9,'All-rounder','Left Hand','Guyanese',83,'Diamond',5),(35,'Zahid','Mahmood','1988-03-20',5.7,'Bowler','Right Hand','Pakistani',74,'Silver',6),(36,'Muhammad Musa','Khan','2000-08-28',5.9,'Bowler','Right Hand','Pakistani',71,'Silver',1),(37,'Arshad','Iqbal','2000-11-26',6.2,'Bowler','Right Hand','Pakistani',68,'Emerging',2),(38,'Dilbar','Hussain','1993-02-20',5.7,'Bowler','Right Hand','Pakistani',76,'Gold',3),(39,'Sohail','Khan','1984-03-06',6.4,'Bowler','Right Hand','Pakistani',74,'Silver',4),(40,'Amad','Butt','1995-05-10',6,'All-rounder','Left Hand','Pakistani',78,'Gold',5),(41,'Usman Khan','Shinwari','1994-01-05',5.9,'Bowler','Left Hand','Pakistani',79,'Gold',6),(42,'Zafar','Gohar','1995-02-01',5.11,'Bowler','Left Hand','Pakistani',73,'Silver',1),(43,'Chadwick','Walton','1985-07-03',5.9,'Batter','Right Hand','West Indian',79,'Gold',2),(44,'Rashid Khan','Arman','1998-09-20',5.9,'All-rounder','Right Hand','Afghani',89,'Platinum',3),(45,'Sohaib','Maqsood','1987-04-15',6.2,'Batter','Right Hand','Pakistani',73,'Silver',4),(46,'Umaid','Asif','1984-04-30',6.5,'Bowler','Right Hand','Pakistani',75,'Silver',5),(47,'Cameron Scott','Delport','1989-05-12',5.9,'All-rounder','Left Hand','British-South African',74,'Silver',6),(48,'Hassan','Ali','1994-07-02',5.9,'Bowler','Right Hand','Pakistani',88,'Platinum',1),(49,'Danish','Aziz','1995-11-20',6,'All-rounder','Left Hand','Pakistani',72,'Silver',2),(50,'Zeeshan','Ashraf','1992-05-11',5.8,'Batter','Left Hand','Pakistani',71,'Silver',3),(51,'Shan','Masood Khan','1989-10-14',6.3,'Batter','Left Hand','Pakistani',77,'Gold',4),(52,'Imam','Ul-Haq','1995-12-22',5.9,'Batter','Left Hand','Pakistani',74,'Silver',5),(53,'Abdul','Nasir','1998-12-25',5.8,'Bowler','Right Hand','Pakistani',73,'Silver',6),(54,'Rohail','Nazir','2001-10-10',5.7,'Batter','Right Hand','Pakistani',70,'Silver',1),(55,'Muhammad','Ilyas','1999-03-21',5.9,'Bowler','Right Hand','Pakistani',73,'Silver',2),(56,'Salman','Ali Agha','1993-11-23',6,'All-rounder','Right Hand','Pakistani',72,'Silver',3),(57,'Sohaib','Ullah','1996-03-20',5.9,'Bowler','Left Hand','Pakistani',72,'Silver',4),(58,'Muhammad Imran','Randhawa','1996-12-25',5.11,'All-rounder','Right Hand','Pakistani',71,'Silver',5),(59,'Saim','Ayub','2002-05-24',5.8,'Batter','Left Hand','Pakistani',68,'Emerging',6),(60,'Iftikhar','Ahmed','1990-09-03',5.11,'Batter','Right Hand','Pakistani',75,'Silver',1),(61,'Zeeshan','Malik','1996-12-26',5.8,'Batter','Right Hand','Pakistani',71,'Silver',2),(62,'Muhammad','Faizan','1997-05-07',5.11,'All-rounder','Right Hand','Pakistani',71,'Silver',3),(63,'Shahnawaz','Dahani','1998-08-05',6.2,'Bowler','Right Hand','Pakistani',69,'Emerging',4),(64,'Muhammad','Irfan','1982-06-06',7.1,'Bowler','Left Hand','Pakistani',74,'Silver',5),(65,'Arish Ali','Khan','2000-12-20',5.9,'All-rounder','Left hand','Pakistani',66,'Emerging',6),(66,'Muhammad','Wasim Wazir','2001-08-25',6.2,'All-rounder','Right Hand','Pakistani',68,'Emerging',1);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
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
