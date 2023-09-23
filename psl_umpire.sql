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
-- Table structure for table `umpire`
--

DROP TABLE IF EXISTS `umpire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `umpire` (
  `umpire_Id` int unsigned NOT NULL AUTO_INCREMENT,
  `umpire_Name` varchar(80) NOT NULL,
  `D.O.B` date NOT NULL,
  `Nationality` varchar(45) NOT NULL,
  `years_of_Experience` int unsigned NOT NULL,
  PRIMARY KEY (`umpire_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umpire`
--

LOCK TABLES `umpire` WRITE;
/*!40000 ALTER TABLE `umpire` DISABLE KEYS */;
INSERT INTO `umpire` VALUES (1,'Faisal Afridi','1997-12-31','Pakistani',5),(2,'Aleem Dar','1968-06-06','Pakistani',21),(3,'Michael Gough','1979-12-18','British',15),(4,'Zameer Haider','1962-09-30','Pakistani',15),(5,'Richard Illingworth','1963-12-23','British',20),(6,'Ahsan Raza','1974-05-29','Pakistani',15),(7,'Shozab Raza','1964-10-31','Pakistani',9),(8,'Rashid Riaz','1976-02-27','Pakistani',6),(9,'Asif Yaqoob','1973-11-11','Pakistani',6),(10,'Imran Javed','1995-06-06','Pakistani',8);
/*!40000 ALTER TABLE `umpire` ENABLE KEYS */;
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
