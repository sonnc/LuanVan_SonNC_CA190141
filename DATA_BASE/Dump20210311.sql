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
-- Table structure for table `luong_khoan`
--

DROP TABLE IF EXISTS `luong_khoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luong_khoan` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int DEFAULT NULL,
  `CREATE_BY` varchar(45) DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `THANG` int DEFAULT NULL,
  `LOAI_KHOAN` varchar(45) DEFAULT NULL,
  `LUONG_KHOAN` decimal(19,2) DEFAULT NULL,
  `PHE_DUYET` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luong_khoan`
--

LOCK TABLES `luong_khoan` WRITE;
/*!40000 ALTER TABLE `luong_khoan` DISABLE KEYS */;
INSERT INTO `luong_khoan` VALUES (1,2,'admin','admin','2021-02-28','2021-02-28',1,'CV',200000.00,3),(2,2,'admin','admin','2021-02-28','2021-02-28',2,'CV',320000.00,3),(3,2,'admin','admin','2021-02-28','2021-02-28',2,'MT',1500000.00,3),(4,2,'admin','admin','2021-02-28','2021-02-28',2,'HQDA',2200000.00,3),(5,2,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',200000.00,2),(6,2,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(7,2,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(8,3,'sonnc','sonnc','2021-03-11','2021-03-11',2,'CV',0.00,2),(9,3,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(10,3,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(11,4,'sonnc','sonnc','2021-03-11','2021-03-11',2,'CV',0.00,2),(12,4,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(13,4,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(14,5,'sonnc','sonnc','2021-03-11','2021-03-11',2,'CV',0.00,2),(15,5,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(16,5,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(17,6,'sonnc','sonnc','2021-03-11','2021-03-11',2,'CV',0.00,2),(18,6,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(19,6,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(20,7,'sonnc','sonnc','2021-03-11','2021-03-11',2,'CV',0.00,2),(21,7,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(22,7,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(23,8,'sonnc','sonnc','2021-03-11','2021-03-11',2,'CV',0.00,2),(24,8,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(25,8,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(26,9,'sonnc','sonnc','2021-03-11','2021-03-11',2,'CV',0.00,2),(27,9,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(28,9,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(29,10,'sonnc','sonnc','2021-03-11','2021-03-11',2,'CV',0.00,2),(30,10,'sonnc','sonnc','2021-03-11','2021-03-11',2,'MT',0.00,2),(31,10,'sonnc','sonnc','2021-03-11','2021-03-11',2,'HQDA',3200000.05,2),(32,2,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',200000.00,2),(33,2,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(34,2,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2),(35,3,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',0.00,2),(36,3,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(37,3,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2),(38,4,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',0.00,2),(39,4,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(40,4,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2),(41,5,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',0.00,2),(42,5,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(43,5,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2),(44,6,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',0.00,2),(45,6,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(46,6,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2),(47,7,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',0.00,2),(48,7,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(49,7,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2),(50,8,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',0.00,2),(51,8,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(52,8,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2),(53,9,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',0.00,2),(54,9,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(55,9,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2),(56,10,'sonnc','sonnc','2021-03-11','2021-03-11',3,'CV',0.00,2),(57,10,'sonnc','sonnc','2021-03-11','2021-03-11',3,'MT',0.00,2),(58,10,'sonnc','sonnc','2021-03-11','2021-03-11',3,'HQDA',4000000.01,2);
/*!40000 ALTER TABLE `luong_khoan` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_code_set`
--

LOCK TABLES `sys_code_set` WRITE;
/*!40000 ALTER TABLE `sys_code_set` DISABLE KEYS */;
INSERT INTO `sys_code_set` VALUES (2,0,'2021-02-20','2021-02-20',NULL,'SYSTEM','SYSTEM','ACTIVE','ROLE_SETUP','Ph??n quy???n theo t???ng ?????i t????ng ng?????i d??ng'),(3,0,'2021-02-23','2021-02-23',NULL,'sonnc','sonnc','ACTIVE','DATE_TIME','C??c gi?? tr??? ng??y th??ng'),(4,0,'2021-02-24','2021-02-24',NULL,'sonnc','sonnc','ACTIVE','YES_NO','Gi?? tr??? yes - no'),(5,0,'2021-02-24','2021-02-24',NULL,'sonnc','sonnc','ACTIVE','UDF_SETUP','Thi???t l???p c??c tr?????ng gi?? tr??? UDF'),(6,0,'2021-03-01','2021-03-01',NULL,'sonnc','sonnc','ACTIVE','CODE_PRIORITY','C??c gi?? tr??? m???c ????? ??u ti??n');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_code_value`
--

LOCK TABLES `sys_code_value` WRITE;
/*!40000 ALTER TABLE `sys_code_value` DISABLE KEYS */;
INSERT INTO `sys_code_value` VALUES (7,2,'2021-02-20','2021-02-24',0,'SYSTEM','sonnc','ACTIVE','NV','Member','Nh??n vi??n',2),(8,3,'2021-02-23','2021-02-24',1,'sonnc','sonnc','ACTIVE','DAY','Day','Ng??y',3),(9,3,'2021-02-23','2021-02-24',2,'sonnc','sonnc','ACTIVE','MONTH','Month','Th??ng',3),(10,3,'2021-02-23','2021-02-24',3,'sonnc','sonnc','ACTIVE','QUART','Quart','Qu??',3),(11,3,'2021-02-23','2021-02-24',4,'sonnc','sonnc','ACTIVE','YEAR','Year','N??m',3),(16,1,'2021-02-24','2021-02-24',5,'sonnc','sonnc','INACTIVE','WEEK','Week','Tu???n',3),(17,2,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','TL','Team lead','Tr?????ng nh??m',2),(18,2,'2021-02-24','2021-02-24',2,'sonnc','sonnc','ACTIVE','SPM','Sub - Project mannager','Ph?? qu???n l?? d??? ??n',2),(19,2,'2021-02-24','2021-02-24',3,'sonnc','sonnc','ACTIVE','PM','Project manager','Qu???n l?? d??? ??n',2),(20,0,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','YES','Yes','C??',4),(21,1,'2021-02-24','2021-02-24',4,'sonnc','sonnc','ACTIVE','ADMIN','System admin','Qu???n tr??? h??? th???ng',2),(22,0,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','UDF_DATE','UDF setup for date','C??i ?????t UDF cho ng??y th??ng',5),(23,0,'2021-02-24','2021-02-24',2,'sonnc','sonnc','ACTIVE','UDF_DROPDOWN','UDF setup for dropdown list','C??i ?????t UDF cho danh s??ch th??? xu???ng ',5),(24,0,'2021-02-24','2021-02-24',3,'sonnc','sonnc','ACTIVE','UDF_LABELS','UDF setup for labels','C??i ?????t UDF cho nh??n',5),(25,0,'2021-02-24','2021-02-24',4,'sonnc','sonnc','ACTIVE','UDF_TEXT','UDF setup for text','C??i ?????t UDF cho v??n b???n',5),(26,0,'2021-02-24','2021-02-24',5,'sonnc','sonnc','ACTIVE','UDF_TEXTAREA','UDF setup for text area','C??i ?????t UDF cho v??ng v??n b???n',5),(27,0,'2021-02-24','2021-02-24',6,'sonnc','sonnc','ACTIVE','UDF_EMAIL','UDF setup for email','C??i ?????t UDF cho th?? ??i???n t???',5),(28,0,'2021-02-24','2021-02-24',7,'sonnc','sonnc','ACTIVE','UDF_NUMBER','UDF setup for number','C??i ?????t UDF cho s???',5),(29,0,'2021-02-24','2021-02-24',8,'sonnc','sonnc','ACTIVE','UDF_MONEY','UDF setup for money','C??i ?????t UDF cho ti???n t???',5),(30,0,'2021-03-01','2021-03-01',1,'sonnc','sonnc','ACTIVE','HIGHT','Hight','Cao',6),(31,0,'2021-03-01','2021-03-01',2,'sonnc','sonnc','ACTIVE','MEDIUM','Medium','Trung b??nh',6),(32,0,'2021-03-01','2021-03-01',3,'sonnc','sonnc','ACTIVE','LOW','Low','Th???p',6);
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
  `STATUS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_udf_field_value`
--

LOCK TABLES `sys_udf_field_value` WRITE;
/*!40000 ALTER TABLE `sys_udf_field_value` DISABLE KEYS */;
INSERT INTO `sys_udf_field_value` VALUES (1,0,'sonnc','2021-03-09','sonnc','2021-03-09',8,'S??? ??i???n tho???i qu???n l??',NULL,'NUMBER',NULL,NULL,NULL,NULL,NULL,'0987654321','ACTIVE'),(2,0,'sonnc','2021-03-09','sonnc','2021-03-09',8,'Email',NULL,'EMAIL',NULL,NULL,NULL,NULL,NULL,'Sonnc@fpt.com.vn','ACTIVE'),(3,0,'sonnc','2021-03-10','sonnc','2021-03-10',9,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','ACTIVE');
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
-- Table structure for table `tk_department`
--

DROP TABLE IF EXISTS `tk_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_department` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DEPARTMENT_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DEPARTMENT_DETAIL` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DEPARTMENT_CODE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DEPARTMENT_STATUS` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_department`
--

LOCK TABLES `tk_department` WRITE;
/*!40000 ALTER TABLE `tk_department` DISABLE KEYS */;
INSERT INTO `tk_department` VALUES (2,'2020-03-28','2020-06-30','admin','admin','Trung t??m ph???n m???m s??? 1','Trung t??m ph???n m???m s??? 1','PrBNK01','ACTIVE'),(3,'2020-03-28','2020-03-28','admin','admin','ADMIN','ADMIN','ADMIN','ACTIVE'),(4,'2020-06-30','2020-06-30','admin','admin','B??? ph???n K??? thu???t h??? th???ng','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo c???nh b??o c???a ????i kh?? t?????ng Trung ????ng Trung Qu???c, ng??y 29/6, c??c t???nh th??nh nh?? Qu?? Ch??u, H??? Nam, H??? B???c, An Huy, Giang T??, Th?????ng H???i... s??? xu???t hi???n m??a v???a v?? m??a r???t to. Trong ????, m???t s??? n??i thu???c Giang T??, Th?????ng H???i s??? xu???t hi???n l?????ng m??a l???n trong th???i gian ng???n v???i l?????ng m??a v??o kho???ng 30-50mm/h, k??m theo hi???n t?????ng th???i ti???t b???t th?????ng.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">????y ???? l?? ng??y th??? 27 li??n ti???p (t??? ng??y 2/6-28/6) ????i kh?? t?????ng Trung ????ng Trung Qu???c ra c???nh b??o v??? m??a l???n tr??n c??c ?????a ph????ng c???a n?????c n??y, ??i???u hi???m th???y t??? tr?????c ?????n nay.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo b??o c??o c???a B??? qu???n l?? kh???n c???p Trung Qu???c, ?????t m??a l???n k??o d??i t??? ?????u th??ng 6 ?????n nay ???? g??y thi???t h???i nghi??m tr???ng cho 26 t???nh th??nh c???a Trung Qu???c, ?????c bi???t l?? khu v???c mi???n Nam v???i h??n 13 tri???u ng?????i b??? ???nh h?????ng.</p>','AdSys01','ACTIVE'),(5,'2020-06-30','2020-06-30','admin','admin','B??? ph???n K??? thu???t h??? th???ng','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo c???nh b??o c???a ????i kh?? t?????ng Trung ????ng Trung Qu???c, ng??y 29/6, c??c t???nh th??nh nh?? Qu?? Ch??u, H??? Nam, H??? B???c, An Huy, Giang T??, Th?????ng H???i... s??? xu???t hi???n m??a v???a v?? m??a r???t to. Trong ????, m???t s??? n??i thu???c Giang T??, Th?????ng H???i s??? xu???t hi???n l?????ng m??a l???n trong th???i gian ng???n v???i l?????ng m??a v??o kho???ng 30-50mm/h, k??m theo hi???n t?????ng th???i ti???t b???t th?????ng.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">????y ???? l?? ng??y th??? 27 li??n ti???p (t??? ng??y 2/6-28/6) ????i kh?? t?????ng Trung ????ng Trung Qu???c ra c???nh b??o v??? m??a l???n tr??n c??c ?????a ph????ng c???a n?????c n??y, ??i???u hi???m th???y t??? tr?????c ?????n nay.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo b??o c??o c???a B??? qu???n l?? kh???n c???p Trung Qu???c, ?????t m??a l???n k??o d??i t??? ?????u th??ng 6 ?????n nay ???? g??y thi???t h???i nghi??m tr???ng cho 26 t???nh th??nh c???a Trung Qu???c, ?????c bi???t l?? khu v???c mi???n Nam v???i h??n 13 tri???u ng?????i b??? ???nh h?????ng.</p>','AdSys01','ACTIVE'),(6,'2020-06-30','2020-06-30','admin','admin','Ph??ng ban d??? ??n BIDV-CROMS','Ph??ng ban d??? ??n BIDV-CROMS','PrBBNKBIDV','ACTIVE');
/*!40000 ALTER TABLE `tk_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi`
--

DROP TABLE IF EXISTS `tk_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_INDIVIDUAL_DEPARTMENT_WEIGHT` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'KPI c??ng vi???c g???n li???n v???i b??? ph???n',
  `KPI_INDIVIDUAL_REGULARLY_WEIGHT` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'KPI g???n li???n v???i c??ng vi???c c?? nh??n, th?????ng xuy??n',
  `KPI_INDIVIDUAL_OTHERS_WEIGHT` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'KPI c??ng vi???c ?????t xu???t',
  `KPI_STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_YEAR` int DEFAULT NULL,
  `USER_ID` int NOT NULL,
  `KPI_REMARK_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_COMMENT` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `KPI_ID_RESULT` double DEFAULT NULL,
  `KPI_IR_RESULT` double DEFAULT NULL,
  `KPI_O_RESULT` double DEFAULT NULL,
  `KPI_TOTAL` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_TK_KPI_tk_user1_idx` (`USER_ID`),
  CONSTRAINT `fk_TK_KPI_tk_user1` FOREIGN KEY (`USER_ID`) REFERENCES `tk_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi`
--

LOCK TABLES `tk_kpi` WRITE;
/*!40000 ALTER TABLE `tk_kpi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_detail`
--

DROP TABLE IF EXISTS `tk_kpi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_detail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_PERIOD` int DEFAULT NULL COMMENT 'M???c ti??u trong k???. L???y gi?? tr??? trong code_value\n',
  `KPI_DVT` int DEFAULT NULL COMMENT '????n v??? t??nh. L???y gi?? tr??? trong code_value',
  `KPI_WEIGHT` int DEFAULT NULL COMMENT 'Tr???ng s???.',
  `TK_KPI_ID` int NOT NULL,
  `KPI_STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_REMARK_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_COMMENT` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_RESULT` double DEFAULT NULL,
  `TK_KPI_DETAILcol` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_TK_KPI_DETAIL_TK_KPI1_idx` (`TK_KPI_ID`),
  CONSTRAINT `fk_TK_KPI_DETAIL_TK_KPI1` FOREIGN KEY (`TK_KPI_ID`) REFERENCES `tk_kpi` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_detail`
--

LOCK TABLES `tk_kpi_detail` WRITE;
/*!40000 ALTER TABLE `tk_kpi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kpi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_item`
--

DROP TABLE IF EXISTS `tk_kpi_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_item` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `USER_ID` int NOT NULL,
  `KPI_YEAR` int DEFAULT NULL,
  `KPI_ITEM` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MUC_TIEU` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRONG_SO` double DEFAULT NULL,
  `TY_LE_THUC_HIEN` double DEFAULT NULL,
  `KET_QUA` double DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID_idx` (`USER_ID`),
  CONSTRAINT `USERS_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tk_user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item`
--

LOCK TABLES `tk_kpi_item` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item` DISABLE KEYS */;
INSERT INTO `tk_kpi_item` VALUES (26,'sonnc','sonnc','2021-03-05','2021-03-05',7,2021,'BO_PHAN','KPI GAN VOI BO PHAN',60,NULL,NULL,'ACTIVE'),(27,'sonnc','sonnc','2021-03-05','2021-03-05',7,2021,'THUONG_XUYEN','KPI THUONG XUYEN',30,NULL,NULL,'ACTIVE'),(28,'sonnc','sonnc','2021-03-05','2021-03-05',7,2021,'DOT_XUAT','KPI CONG VIEC DOT XUAT',10,NULL,NULL,'ACTIVE'),(29,'sonnc','sonnc','2021-03-11','2021-03-11',2,2021,'BO_PHAN','KPI GAN VOI BO PHAN',70,NULL,NULL,'ACTIVE'),(30,'sonnc','sonnc','2021-03-11','2021-03-11',2,2021,'THUONG_XUYEN','KPI THUONG XUYEN',25,NULL,NULL,'ACTIVE'),(31,'sonnc','sonnc','2021-03-11','2021-03-11',2,2021,'DOT_XUAT','KPI CONG VIEC DOT XUAT',5,NULL,NULL,'ACTIVE'),(32,'sonnc','sonnc','2021-03-11','2021-03-11',5,2021,'BO_PHAN','KPI GAN VOI BO PHAN',60,NULL,NULL,'ACTIVE'),(33,'sonnc','sonnc','2021-03-11','2021-03-11',5,2021,'THUONG_XUYEN','KPI THUONG XUYEN',30,NULL,NULL,'ACTIVE'),(34,'sonnc','sonnc','2021-03-11','2021-03-11',5,2021,'DOT_XUAT','KPI CONG VIEC DOT XUAT',10,NULL,NULL,'ACTIVE'),(35,'quynd','quynd','2021-03-11','2021-03-11',10,2021,'BO_PHAN','KPI GAN VOI BO PHAN',60,NULL,NULL,'ACTIVE'),(36,'quynd','quynd','2021-03-11','2021-03-11',10,2021,'THUONG_XUYEN','KPI THUONG XUYEN',30,NULL,NULL,'ACTIVE'),(37,'quynd','quynd','2021-03-11','2021-03-11',10,2021,'DOT_XUAT','KPI CONG VIEC DOT XUAT',10,NULL,NULL,'ACTIVE');
/*!40000 ALTER TABLE `tk_kpi_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_item_detail`
--

DROP TABLE IF EXISTS `tk_kpi_item_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_item_detail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `TK_KPI_ITEM_ID` int DEFAULT NULL,
  `KPI_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_DESC` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM` double DEFAULT NULL,
  `DON_VI_TINH` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAN_SUAT_DANH_GIA` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRONG_SO` double DEFAULT NULL,
  `TY_LE_THUC_HIEN` double DEFAULT NULL,
  `KET_QUA_THUC_HIEN` double DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `KPI_ITEM_ID_idx` (`TK_KPI_ITEM_ID`),
  CONSTRAINT `KPI_ITEM_ID` FOREIGN KEY (`TK_KPI_ITEM_ID`) REFERENCES `tk_kpi_item` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item_detail`
--

LOCK TABLES `tk_kpi_item_detail` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item_detail` DISABLE KEYS */;
INSERT INTO `tk_kpi_item_detail` VALUES (121,'sonnc','sonnc','2021-03-05','2021-03-05',26,'Chi ti??u d??ng ti???n','Chi ti??u d??ng ti???n',99,'%','YEAR',5,0,NULL,'ACTIVE'),(122,'sonnc','sonnc','2021-03-05','2021-03-05',26,'Gi???m chi ph?? t???n kho','Gi???m chi ph?? t???n kho',30000000,'VND','YEAR',10,0,NULL,'ACTIVE'),(123,'sonnc','sonnc','2021-03-05','2021-03-05',26,'M???c ti??u ????o t???o nh??n s???','M???c ti??u ????o t???o nh??n s???',10,'DAYS','YEAR',10,0,NULL,'ACTIVE'),(124,'sonnc','sonnc','2021-03-05','2021-03-05',26,'X??y d???ng chu???n n??ng l???c c???a ph??ng','X??y d???ng chu???n n??ng l???c c???a ph??ng',6,'PEOPLE','YEAR',10,0,NULL,'ACTIVE'),(125,'sonnc','sonnc','2021-03-05','2021-03-05',26,'Gi???m chi ph?? mua h??ng','Gi???m chi ph?? mua h??ng',97,'%','YEAR',10,0,NULL,'ACTIVE'),(126,'sonnc','sonnc','2021-03-05','2021-03-05',26,'Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)',98,'%','YEAR',30,0,NULL,'ACTIVE'),(127,'sonnc','sonnc','2021-03-05','2021-03-05',26,'N??ng cao n??ng l???c qu???n l?? c???a ph??ng','N??ng cao n??ng l???c qu???n l?? c???a ph??ng',1,'PEOPLE','YEAR',15,0,NULL,'ACTIVE'),(128,'sonnc','sonnc','2021-03-05','2021-03-05',26,'????? ch??nh x??c trong d??? b??o ng??n s??ch','????? ch??nh x??c trong d??? b??o ng??n s??ch',95,'%','YEAR',10,0,NULL,'ACTIVE'),(129,'sonnc','sonnc','2021-03-05','2021-03-05',27,'Tinh th???n chia s???, h??? tr??? ?????ng nghi???p','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p',100,'%','MONTH',30,15,50,'ACTIVE'),(130,'sonnc','sonnc','2021-03-05','2021-03-05',27,'Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c',100,'%','MONTH',40,0,NULL,'ACTIVE'),(131,'sonnc','sonnc','2021-03-05','2021-03-05',27,'Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n',100,'%','MONTH',30,15,50,'ACTIVE'),(132,'sonnc','sonnc','2021-03-05','2021-03-05',28,'X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban',100,'%','QUATER',100,50,50,'ACTIVE'),(133,'sonnc','sonnc','2021-03-11','2021-03-11',30,'Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i',100,'%','MONTH',50,5,10,'ACTIVE'),(134,'sonnc','sonnc','2021-03-11','2021-03-11',30,'Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t',100,'%','MONTH',25,3,10,'ACTIVE'),(135,'sonnc','sonnc','2021-03-11','2021-03-11',30,'B??o c??o h??ng th??ng','B??o c??o h??ng th??ng',100,'%','MONTH',25,0,NULL,'ACTIVE'),(136,'sonnc','sonnc','2021-03-11','2021-03-11',31,'X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c',100,'%','YEAR',100,0,NULL,'ACTIVE'),(137,'sonnc','sonnc','2021-03-11','2021-03-11',32,'M???c ti??u ????o t???o nh??n s???','M???c ti??u ????o t???o nh??n s???',10,'DAYS','YEAR',10,0,NULL,'ACTIVE'),(138,'sonnc','sonnc','2021-03-11','2021-03-11',32,'Gi???m chi ph?? mua h??ng','Gi???m chi ph?? mua h??ng',97,'%','YEAR',10,0,NULL,'ACTIVE'),(139,'sonnc','sonnc','2021-03-11','2021-03-11',32,'????? ch??nh x??c trong d??? b??o ng??n s??ch','????? ch??nh x??c trong d??? b??o ng??n s??ch',95,'%','YEAR',10,0,NULL,'ACTIVE'),(140,'sonnc','sonnc','2021-03-11','2021-03-11',32,'N??ng cao n??ng l???c qu???n l?? c???a ph??ng','N??ng cao n??ng l???c qu???n l?? c???a ph??ng',1,'PEOPLE','YEAR',15,0,NULL,'ACTIVE'),(141,'sonnc','sonnc','2021-03-11','2021-03-11',32,'Gi???m chi ph?? t???n kho','Gi???m chi ph?? t???n kho',30000000,'VND','YEAR',10,0,NULL,'ACTIVE'),(142,'sonnc','sonnc','2021-03-11','2021-03-11',32,'X??y d???ng chu???n n??ng l???c c???a ph??ng','X??y d???ng chu???n n??ng l???c c???a ph??ng',6,'PEOPLE','YEAR',10,0,NULL,'ACTIVE'),(143,'sonnc','sonnc','2021-03-11','2021-03-11',32,'Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)',98,'%','YEAR',30,0,NULL,'ACTIVE'),(144,'sonnc','sonnc','2021-03-11','2021-03-11',32,'Chi ti??u d??ng ti???n','Chi ti??u d??ng ti???n',99,'%','YEAR',5,0,NULL,'ACTIVE'),(145,'sonnc','sonnc','2021-03-11','2021-03-11',33,'Tinh th???n chia s???, h??? tr??? ?????ng nghi???p','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p',100,'%','MONTH',30,0,NULL,'ACTIVE'),(146,'sonnc','sonnc','2021-03-11','2021-03-11',33,'Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n',100,'%','MONTH',30,0,NULL,'ACTIVE'),(147,'sonnc','sonnc','2021-03-11','2021-03-11',33,'Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c',100,'%','MONTH',40,0,NULL,'ACTIVE'),(148,'sonnc','sonnc','2021-03-11','2021-03-11',34,'X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban',100,'%','QUATER',100,0,NULL,'ACTIVE'),(149,'quynd','quynd','2021-03-11','2021-03-11',35,'N??ng cao n??ng l???c qu???n l?? c???a ph??ng','N??ng cao n??ng l???c qu???n l?? c???a ph??ng',1,'PEOPLE','YEAR',15,0,NULL,'ACTIVE'),(150,'quynd','quynd','2021-03-11','2021-03-11',35,'Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)',98,'%','YEAR',30,0,NULL,'ACTIVE'),(151,'quynd','quynd','2021-03-11','2021-03-11',35,'Chi ti??u d??ng ti???n','Chi ti??u d??ng ti???n',99,'%','YEAR',5,0,NULL,'ACTIVE'),(152,'quynd','quynd','2021-03-11','2021-03-11',35,'????? ch??nh x??c trong d??? b??o ng??n s??ch','????? ch??nh x??c trong d??? b??o ng??n s??ch',95,'%','YEAR',10,0,NULL,'ACTIVE'),(153,'quynd','quynd','2021-03-11','2021-03-11',35,'X??y d???ng chu???n n??ng l???c c???a ph??ng','X??y d???ng chu???n n??ng l???c c???a ph??ng',6,'PEOPLE','YEAR',10,0,NULL,'ACTIVE'),(154,'quynd','quynd','2021-03-11','2021-03-11',35,'Gi???m chi ph?? mua h??ng','Gi???m chi ph?? mua h??ng',97,'%','YEAR',10,0,NULL,'ACTIVE'),(155,'quynd','quynd','2021-03-11','2021-03-11',35,'M???c ti??u ????o t???o nh??n s???','M???c ti??u ????o t???o nh??n s???',10,'DAYS','YEAR',10,0,NULL,'ACTIVE'),(156,'quynd','quynd','2021-03-11','2021-03-11',35,'Gi???m chi ph?? t???n kho','Gi???m chi ph?? t???n kho',30000000,'VND','YEAR',10,0,NULL,'ACTIVE'),(157,'quynd','quynd','2021-03-11','2021-03-11',36,'Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n',100,'%','MONTH',30,15,50,'ACTIVE'),(158,'quynd','quynd','2021-03-11','2021-03-11',36,'Tinh th???n chia s???, h??? tr??? ?????ng nghi???p','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p',100,'%','MONTH',30,15,50,'ACTIVE'),(159,'quynd','quynd','2021-03-11','2021-03-11',36,'Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c',100,'%','MONTH',40,20,50,'ACTIVE'),(160,'quynd','quynd','2021-03-11','2021-03-11',37,'X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban',100,'%','QUATER',100,50,50,'ACTIVE');
/*!40000 ALTER TABLE `tk_kpi_item_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_item_detail_rating`
--

DROP TABLE IF EXISTS `tk_kpi_item_detail_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_item_detail_rating` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `TK_KPI_ITEM_DETAIL_ID` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `QUATER` int DEFAULT NULL,
  `YEAR` int DEFAULT NULL,
  `TRONG_SO` double DEFAULT NULL,
  `TY_LE_THUC_HIEN` double DEFAULT NULL,
  `KET_QUA_THUC_HIEN` double DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `KPI_ITEM_DETAIL_RATING_idx` (`TK_KPI_ITEM_DETAIL_ID`),
  CONSTRAINT `KPI_ITEM_DETAIL_RATING` FOREIGN KEY (`TK_KPI_ITEM_DETAIL_ID`) REFERENCES `tk_kpi_item_detail` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item_detail_rating`
--

LOCK TABLES `tk_kpi_item_detail_rating` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item_detail_rating` DISABLE KEYS */;
INSERT INTO `tk_kpi_item_detail_rating` VALUES (15,'anhht','anhht','2021-03-05','2021-03-05',131,3,NULL,2021,30,30,100,'REJECT'),(16,'anhht','anhht','2021-03-05','2021-03-05',129,3,NULL,2021,30,30,100,'REJECT'),(17,'anhht','anhht','2021-03-05','2021-03-05',130,3,NULL,2021,40,40,100,'REJECT'),(18,'anhht','anhht','2021-03-05','2021-03-05',132,NULL,1,2021,100,100,100,'REJECT'),(19,'sonnc','sonnc','2021-03-11','2021-03-11',134,3,NULL,2021,25,2.5,10,'APPROVED'),(20,'sonnc','sonnc','2021-03-11','2021-03-11',133,3,NULL,2021,50,5,10,'APPROVED'),(21,'sonnc','sonnc','2021-03-11','2021-03-11',135,3,NULL,2021,25,2.5,10,'REJECT'),(22,'anhht','anhht','2021-03-11','2021-03-11',131,3,NULL,2021,30,15,50,'APPROVED'),(23,'anhht','anhht','2021-03-11','2021-03-11',130,3,NULL,2021,40,20,50,'REJECT'),(24,'anhht','anhht','2021-03-11','2021-03-11',129,3,NULL,2021,30,15,50,'APPROVED'),(25,'anhht','anhht','2021-03-11','2021-03-11',132,NULL,1,2021,100,50,50,'APPROVED'),(26,'duypv','duypv','2021-03-11','2021-03-11',159,3,NULL,2021,40,20,50,'APPROVED'),(27,'duypv','duypv','2021-03-11','2021-03-11',158,3,NULL,2021,30,15,50,'APPROVED'),(28,'duypv','duypv','2021-03-11','2021-03-11',157,3,NULL,2021,30,15,50,'APPROVED'),(29,'duypv','duypv','2021-03-11','2021-03-11',160,NULL,1,2021,100,50,50,'APPROVED');
/*!40000 ALTER TABLE `tk_kpi_item_detail_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_item_setting`
--

DROP TABLE IF EXISTS `tk_kpi_item_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_item_setting` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `KPI_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_DESC` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ITEM` double DEFAULT NULL,
  `DON_VI_TINH` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRONG_SO` double DEFAULT NULL,
  `TAN_SUAT_DANH_GIA` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `THOI_DIEM_DANH_GIA` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_KET_QUA` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_TYPE_SETING_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `KPI_TYPE_SETING_ID_idx` (`KPI_TYPE_SETING_ID`),
  CONSTRAINT `KPI_TYPE_SETING_ID` FOREIGN KEY (`KPI_TYPE_SETING_ID`) REFERENCES `tk_kpi_type_setting` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item_setting`
--

LOCK TABLES `tk_kpi_item_setting` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item_setting` DISABLE KEYS */;
INSERT INTO `tk_kpi_item_setting` VALUES (1,'ADMIN','ADMIN','2020-06-18','2020-06-18','Gi???m chi ph?? t???n kho','Gi???m chi ph?? t???n kho',30000000,'VND',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(2,'ADMIN','ADMIN','2020-06-18','2020-06-18','Gi???m chi ph?? mua h??ng','Gi???m chi ph?? mua h??ng',97,'%',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(3,'ADMIN','ADMIN','2020-06-18','2020-06-18','N??ng cao n??ng l???c qu???n l?? c???a ph??ng','N??ng cao n??ng l???c qu???n l?? c???a ph??ng',1,'PEOPLE',15,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(4,'ADMIN','ADMIN','2020-06-18','2020-06-18','X??y d???ng chu???n n??ng l???c c???a ph??ng','X??y d???ng chu???n n??ng l???c c???a ph??ng',6,'PEOPLE',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(5,'ADMIN','ADMIN','2020-06-18','2020-06-18','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)',98,'%',30,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(6,'ADMIN','ADMIN','2020-06-18','2020-06-18','Chi ti??u d??ng ti???n','Chi ti??u d??ng ti???n',99,'%',5,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(7,'ADMIN','ADMIN','2020-06-18','2020-06-18','????? ch??nh x??c trong d??? b??o ng??n s??ch','????? ch??nh x??c trong d??? b??o ng??n s??ch',95,'%',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(8,'ADMIN','ADMIN','2020-06-18','2020-06-18','M???c ti??u ????o t???o nh??n s???','M???c ti??u ????o t???o nh??n s???',10,'DAYS',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(9,'ADMIN','ADMIN','2020-06-18','2020-06-18','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c',100,'%',40,'MONTH','25-31','ACTIVE','THUONG_XUYEN','N',21),(10,'ADMIN','ADMIN','2020-06-18','2020-06-18','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n',100,'%',30,'MONTH','25-31','ACTIVE','THUONG_XUYEN','N',21),(11,'ADMIN','ADMIN','2020-06-18','2020-06-18','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p',100,'%',30,'MONTH','25-31','ACTIVE','THUONG_XUYEN','N',21),(13,'ADMIN','ADMIN','2020-06-18','2020-06-18','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban',100,'%',100,'QUATER','25-31','ACTIVE','DOT_XUAT','N',21),(21,'ADMIN','ADMIN','2020-06-18','2020-06-18','K???T QU??? KPI KH??C','K???T QU??? KPI KH??C',0,'',0,'','','','','',22),(30,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 01','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','PHONG_BAN',NULL,29),(31,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 02','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','PHONG_BAN',NULL,29),(32,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 03','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','PHONG_BAN',NULL,29),(33,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 04','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','PHONG_BAN',NULL,29),(34,'admin','admin','2020-07-11','2020-07-11','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i',100,'%',50,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(35,'admin','admin','2020-07-11','2020-07-11','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(36,'admin','admin','2020-07-11','2020-07-11','B??o c??o h??ng th??ng','B??o c??o h??ng th??ng',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(37,'admin','admin','2020-07-11','2020-07-11','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c',100,'%',100,'YEAR',NULL,'ACTIVE','DOT_XUAT',NULL,29),(38,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 01','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','PHONG_BAN',NULL,30),(39,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 02','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','PHONG_BAN',NULL,30),(40,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 03','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','PHONG_BAN',NULL,30),(41,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 04','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','PHONG_BAN',NULL,30),(42,'admin','admin','2020-07-11','2020-07-11','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i',100,'%',50,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(43,'admin','admin','2020-07-11','2020-07-11','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(44,'admin','admin','2020-07-11','2020-07-11','B??o c??o h??ng th??ng','B??o c??o h??ng th??ng',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(45,'admin','admin','2020-07-11','2020-07-11','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c',100,'%',100,'YEAR',NULL,'ACTIVE','DOT_XUAT',NULL,30);
/*!40000 ALTER TABLE `tk_kpi_item_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_type_setting`
--

DROP TABLE IF EXISTS `tk_kpi_type_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_type_setting` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `KPI_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_DESC` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `TRONG_SO_KPI_PHONGBAN` double DEFAULT NULL,
  `TRONG_SO_KPI_THUONGXUYEN` double DEFAULT NULL,
  `TRONG_SO_KPI_DOTXUAT` double DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AP_DUNG` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONG_BAN` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tk_kpi_type_setting_tk_department1_idx` (`PHONG_BAN`),
  CONSTRAINT `fk_tk_kpi_type_setting_tk_department1` FOREIGN KEY (`PHONG_BAN`) REFERENCES `tk_department` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_type_setting`
--

LOCK TABLES `tk_kpi_type_setting` WRITE;
/*!40000 ALTER TABLE `tk_kpi_type_setting` DISABLE KEYS */;
INSERT INTO `tk_kpi_type_setting` VALUES (21,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.001','KPI CHO NH??N VI??N L???P TR??NH',60,30,10,'ACTIVE','2',6),(22,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.002','KPI CHO NH??N VI??N KI???M TH???',60,30,10,'ACTIVE','2',6),(23,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.003','KPI CHO NH??N VI??N PH??N T??CH NGHI???P V???',60,30,10,'ACTIVE','2',6),(24,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.004','KPI CHO NH??N VI??N SALE',60,30,10,'ACTIVE','2',6),(25,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.005','KPI CHO NH??N VI??N PM',60,30,10,'ACTIVE','2',6),(26,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.006','KPI CHO NH??N VI??N T?? V???N',60,30,10,'ACTIVE','2',6),(27,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.007','K???T QU??? KPI KH??C',60,30,10,'DELETE','2',6),(29,'admin','admin','2020-07-11','2020-07-11','AdSys01.20200711143247','B??? KPI ??P D???NG CHO NH??N VI??N K??? THU???T H??? TH???NG',70,25,5,'ACTIVE','4',6),(30,'admin','admin','2020-07-11','2020-07-11','AdSys01.20200711143841','B??? KPI ??P D???NG CHO NH??N VI??N K??? THU???T H??? TH???NG 01',60,35,5,'ACTIVE','4',6);
/*!40000 ALTER TABLE `tk_kpi_type_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_rating_date_setup`
--

DROP TABLE IF EXISTS `tk_rating_date_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_rating_date_setup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_by` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_update_by` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `rating_start` int DEFAULT NULL,
  `rating_end` int DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_rating_date_setup`
--

LOCK TABLES `tk_rating_date_setup` WRITE;
/*!40000 ALTER TABLE `tk_rating_date_setup` DISABLE KEYS */;
INSERT INTO `tk_rating_date_setup` VALUES (10,'sonnc','sonnc','2021-03-05','2021-03-05',4,10,'INACTIVE'),(11,'sonnc','sonnc','2021-03-11','2021-03-11',10,15,'ACTIVE');
/*!40000 ALTER TABLE `tk_rating_date_setup` ENABLE KEYS */;
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
  `PASSWORD` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EMAIL` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LANG_PREFERENCE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `MOBILE_NUMBER` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFFICE_NUMBER` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TEAM_NUMBER` int DEFAULT NULL,
  `PROFILE_PICTURE` longblob,
  `DEPARTMENT` int NOT NULL,
  `HE_SO` float DEFAULT NULL,
  `LUONG_CO_SO` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_tk_user_tk_department1_idx` (`DEPARTMENT`),
  CONSTRAINT `fk_tk_user_tk_department1` FOREIGN KEY (`DEPARTMENT`) REFERENCES `tk_department` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_user`
--

LOCK TABLES `tk_user` WRITE;
/*!40000 ALTER TABLE `tk_user` DISABLE KEYS */;
INSERT INTO `tk_user` VALUES (2,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','sonnc','Nguy???n C??ng S??n','142000','123456789','sonnc3@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00),(3,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',19,'ACTIVE','quynd','Nh??m D????ng Qu??','142001','123456789','quynd@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00),(4,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','dungvt','V?? Th??y Dung','142002','123456789','dungvt@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00),(5,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','tultc','L?? Th??? C???m T??','142003','123456789','tultc@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00),(6,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hoanglm','L?? M???nh Ho??ng','142004','123456789','hoanglm@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00),(7,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','anhht','Ho??ng Tu???n Anh','142005','123456789','anhht@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00),(8,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','nhanpth','Ph???m Th??? Thanh Nh??n','142006','123456789','nhanpth@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00),(9,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hungnk','Nguy???n Ki???u H??ng','142007','123456789','hungnk@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00),(10,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','duypv','Ph???m V??n Duy','142008','123456789','duypv@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00);
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
  `IS_PRIVATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT 'C?? ph???i l?? workspace ??? ch??? ????? ri??ng t?? hay kh??ng?',
  `IS_INDIVIDUAL` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT 'L?? workspace c?? nh??n kh??ng?',
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Danh s??ch c??c d??? ??n trong ph??ng ban';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_workspace`
--

LOCK TABLES `tk_workspace` WRITE;
/*!40000 ALTER TABLE `tk_workspace` DISABLE KEYS */;
INSERT INTO `tk_workspace` VALUES (11,'2021-02-26','2021-02-26','sonnc','sonnc',NULL,NULL,'Vietcombank 1101','2',NULL,'csadcadsc','ACTIVE','2021-02-26','2021-02-26',1,NULL),(12,'2021-02-26','2021-02-26','sonnc','sonnc',NULL,NULL,'Vietcombank 1101','2',NULL,'vavdsav','ACTIVE','2021-02-26','2021-02-26',1,NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_attachments`
--

LOCK TABLES `tk_ws_attachments` WRITE;
/*!40000 ALTER TABLE `tk_ws_attachments` DISABLE KEYS */;
INSERT INTO `tk_ws_attachments` VALUES (8,'sonnc','sonnc','2021-03-08','2021-03-08','Dump20200926.sql','files/attachments/Dump20200926.sql','ACTIVE',4,NULL),(9,'sonnc','sonnc','2021-03-08','2021-03-08','LvThs_Dot2.docx','files/attachments/LvThs_Dot2.docx','ACTIVE',4,NULL),(10,'sonnc','sonnc','2021-03-08','2021-03-08','LvThs_Dot2.pdf','files/attachments/LvThs_Dot2.pdf','ACTIVE',4,NULL),(11,'sonnc','sonnc','2021-03-09','2021-03-09','LvThs_Dot2.docx','files/attachments/LvThs_Dot2.docx','ACTIVE',5,NULL),(12,'sonnc','sonnc','2021-03-09','2021-03-09','Capture.PNG','files/attachments/Capture.PNG','ACTIVE',6,NULL),(13,'sonnc','sonnc','2021-03-09','2021-03-09','ES05CR.sql','files/attachments/ES05CR.sql','ACTIVE',8,NULL);
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
  `user_login` varchar(45) DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_list_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_comment`
--

LOCK TABLES `tk_ws_comment` WRITE;
/*!40000 ALTER TABLE `tk_ws_comment` DISABLE KEYS */;
INSERT INTO `tk_ws_comment` VALUES (1,'sonnc','sonnc','2021-03-08','2021-03-08','dababasdbdsbasbasdbdsbadb','ACTIVE','sonnc',4,NULL),(2,'sonnc','sonnc','2021-03-09','2021-03-09','bfdbfdbdfbdfbdfbdfb','ACTIVE','sonnc',5,NULL),(3,'sonnc','sonnc','2021-03-09','2021-03-09',' FNNSGNGNGF','ACTIVE','sonnc',6,NULL),(4,'sonnc','sonnc','2021-03-09','2021-03-09','GFNFGDNFGDNFGDNFGDNFGDNFGDNDF','ACTIVE','sonnc',8,NULL),(5,'sonnc','sonnc','2021-03-10','2021-03-10','','ACTIVE','sonnc',9,NULL);
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
  `milestones_tienkhoan` decimal(19,2) DEFAULT NULL,
  `milestines_start_date` date DEFAULT NULL,
  `milestones_end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_folder`
--

LOCK TABLES `tk_ws_folder` WRITE;
/*!40000 ALTER TABLE `tk_ws_folder` DISABLE KEYS */;
INSERT INTO `tk_ws_folder` VALUES (4,'Giai ??o???n 1','ACTIVE','Giai ??o???n 1','Y',10000000.00,'2021-03-05','2021-06-18'),(5,'Nh??m c??ng viec CLims','ACTIVE','Nh??m c??ng viec CLims',NULL,NULL,NULL,NULL);
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
  `task_name` varchar(500) DEFAULT NULL,
  `task_desc` varchar(2000) DEFAULT NULL,
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
  `review_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_task_tk_ws_tasklist1_idx` (`tk_ws_tasklist_id`),
  CONSTRAINT `fk_tk_ws_task_tk_ws_tasklist1` FOREIGN KEY (`tk_ws_tasklist_id`) REFERENCES `tk_ws_tasklist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task`
--

LOCK TABLES `tk_ws_task` WRITE;
/*!40000 ALTER TABLE `tk_ws_task` DISABLE KEYS */;
INSERT INTO `tk_ws_task` VALUES (4,'sonnc','sonnc','2021-03-08','2021-03-08','C??ng vi???c s??? 1','dsavdsavdsa',2,'N',NULL,2,'2021-03-08','2021-03-11','2021-05-08',1,'CLOSE',1,NULL,200000,NULL,NULL,NULL,3),(5,'sonnc','sonnc','2021-03-09','2021-03-09','C??ng vi???c trong task list 4','bfdbfnn',4,'N',NULL,2,'2021-03-09',NULL,'2021-04-10',1,'CLOSE',1,NULL,0,NULL,NULL,NULL,3),(6,'sonnc','sonnc','2021-03-09','2021-03-09','tASK TESYT','SCSVV',1,'N',NULL,3,'2021-03-09',NULL,'2021-04-10',1,'OPEN',1,NULL,0,NULL,NULL,NULL,3),(8,'sonnc','sonnc','2021-03-09','2021-03-09','C??ng vi???c s??? 1','NGFNFGDN',1,'N',NULL,3,'2021-03-09',NULL,'2021-04-02',1,'OPEN',1,NULL,0,NULL,NULL,NULL,3),(9,'sonnc','sonnc','2021-03-10','2021-03-10','T???o d??? li???u cho bi???u ?????','nfdnfdnfdsnsfdn',3,'N',NULL,2,'2021-03-10',NULL,'2021-04-02',2,'OPEN',1,NULL,0,NULL,NULL,NULL,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task_checklist`
--

LOCK TABLES `tk_ws_task_checklist` WRITE;
/*!40000 ALTER TABLE `tk_ws_task_checklist` DISABLE KEYS */;
INSERT INTO `tk_ws_task_checklist` VALUES (7,'sonnc','sonnc','2021-03-08','2021-03-08',4,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(8,'sonnc','sonnc','2021-03-08','2021-03-08',4,'B??? ki???m tra s??? 2',NULL,'ACTIVE'),(9,'sonnc','sonnc','2021-03-09','2021-03-09',5,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(10,'sonnc','sonnc','2021-03-09','2021-03-09',6,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(11,'sonnc','sonnc','2021-03-09','2021-03-09',8,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(12,'sonnc','sonnc','2021-03-10','2021-03-10',9,'',NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task_checklist_item`
--

LOCK TABLES `tk_ws_task_checklist_item` WRITE;
/*!40000 ALTER TABLE `tk_ws_task_checklist_item` DISABLE KEYS */;
INSERT INTO `tk_ws_task_checklist_item` VALUES (13,7,'sonnc','sonnc','2021-03-08','2021-03-08','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(14,7,'sonnc','sonnc','2021-03-08','2021-03-08','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(15,8,'sonnc','sonnc','2021-03-08','2021-03-08','Ki???m tra d??? li???u 1','ACTIVE',NULL),(16,8,'sonnc','sonnc','2021-03-08','2021-03-08','Ki???m tra s??? 2 2','ACTIVE',NULL),(17,9,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(18,9,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(19,10,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(20,10,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(21,11,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(22,11,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(23,12,'sonnc','sonnc','2021-03-10','2021-03-10','','ACTIVE',NULL),(24,12,'sonnc','sonnc','2021-03-10','2021-03-10','','ACTIVE',NULL);
/*!40000 ALTER TABLE `tk_ws_task_checklist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ws_task_raci`
--

DROP TABLE IF EXISTS `tk_ws_task_raci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ws_task_raci` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tk_ws_tasklist_id` int NOT NULL,
  `user_id` int NOT NULL,
  `raci_r` varchar(1) DEFAULT NULL,
  `raci_a` varchar(1) DEFAULT NULL,
  `raci_c` varchar(1) DEFAULT NULL,
  `raci_i` varchar(1) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tk_ws_task_raci_tk_ws_tasklist1_idx1` (`tk_ws_tasklist_id`),
  CONSTRAINT `fk_tk_ws_task_raci_tk_ws_tasklist1` FOREIGN KEY (`tk_ws_tasklist_id`) REFERENCES `tk_ws_tasklist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task_raci`
--

LOCK TABLES `tk_ws_task_raci` WRITE;
/*!40000 ALTER TABLE `tk_ws_task_raci` DISABLE KEYS */;
INSERT INTO `tk_ws_task_raci` VALUES (1,3,2,'Y',NULL,NULL,NULL,'ACTIVE'),(2,3,3,NULL,'Y',NULL,NULL,'ACTIVE'),(3,3,2,'Y',NULL,NULL,NULL,'ACTIVE'),(4,3,3,'Y','Y','Y',NULL,'ACTIVE'),(5,4,2,'Y','Y',NULL,NULL,'ACTIVE'),(6,4,3,NULL,NULL,'Y','Y','ACTIVE'),(7,1,2,NULL,'Y','Y',NULL,'ACTIVE'),(8,1,3,'Y',NULL,NULL,NULL,'ACTIVE'),(9,12,2,'Y',NULL,'Y',NULL,'ACTIVE'),(10,12,3,NULL,'Y',NULL,NULL,'ACTIVE'),(11,2,2,'Y',NULL,NULL,NULL,'ACTIVE'),(12,2,3,NULL,'Y',NULL,NULL,'ACTIVE');
/*!40000 ALTER TABLE `tk_ws_task_raci` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_tasklist`
--

LOCK TABLES `tk_ws_tasklist` WRITE;
/*!40000 ALTER TABLE `tk_ws_tasklist` DISABLE KEYS */;
INSERT INTO `tk_ws_tasklist` VALUES (1,4,11,'Danh s??ch c??ng vi???c 1','cadvadsv',1,NULL,'2021-04-10','H','ACTIVE','sonnc','sonnc','2021-03-05','2021-03-05'),(2,4,11,'Danh s??ch c??ng vi???c 2','vdsavdsav',3,NULL,'2021-06-11','H','ACTIVE','sonnc','sonnc','2021-03-05','2021-03-05'),(3,5,11,'Danh s??ch c??ng vi???c 31','vdsavdsav',10,NULL,'2021-06-11','H','ACTIVE','sonnc','sonnc','2021-03-05','2021-03-05'),(4,NULL,11,'Danh s??ch c??ng vi???c 4','cccc',1,NULL,'2021-04-09','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(5,NULL,11,'Danh s??ch c??ng vi???c 5','sdacds',1,NULL,'2021-04-02','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(6,NULL,11,'Danh s??ch c??ng vi???c 6','jhvg',1,NULL,'2021-04-10','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(7,NULL,11,'Danh s??ch c??ng vi???c 7','css',1,NULL,'2021-04-02','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(8,NULL,11,'Danh s??ch c??ng vi???c 7','cdcd',1,NULL,'2021-04-02','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(9,NULL,11,'Danh s??ch c??ng vi???c 7','cdcd',1,NULL,'2021-04-02','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(10,NULL,11,'Danh s??ch c??ng vi???c 112','csc',1,NULL,'2021-03-08','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(11,NULL,11,'Danh s??ch c??ng vi???c 110','bkj b',1,NULL,'2021-04-07','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(12,NULL,11,'Danh s??ch c??ng vi???c 1','kmtym',1,NULL,'2021-03-31','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07');
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

-- Dump completed on 2021-03-11 18:26:15
