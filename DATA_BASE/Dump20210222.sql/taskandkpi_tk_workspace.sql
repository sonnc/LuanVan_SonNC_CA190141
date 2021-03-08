-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: taskandkpi
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
-- Table structure for table `tk_workspace`
--

DROP TABLE IF EXISTS `tk_workspace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_workspace` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(250) DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(250) DEFAULT NULL,
  `IS_PRIVATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT 'Có phải là workspace ở chế độ riêng tư hay không?',
  `IS_INDIVIDUAL` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT 'Là workspace cá nhân không?',
  `WORKSPACE_NAME` varchar(500) DEFAULT NULL,
  `OWNER` varchar(250) DEFAULT NULL,
  `AVATAR` mediumblob,
  `DESCRIPTION` mediumtext,
  `STATUS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Danh sách các dự án trong phòng ban';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_workspace`
--

LOCK TABLES `tk_workspace` WRITE;
/*!40000 ALTER TABLE `tk_workspace` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_workspace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 10:43:16
