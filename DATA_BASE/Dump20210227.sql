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
-- Table structure for table `sys_code_set`
--

DROP TABLE IF EXISTS `sys_code_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_code_set` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VERSION_TIME` int NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `DEPRECATED` char(1) DEFAULT NULL,
  `CREATE_BY` varchar(250) DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(250) DEFAULT NULL,
  `STATUS` varchar(250) DEFAULT NULL,
  `CODE` varchar(250) DEFAULT NULL,
  `NAME` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_code_set`
--

LOCK TABLES `sys_code_set` WRITE;
/*!40000 ALTER TABLE `sys_code_set` DISABLE KEYS */;
INSERT INTO `sys_code_set` VALUES (2,0,'2021-02-20','2021-02-20',NULL,'SYSTEM','SYSTEM','ACTIVE','ROLE_SETUP','Phân quyền theo từng đối tương người dùng'),(3,0,'2021-02-23','2021-02-23',NULL,'sonnc','sonnc','INACTIVE','DATE_TIME','Các giá trị ngày tháng'),(4,0,'2021-02-24','2021-02-24',NULL,'sonnc','sonnc','ACTIVE','YES_NO','Giá trị yes - no'),(5,0,'2021-02-24','2021-02-24',NULL,'sonnc','sonnc','ACTIVE','UDF_SETUP','Thiết lập các trường giá trị UDF');
/*!40000 ALTER TABLE `sys_code_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_code_value`
--

DROP TABLE IF EXISTS `sys_code_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_code_value` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VERSION_TIME` int DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `DISPLAY_ORDER` int DEFAULT '99',
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `CODE_VALUE` varchar(1000) DEFAULT NULL,
  `LOCAL_CODE_VALUE` varchar(1000) DEFAULT NULL,
  `CODE_SET_VALUE_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_idx` (`CODE_SET_VALUE_ID`),
  CONSTRAINT `FK_CodeValue_CodeSet` FOREIGN KEY (`CODE_SET_VALUE_ID`) REFERENCES `sys_code_set` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_code_value`
--

LOCK TABLES `sys_code_value` WRITE;
/*!40000 ALTER TABLE `sys_code_value` DISABLE KEYS */;
INSERT INTO `sys_code_value` VALUES (7,2,'2021-02-20','2021-02-24',0,'SYSTEM','sonnc','ACTIVE','NV','Member','Nhân viên',2),(8,3,'2021-02-23','2021-02-24',1,'sonnc','sonnc','ACTIVE','DAY','Day','Ngày',3),(9,3,'2021-02-23','2021-02-24',2,'sonnc','sonnc','ACTIVE','MONTH','Month','Tháng',3),(10,3,'2021-02-23','2021-02-24',3,'sonnc','sonnc','ACTIVE','QUART','Quart','Quý',3),(11,3,'2021-02-23','2021-02-24',4,'sonnc','sonnc','ACTIVE','YEAR','Year','Năm',3),(16,1,'2021-02-24','2021-02-24',5,'sonnc','sonnc','INACTIVE','WEEK','Week','Tuần',3),(17,2,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','TL','Team lead','Trưởng nhóm',2),(18,2,'2021-02-24','2021-02-24',2,'sonnc','sonnc','ACTIVE','SPM','Sub - Project mannager','Phó quản lý dự án',2),(19,2,'2021-02-24','2021-02-24',3,'sonnc','sonnc','ACTIVE','PM','Project manager','Quản lý dự án',2),(20,0,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','YES','Yes','Có',4),(21,1,'2021-02-24','2021-02-24',4,'sonnc','sonnc','ACTIVE','ADMIN','System admin','Quản trị hệ thống',2),(22,0,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','UDF_DATE','UDF setup for date','Cài đặt UDF cho ngày tháng',5),(23,0,'2021-02-24','2021-02-24',2,'sonnc','sonnc','ACTIVE','UDF_DROPDOWN','UDF setup for dropdown list','Cài đặt UDF cho danh sách thả xuống ',5),(24,0,'2021-02-24','2021-02-24',3,'sonnc','sonnc','ACTIVE','UDF_LABELS','UDF setup for labels','Cài đặt UDF cho nhãn',5),(25,0,'2021-02-24','2021-02-24',4,'sonnc','sonnc','ACTIVE','UDF_TEXT','UDF setup for text','Cài đặt UDF cho văn bản',5),(26,0,'2021-02-24','2021-02-24',5,'sonnc','sonnc','ACTIVE','UDF_TEXTAREA','UDF setup for text area','Cài đặt UDF cho vùng văn bản',5),(27,0,'2021-02-24','2021-02-24',6,'sonnc','sonnc','ACTIVE','UDF_EMAIL','UDF setup for email','Cài đặt UDF cho thư điện tử',5),(28,0,'2021-02-24','2021-02-24',7,'sonnc','sonnc','ACTIVE','UDF_NUMBER','UDF setup for number','Cài đặt UDF cho số',5),(29,0,'2021-02-24','2021-02-24',8,'sonnc','sonnc','ACTIVE','UDF_MONEY','UDF setup for money','Cài đặt UDF cho tiền tệ',5);
/*!40000 ALTER TABLE `sys_code_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_udf_field_value`
--

DROP TABLE IF EXISTS `sys_udf_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_udf_field_value` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VERSION_TIME` int NOT NULL,
  `CREATE_BY` varchar(250) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `LAST_UPDATE_BY` varchar(250) NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `REF_ID` int DEFAULT NULL,
  `REF_KEY` text,
  `SYS_UDF_FIELD_ID` int DEFAULT NULL,
  `EXT_VALUE1` text,
  `EXT_VALUE2` text,
  `EXT_VALUE3` text,
  `EXT_VALUE4` text,
  `EXT_VALUE5` text,
  `BLOCK_INDEX` int DEFAULT NULL,
  `FIELD_VALUE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_udf_field_value`
--

LOCK TABLES `sys_udf_field_value` WRITE;
/*!40000 ALTER TABLE `sys_udf_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_udf_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_define_fields`
--

DROP TABLE IF EXISTS `sys_user_define_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_define_fields` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VERSION_TIME` int NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `USER_DEFINE_ID` int DEFAULT NULL,
  `FIELD_TYPE` int DEFAULT NULL,
  `DISPLAY_ORDER` int DEFAULT NULL,
  `ACTIVE_IND` char(1) DEFAULT NULL,
  `DISPLAY_SECTION` int DEFAULT NULL,
  `MANDATORY_IND` char(1) DEFAULT NULL,
  `CODE` text,
  `FIELD` text,
  `VALIDATION` text,
  `CREATE_BY` text,
  `LAST_UPDATE_BY` text,
  `READ_ONLY_IND` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_define_fields`
--

LOCK TABLES `sys_user_define_fields` WRITE;
/*!40000 ALTER TABLE `sys_user_define_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_define_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_user`
--

DROP TABLE IF EXISTS `tk_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VERSION_TIME` int NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ROLE_ID` int DEFAULT NULL,
  `STATUS` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LOGIN_ID` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FULL_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EMPLOYEE_NO` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DEPARTMENT` int DEFAULT NULL,
  `PASSWORD` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EMAIL` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LANG_PREFERENCE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `MOBILE_NUMBER` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFFICE_NUMBER` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TEAM_NUMBER` int DEFAULT NULL,
  `PROFILE_PICTURE` longblob,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_user`
--

LOCK TABLES `tk_user` WRITE;
/*!40000 ALTER TABLE `tk_user` DISABLE KEYS */;
INSERT INTO `tk_user` VALUES (2,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','sonnc','Nguyễn Công Sơn','142000',1,'123456789','sonnc3@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL),(3,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','quynd','Nhâm Dương Quý','142001',1,'123456789','quynd@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL),(4,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','dungvt','Vũ Thùy Dung','142002',1,'123456789','dungvt@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL),(5,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','tultc','Lê Thị Cẩm Tú','142003',1,'123456789','tultc@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL),(6,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hoanglm','Lê Mạnh Hoàng','142004',1,'123456789','hoanglm@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL),(7,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','anhht','Hoàng Tuấn Anh','142005',1,'123456789','anhht@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL),(8,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','nhanpth','Phạm Thị Thanh Nhàn','142006',1,'123456789','nhanpth@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL),(9,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hungnk','Nguyễn Kiều Hưng','142007',1,'123456789','hungnk@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL),(10,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','duypv','Phạm Văn Duy','142008',1,'123456789','duypv@fpt.com.vn','vi','Nhân viên lập trình','0358346836','0358346836',NULL,NULL);
/*!40000 ALTER TABLE `tk_user` ENABLE KEYS */;
UNLOCK TABLES;

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
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `DEPARTMENT_ID` int DEFAULT NULL,
  `TIEN_KHOAN` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Danh sách các dự án trong phòng ban';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_workspace`
--

LOCK TABLES `tk_workspace` WRITE;
/*!40000 ALTER TABLE `tk_workspace` DISABLE KEYS */;
INSERT INTO `tk_workspace` VALUES (11,'2021-02-26','2021-02-26','sonnc','sonnc',NULL,NULL,'Vietcombank 1101',NULL,NULL,'csadcadsc','ACTIVE','2021-02-26','2021-02-26',1,NULL),(12,'2021-02-26','2021-02-26','sonnc','sonnc',NULL,NULL,'Vietcombank 1101',NULL,NULL,'vavdsav','ACTIVE','2021-02-26','2021-02-26',1,NULL);
/*!40000 ALTER TABLE `tk_workspace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_attachments`
--

DROP TABLE IF EXISTS `tk_ws_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_attachments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_by` varchar(45) DEFAULT NULL,
  `last_update_by` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `file_name` varchar(500) DEFAULT NULL,
  `file_link` varchar(500) DEFAULT NULL,
  `file_status` varchar(45) DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_list_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tk_ws_attachmentscol_UNIQUE` (`create_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_attachments`
--

LOCK TABLES `tk_ws_attachments` WRITE;
/*!40000 ALTER TABLE `tk_ws_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_ws_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_comment`
--

DROP TABLE IF EXISTS `tk_ws_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_by` varchar(45) DEFAULT NULL,
  `last_update_by` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_list_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_comment`
--

LOCK TABLES `tk_ws_comment` WRITE;
/*!40000 ALTER TABLE `tk_ws_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_ws_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_folder`
--

DROP TABLE IF EXISTS `tk_ws_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_folder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `folder_name` varchar(500) DEFAULT NULL,
  `folder_status` varchar(45) DEFAULT NULL,
  `folder_desc` varchar(1000) DEFAULT NULL,
  `isMilestones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_folder`
--

LOCK TABLES `tk_ws_folder` WRITE;
/*!40000 ALTER TABLE `tk_ws_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_ws_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_people`
--

DROP TABLE IF EXISTS `tk_ws_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tk_workspace_id` int NOT NULL,
  `role_workspace` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_people_tk_workspace1_idx` (`tk_workspace_id`),
  CONSTRAINT `fk_tk_ws_people_tk_workspace1` FOREIGN KEY (`tk_workspace_id`) REFERENCES `tk_workspace` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_people`
--

LOCK TABLES `tk_ws_people` WRITE;
/*!40000 ALTER TABLE `tk_ws_people` DISABLE KEYS */;
INSERT INTO `tk_ws_people` VALUES (1,11,'N/A','ACTIVE',2),(2,11,'N/A','ACTIVE',3),(3,12,'N/A','ACTIVE',2),(4,12,'N/A','ACTIVE',3);
/*!40000 ALTER TABLE `tk_ws_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_people_teams`
--

DROP TABLE IF EXISTS `tk_ws_people_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_people_teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tk_ws_people_id` int NOT NULL,
  `tk_ws_teams_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_people_has_tk_ws_teams_tk_ws_teams1_idx` (`tk_ws_teams_id`),
  KEY `fk_tk_ws_people_has_tk_ws_teams_tk_ws_people1_idx` (`tk_ws_people_id`),
  CONSTRAINT `fk_tk_ws_people_has_tk_ws_teams_tk_ws_people1` FOREIGN KEY (`tk_ws_people_id`) REFERENCES `tk_ws_people` (`id`),
  CONSTRAINT `fk_tk_ws_people_has_tk_ws_teams_tk_ws_teams1` FOREIGN KEY (`tk_ws_teams_id`) REFERENCES `tk_ws_teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_people_teams`
--

LOCK TABLES `tk_ws_people_teams` WRITE;
/*!40000 ALTER TABLE `tk_ws_people_teams` DISABLE KEYS */;
INSERT INTO `tk_ws_people_teams` VALUES (5,3,3),(6,4,3),(7,3,4),(8,4,4);
/*!40000 ALTER TABLE `tk_ws_people_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_task`
--

DROP TABLE IF EXISTS `tk_ws_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_by` varchar(45) DEFAULT NULL,
  `last_update_by` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `tk_ws_taskcol` varchar(45) DEFAULT NULL,
  `tk_ws_tasklist_id` int NOT NULL,
  `is_sub_task` varchar(1) NOT NULL DEFAULT 'N',
  `parent_task_id` int DEFAULT NULL,
  `assignee_user_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `date_close` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `time_estimate` int DEFAULT NULL,
  `time_estimate_ddl` int DEFAULT NULL,
  `ngan_sach` decimal(10,0) DEFAULT NULL,
  `ngan_sach_ccy` int DEFAULT NULL,
  `amount_spent` decimal(10,0) DEFAULT NULL,
  `amount_remain` decimal(10,0) DEFAULT NULL,
  `review_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_task_tk_ws_tasklist1_idx` (`tk_ws_tasklist_id`),
  CONSTRAINT `fk_tk_ws_task_tk_ws_tasklist1` FOREIGN KEY (`tk_ws_tasklist_id`) REFERENCES `tk_ws_tasklist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task`
--

LOCK TABLES `tk_ws_task` WRITE;
/*!40000 ALTER TABLE `tk_ws_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_ws_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_task_checklist`
--

DROP TABLE IF EXISTS `tk_ws_task_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_task_checklist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_by` varchar(45) DEFAULT NULL,
  `last_udpate_by` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_udpate_date` date DEFAULT NULL,
  `tk_ws_task_id` int NOT NULL,
  `check_list_name` varchar(500) DEFAULT NULL,
  `check_list_desc` varchar(500) DEFAULT NULL,
  `check_list_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_task_checklist_tk_ws_task1_idx` (`tk_ws_task_id`),
  CONSTRAINT `fk_tk_ws_task_checklist_tk_ws_task1` FOREIGN KEY (`tk_ws_task_id`) REFERENCES `tk_ws_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task_checklist`
--

LOCK TABLES `tk_ws_task_checklist` WRITE;
/*!40000 ALTER TABLE `tk_ws_task_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_ws_task_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_task_checklist_item`
--

DROP TABLE IF EXISTS `tk_ws_task_checklist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_task_checklist_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tk_ws_task_checklist_id` int NOT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `last_update_by` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `item_name` varchar(500) DEFAULT NULL,
  `item_status` varchar(45) DEFAULT NULL,
  `item_assignee` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_task_checklist_item_tk_ws_task_checklist1_idx` (`tk_ws_task_checklist_id`),
  CONSTRAINT `fk_tk_ws_task_checklist_item_tk_ws_task_checklist1` FOREIGN KEY (`tk_ws_task_checklist_id`) REFERENCES `tk_ws_task_checklist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task_checklist_item`
--

LOCK TABLES `tk_ws_task_checklist_item` WRITE;
/*!40000 ALTER TABLE `tk_ws_task_checklist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_ws_task_checklist_item` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tk_ws_teams`
--

DROP TABLE IF EXISTS `tk_ws_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tk_workspace_ID` int NOT NULL,
  `team_name` varchar(500) DEFAULT NULL,
  `team_desc` varchar(1000) DEFAULT NULL,
  `team_status` varchar(45) DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `last_update_by` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_teams_tk_workspace1_idx` (`tk_workspace_ID`),
  CONSTRAINT `fk_tk_ws_teams_tk_workspace1` FOREIGN KEY (`tk_workspace_ID`) REFERENCES `tk_workspace` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_teams`
--

LOCK TABLES `tk_ws_teams` WRITE;
/*!40000 ALTER TABLE `tk_ws_teams` DISABLE KEYS */;
INSERT INTO `tk_ws_teams` VALUES (3,12,'[CLOS]','[vdsvdsvsa]','ACTIVE','sonnc','sonnc','2021-02-27','2021-02-27'),(4,12,'[CLIMS]','[dvsavasv]','ACTIVE','sonnc','sonnc','2021-02-27','2021-02-27');
/*!40000 ALTER TABLE `tk_ws_teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-27 23:26:22
