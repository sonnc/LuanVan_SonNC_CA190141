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
-- Table structure for table `tk_ws_tasklist`
--

DROP TABLE IF EXISTS `tk_ws_tasklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_tasklist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tk_ws_folder_id` int DEFAULT NULL,
  `tk_workspace_ID` int NOT NULL,
  `task_list_title` varchar(500) DEFAULT NULL,
  `task_list_desc` varchar(1000) DEFAULT NULL,
  `time_estimate` int DEFAULT NULL,
  `time_estimate_ddl` int DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `RACI` int DEFAULT NULL,
  `STATUS` varchar(45) DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `last_update_by` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_tasklist_tk_ws_folder1_idx` (`tk_ws_folder_id`),
  KEY `fk_tk_ws_tasklist_tk_workspace1_idx` (`tk_workspace_ID`),
  CONSTRAINT `fk_tk_ws_tasklist_tk_workspace1` FOREIGN KEY (`tk_workspace_ID`) REFERENCES `tk_workspace` (`ID`),
  CONSTRAINT `fk_tk_ws_tasklist_tk_ws_folder1` FOREIGN KEY (`tk_ws_folder_id`) REFERENCES `tk_ws_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_tasklist`
--

LOCK TABLES `tk_ws_tasklist` WRITE;
/*!40000 ALTER TABLE `tk_ws_tasklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_ws_tasklist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 10:43:17
