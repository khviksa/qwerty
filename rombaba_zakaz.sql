-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: rombaba
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `zakaz`
--

DROP TABLE IF EXISTS `zakaz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zakaz` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `data` varchar(30) DEFAULT NULL,
  `podacha` varchar(30) DEFAULT NULL,
  `nameprodavecId` int DEFAULT NULL,
  `nameklientId` int DEFAULT NULL,
  `nazvanieId` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `nameprodavecId` (`nameprodavecId`),
  KEY `nameklientId` (`nameklientId`),
  KEY `nazvanieId` (`nazvanieId`),
  CONSTRAINT `zakaz_ibfk_1` FOREIGN KEY (`nameprodavecId`) REFERENCES `prodavec` (`ID`),
  CONSTRAINT `zakaz_ibfk_2` FOREIGN KEY (`nameklientId`) REFERENCES `klient` (`ID`),
  CONSTRAINT `zakaz_ibfk_3` FOREIGN KEY (`nazvanieId`) REFERENCES `tovar` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zakaz`
--

LOCK TABLES `zakaz` WRITE;
/*!40000 ALTER TABLE `zakaz` DISABLE KEYS */;
INSERT INTO `zakaz` VALUES (1,'10.11.23','В зале',NULL,NULL,NULL),(2,'11.11.23','Вынос',NULL,NULL,NULL),(3,'12.11.23','Вынос',NULL,NULL,NULL),(4,'12.11.23','В зале',NULL,NULL,NULL);
/*!40000 ALTER TABLE `zakaz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-26  6:27:19
