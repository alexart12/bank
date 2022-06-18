CREATE DATABASE  IF NOT EXISTS `bank7` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bank7`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: bank7
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `karta_debetowa`
--

DROP TABLE IF EXISTS `karta_debetowa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `karta_debetowa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nr_karty` varchar(45) DEFAULT NULL,
  `data_wydania` varchar(45) DEFAULT NULL,
  `data_wazności` varchar(45) DEFAULT NULL,
  `czy_visa` varchar(45) DEFAULT NULL,
  `czy_maestro` varchar(45) DEFAULT NULL,
  `czy_zagubiona` varchar(45) DEFAULT NULL,
  `data_zgubienia` varchar(45) DEFAULT NULL,
  `karta_debetowacol` varchar(45) DEFAULT NULL,
  `id_klient` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_KLIENT_idx` (`id_klient`),
  CONSTRAINT `ID_KLIENT` FOREIGN KEY (`id_klient`) REFERENCES `klient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karta_debetowa`
--

LOCK TABLES `karta_debetowa` WRITE;
/*!40000 ALTER TABLE `karta_debetowa` DISABLE KEYS */;
INSERT INTO `karta_debetowa` VALUES (1,'a','a','a',NULL,NULL,NULL,NULL,NULL,4),(2,'a','a','a',NULL,NULL,NULL,NULL,NULL,12),(3,'a','a','a',NULL,NULL,NULL,NULL,NULL,13),(4,'a','a','a',NULL,NULL,NULL,NULL,NULL,14),(5,'a','a','a',NULL,NULL,NULL,NULL,NULL,15),(6,'asdasdasd','wqeqweq','qweqweqwe',NULL,NULL,NULL,NULL,NULL,16),(7,'a','a','',NULL,NULL,NULL,NULL,NULL,17),(8,'a','a','a',NULL,NULL,NULL,NULL,NULL,18),(9,'324532453432','3245342553','345345345',NULL,NULL,NULL,NULL,NULL,19),(10,'','','',NULL,NULL,NULL,NULL,NULL,20),(11,'456456456456456546','rfghfgh576756','567567',NULL,NULL,NULL,NULL,NULL,21),(12,'','','',NULL,NULL,NULL,NULL,NULL,22),(13,'','','',NULL,NULL,NULL,NULL,NULL,23),(14,'','','',NULL,NULL,NULL,NULL,NULL,24);
/*!40000 ALTER TABLE `karta_debetowa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-14 17:59:19
