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
-- Table structure for table `rachunek`
--

DROP TABLE IF EXISTS `rachunek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rachunek` (
  `idrachunek` int NOT NULL AUTO_INCREMENT,
  `numer_rachunku` varchar(45) DEFAULT NULL,
  `data_zalozenia` varchar(45) DEFAULT NULL,
  `czy_karta` varchar(45) DEFAULT NULL,
  `krajowy` tinyint DEFAULT NULL,
  `zagraniczny` varchar(45) DEFAULT NULL,
  `id_klient` int DEFAULT NULL,
  `id_karta` int DEFAULT NULL,
  PRIMARY KEY (`idrachunek`),
  KEY `ID_KLIENT_idx` (`id_klient`),
  KEY `ID_KARTA_idx` (`id_karta`),
  CONSTRAINT `ID_KARTA` FOREIGN KEY (`id_karta`) REFERENCES `karta_debetowa` (`id`),
  CONSTRAINT `ID_KLIENTA` FOREIGN KEY (`id_klient`) REFERENCES `klient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rachunek`
--

LOCK TABLES `rachunek` WRITE;
/*!40000 ALTER TABLE `rachunek` DISABLE KEYS */;
INSERT INTO `rachunek` VALUES (1,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL),(2,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL),(3,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL),(4,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL),(5,'a','a','Tak',NULL,NULL,14,4),(6,'a','a','Tak',NULL,NULL,15,5),(7,'1212312313212313123','asdasd','Tak',NULL,NULL,16,6),(8,'a','a','Tak',NULL,NULL,17,7),(9,'','a','Tak',NULL,NULL,18,8),(10,'3453434253453425345345','wtwertwer','Tak',NULL,NULL,19,9),(11,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL),(12,'','','Tak',NULL,NULL,20,10),(13,'fgh','asdasd','Tak',NULL,NULL,21,11),(14,'','','Tak',NULL,NULL,22,12),(15,'','','Tak',NULL,NULL,23,13),(16,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL),(17,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL),(18,'','','Tak',NULL,NULL,24,14),(19,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL),(20,'3453535345345',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rachunek` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-14 17:59:20
