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
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luong_khoan`
--

LOCK TABLES `luong_khoan` WRITE;
/*!40000 ALTER TABLE `luong_khoan` DISABLE KEYS */;
INSERT INTO `luong_khoan` VALUES (1,2,'admin','admin','2021-01-28','2021-01-28',1,'CV',200000.00,3),(3,2,'admin','admin','2021-01-28','2021-01-28',1,'MT',1500000.00,3),(4,2,'admin','admin','2021-01-28','2021-01-28',1,'HQDA',2200000.00,3),(302,2,'admin','admin','2021-01-28','2021-01-28',2,'CV',500000.00,3),(303,2,'admin','admin','2021-01-28','2021-01-28',2,'MT',0.00,3),(304,2,'admin','admin','2021-01-28','2021-01-28',2,'HQDA',2450000.00,3),(305,2,'admin','admin','2021-01-28','2021-01-28',3,'CV',165000.00,3),(306,2,'admin','admin','2021-01-28','2021-01-28',3,'MT',500000.00,3),(307,2,'admin','admin','2021-01-28','2021-01-28',3,'HQDA',3075000.00,3),(310,2,'admin','admin','2020-01-28','2020-01-28',1,'CV',120000.00,3),(311,2,'admin','admin','2020-01-28','2020-01-28',1,'MT',254000.00,3),(312,2,'admin','admin','2020-01-28','2020-01-28',1,'HQDA',1500000.00,3),(313,2,'admin','admin','2020-02-28','2020-02-28',2,'CV',310000.00,3),(314,2,'admin','admin','2020-02-28','2020-02-28',2,'MT',420000.00,3),(315,2,'admin','admin','2020-02-28','2020-02-28',2,'HQDA',2650000.00,3),(316,2,'admin','admin','2020-03-28','2020-03-28',3,'CV',0.00,3),(317,2,'admin','admin','2020-03-28','2020-03-28',3,'MT',0.00,3),(318,2,'admin','admin','2020-03-28','2020-03-28',3,'HQDA',1425000.00,3),(319,2,'admin','admin','2020-04-28','2020-04-28',4,'CV',0.00,3),(320,2,'admin','admin','2020-04-28','2020-04-28',4,'MT',0.00,3),(321,2,'admin','admin','2020-04-28','2020-04-28',4,'HQDA',1000000.00,3),(322,2,'admin','admin','2020-05-28','2020-05-28',5,'CV',500000.00,3),(323,2,'admin','admin','2020-05-28','2020-05-28',5,'MT',0.00,3),(324,2,'admin','admin','2020-05-28','2020-05-28',5,'HQDA',1242000.00,3),(325,2,'admin','admin','2020-06-28','2020-06-28',6,'CV',0.00,3),(326,2,'admin','admin','2020-06-28','2020-06-28',6,'MT',0.00,3),(327,2,'admin','admin','2020-06-28','2020-06-28',6,'HQDA',2300000.00,3),(328,2,'admin','admin','2020-07-28','2020-07-28',7,'CV',230000.00,3),(329,2,'admin','admin','2020-07-28','2020-07-28',7,'MT',0.00,3),(330,2,'admin','admin','2020-07-28','2020-07-28',7,'HQDA',1240000.00,3),(331,2,'admin','admin','2020-08-28','2020-08-28',8,'CV',0.00,3),(332,2,'admin','admin','2020-08-28','2020-08-28',8,'MT',0.00,3),(333,2,'admin','admin','2020-08-28','2020-08-28',8,'HQDA',2430000.00,3),(334,2,'admin','admin','2020-09-28','2020-09-28',9,'CV',0.00,3),(335,2,'admin','admin','2020-09-28','2020-09-28',9,'MT',0.00,3),(336,2,'admin','admin','2020-09-28','2020-09-28',9,'HQDA',1246000.00,3),(337,2,'admin','admin','2020-10-28','2020-10-28',10,'CV',0.00,3),(338,2,'admin','admin','2020-10-28','2020-10-28',10,'MT',0.00,3),(339,2,'admin','admin','2020-10-28','2020-10-28',10,'HQDA',3120000.00,3),(340,2,'admin','admin','2020-11-28','2020-11-28',11,'CV',210000.00,3),(341,2,'admin','admin','2020-11-28','2020-11-28',11,'MT',1200000.00,3),(342,2,'admin','admin','2020-11-28','2020-11-28',11,'HQDA',1200000.00,3),(343,2,'admin','admin','2020-12-28','2020-12-28',12,'CV',0.00,3),(344,2,'admin','admin','2020-12-28','2020-12-28',12,'MT',0.00,3),(345,2,'admin','admin','2020-12-28','2020-12-28',12,'HQDA',3075000.00,3),(430,3,'quynd','quynd','2021-03-24','2021-03-24',3,'CV',140000.00,3),(431,3,'quynd','quynd','2021-03-24','2021-03-24',3,'MT',0.00,3),(432,3,'quynd','quynd','2021-03-24','2021-03-24',3,'HQDA',4422000.10,3),(433,4,'quynd','quynd','2021-03-24','2021-03-24',3,'CV',0.00,3),(434,4,'quynd','quynd','2021-03-24','2021-03-24',3,'MT',0.00,3),(435,4,'quynd','quynd','2021-03-24','2021-03-24',3,'HQDA',0.00,3),(436,5,'quynd','quynd','2021-03-24','2021-03-24',3,'CV',0.00,3),(437,5,'quynd','quynd','2021-03-24','2021-03-24',3,'MT',0.00,3),(438,5,'quynd','quynd','2021-03-24','2021-03-24',3,'HQDA',0.00,3),(439,6,'quynd','quynd','2021-03-24','2021-03-24',3,'CV',0.00,3),(440,6,'quynd','quynd','2021-03-24','2021-03-24',3,'MT',0.00,3),(441,6,'quynd','quynd','2021-03-24','2021-03-24',3,'HQDA',0.00,3),(442,7,'quynd','quynd','2021-03-24','2021-03-24',3,'CV',0.00,3),(443,7,'quynd','quynd','2021-03-24','2021-03-24',3,'MT',0.00,3),(444,7,'quynd','quynd','2021-03-24','2021-03-24',3,'HQDA',0.00,3),(445,8,'quynd','quynd','2021-03-24','2021-03-24',3,'CV',0.00,3),(446,8,'quynd','quynd','2021-03-24','2021-03-24',3,'MT',0.00,3),(447,8,'quynd','quynd','2021-03-24','2021-03-24',3,'HQDA',0.00,3),(448,9,'quynd','quynd','2021-03-24','2021-03-24',3,'CV',0.00,3),(449,9,'quynd','quynd','2021-03-24','2021-03-24',3,'MT',0.00,3),(450,9,'quynd','quynd','2021-03-24','2021-03-24',3,'HQDA',0.00,3),(451,10,'quynd','quynd','2021-03-24','2021-03-24',3,'CV',0.00,3),(452,10,'quynd','quynd','2021-03-24','2021-03-24',3,'MT',0.00,3),(453,10,'quynd','quynd','2021-03-24','2021-03-24',3,'HQDA',0.00,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_code_value`
--

LOCK TABLES `sys_code_value` WRITE;
/*!40000 ALTER TABLE `sys_code_value` DISABLE KEYS */;
INSERT INTO `sys_code_value` VALUES (7,2,'2021-02-20','2021-02-24',0,'SYSTEM','sonnc','ACTIVE','NV','Member','Nh??n vi??n',2),(8,3,'2021-02-23','2021-02-24',1,'sonnc','sonnc','ACTIVE','DAY','Day','Ng??y',3),(9,3,'2021-02-23','2021-02-24',2,'sonnc','sonnc','ACTIVE','MONTH','Month','Th??ng',3),(10,3,'2021-02-23','2021-02-24',3,'sonnc','sonnc','ACTIVE','QUART','Quart','Qu??',3),(11,3,'2021-02-23','2021-02-24',4,'sonnc','sonnc','ACTIVE','YEAR','Year','N??m',3),(16,1,'2021-02-24','2021-02-24',5,'sonnc','sonnc','INACTIVE','WEEK','Week','Tu???n',3),(17,2,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','TL','Team lead','Tr?????ng nh??m',2),(18,2,'2021-02-24','2021-02-24',2,'sonnc','sonnc','ACTIVE','SPM','Sub - Project mannager','Ph?? qu???n l?? d??? ??n',2),(19,2,'2021-02-24','2021-02-24',3,'sonnc','sonnc','ACTIVE','PM','Project manager','Qu???n l?? d??? ??n',2),(20,0,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','YES','Yes','C??',4),(21,1,'2021-02-24','2021-02-24',4,'sonnc','sonnc','ACTIVE','ADMIN','System admin','Qu???n tr??? h??? th???ng',2),(22,0,'2021-02-24','2021-02-24',1,'sonnc','sonnc','ACTIVE','UDF_DATE','UDF setup for date','C??i ?????t UDF cho ng??y th??ng',5),(23,0,'2021-02-24','2021-02-24',2,'sonnc','sonnc','ACTIVE','UDF_DROPDOWN','UDF setup for dropdown list','C??i ?????t UDF cho danh s??ch th??? xu???ng ',5),(24,0,'2021-02-24','2021-02-24',3,'sonnc','sonnc','ACTIVE','UDF_LABELS','UDF setup for labels','C??i ?????t UDF cho nh??n',5),(25,0,'2021-02-24','2021-02-24',4,'sonnc','sonnc','ACTIVE','UDF_TEXT','UDF setup for text','C??i ?????t UDF cho v??n b???n',5),(26,0,'2021-02-24','2021-02-24',5,'sonnc','sonnc','ACTIVE','UDF_TEXTAREA','UDF setup for text area','C??i ?????t UDF cho v??ng v??n b???n',5),(27,0,'2021-02-24','2021-02-24',6,'sonnc','sonnc','ACTIVE','UDF_EMAIL','UDF setup for email','C??i ?????t UDF cho th?? ??i???n t???',5),(28,0,'2021-02-24','2021-02-24',7,'sonnc','sonnc','ACTIVE','UDF_NUMBER','UDF setup for number','C??i ?????t UDF cho s???',5),(29,0,'2021-02-24','2021-02-24',8,'sonnc','sonnc','ACTIVE','UDF_MONEY','UDF setup for money','C??i ?????t UDF cho ti???n t???',5),(30,1,'2021-03-01','2021-03-21',1,'sonnc','sonnc','ACTIVE','HIGHT','Hight','Cao',6),(31,1,'2021-03-01','2021-03-21',2,'sonnc','sonnc','ACTIVE','MEDIUM','Medium','Trung b??nh',6),(32,1,'2021-03-01','2021-03-21',3,'sonnc','sonnc','ACTIVE','LOW','Low','Th???p',6),(33,1,'2021-03-21','2021-03-21',4,'sonnc','sonnc','ACTIVE','NA','NA','NA',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_udf_field_value`
--

LOCK TABLES `sys_udf_field_value` WRITE;
/*!40000 ALTER TABLE `sys_udf_field_value` DISABLE KEYS */;
INSERT INTO `sys_udf_field_value` VALUES (1,0,'sonnc','2021-03-09','sonnc','2021-03-09',8,'S??? ??i???n tho???i qu???n l??',NULL,'NUMBER',NULL,NULL,NULL,NULL,NULL,'0987654321','ACTIVE'),(2,0,'sonnc','2021-03-09','sonnc','2021-03-09',8,'Email',NULL,'EMAIL',NULL,NULL,NULL,NULL,NULL,'Sonnc@fpt.com.vn','INACTIVE'),(3,0,'sonnc','2021-03-10','sonnc','2021-03-10',9,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','ACTIVE'),(4,0,'sonnc','2021-03-11','sonnc','2021-03-11',10,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','ACTIVE'),(5,0,'sonnc','2021-03-11','sonnc','2021-03-11',11,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','ACTIVE'),(6,0,'sonnc','2021-03-11','sonnc','2021-03-11',12,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','ACTIVE'),(7,0,'sonnc','2021-03-11','sonnc','2021-03-11',13,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','ACTIVE'),(8,0,'sonnc','2021-03-12','sonnc','2021-03-12',8,'S??? ??i???n tho???i qu???n l??',NULL,'NUMBER',NULL,NULL,NULL,NULL,NULL,'0987654321','INACTIVE'),(9,0,'sonnc','2021-03-12','sonnc','2021-03-12',8,'Email',NULL,'EMAIL',NULL,NULL,NULL,NULL,NULL,'Sonnc@fpt.com.vn','INACTIVE'),(10,0,'sonnc','2021-03-12','sonnc','2021-03-12',14,'S??? ??i???n tho???i qu???n l??',NULL,'NUMBER',NULL,NULL,NULL,NULL,NULL,'0987654321','ACTIVE'),(11,0,'sonnc','2021-03-12','sonnc','2021-03-12',15,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','ACTIVE'),(12,0,'sonnc','2021-03-12','sonnc','2021-03-12',6,'S??? ??i???n tho???i qu???n l??',NULL,'NUMBER',NULL,NULL,NULL,NULL,NULL,'0987654321','ACTIVE'),(13,0,'sonnc','2021-03-12','sonnc','2021-03-12',16,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','ACTIVE'),(14,0,'sonnc','2021-03-21','sonnc','2021-03-21',6,'Gi?? tr??? c???a ng?????i d??ng',NULL,'NUMBER',NULL,NULL,NULL,NULL,NULL,'123','ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_department`
--

LOCK TABLES `tk_department` WRITE;
/*!40000 ALTER TABLE `tk_department` DISABLE KEYS */;
INSERT INTO `tk_department` VALUES (2,'2020-03-28','2020-06-30','admin','admin','Trung t??m ph???n m???m s??? 1','Trung t??m ph???n m???m s??? 1','PrBNK01','ACTIVE'),(3,'2020-03-28','2020-03-28','admin','admin','ADMIN','ADMIN','ADMIN','ACTIVE'),(4,'2020-06-30','2020-06-30','admin','admin','B??? ph???n K??? thu???t h??? th???ng','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo c???nh b??o c???a ????i kh?? t?????ng Trung ????ng Trung Qu???c, ng??y 29/6, c??c t???nh th??nh nh?? Qu?? Ch??u, H??? Nam, H??? B???c, An Huy, Giang T??, Th?????ng H???i... s??? xu???t hi???n m??a v???a v?? m??a r???t to. Trong ????, m???t s??? n??i thu???c Giang T??, Th?????ng H???i s??? xu???t hi???n l?????ng m??a l???n trong th???i gian ng???n v???i l?????ng m??a v??o kho???ng 30-50mm/h, k??m theo hi???n t?????ng th???i ti???t b???t th?????ng.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">????y ???? l?? ng??y th??? 27 li??n ti???p (t??? ng??y 2/6-28/6) ????i kh?? t?????ng Trung ????ng Trung Qu???c ra c???nh b??o v??? m??a l???n tr??n c??c ?????a ph????ng c???a n?????c n??y, ??i???u hi???m th???y t??? tr?????c ?????n nay.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo b??o c??o c???a B??? qu???n l?? kh???n c???p Trung Qu???c, ?????t m??a l???n k??o d??i t??? ?????u th??ng 6 ?????n nay ???? g??y thi???t h???i nghi??m tr???ng cho 26 t???nh th??nh c???a Trung Qu???c, ?????c bi???t l?? khu v???c mi???n Nam v???i h??n 13 tri???u ng?????i b??? ???nh h?????ng.</p>','AdSys01','ACTIVE'),(5,'2020-06-30','2020-06-30','admin','admin','B??? ph???n K??? thu???t h??? th???ng','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo c???nh b??o c???a ????i kh?? t?????ng Trung ????ng Trung Qu???c, ng??y 29/6, c??c t???nh th??nh nh?? Qu?? Ch??u, H??? Nam, H??? B???c, An Huy, Giang T??, Th?????ng H???i... s??? xu???t hi???n m??a v???a v?? m??a r???t to. Trong ????, m???t s??? n??i thu???c Giang T??, Th?????ng H???i s??? xu???t hi???n l?????ng m??a l???n trong th???i gian ng???n v???i l?????ng m??a v??o kho???ng 30-50mm/h, k??m theo hi???n t?????ng th???i ti???t b???t th?????ng.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">????y ???? l?? ng??y th??? 27 li??n ti???p (t??? ng??y 2/6-28/6) ????i kh?? t?????ng Trung ????ng Trung Qu???c ra c???nh b??o v??? m??a l???n tr??n c??c ?????a ph????ng c???a n?????c n??y, ??i???u hi???m th???y t??? tr?????c ?????n nay.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo b??o c??o c???a B??? qu???n l?? kh???n c???p Trung Qu???c, ?????t m??a l???n k??o d??i t??? ?????u th??ng 6 ?????n nay ???? g??y thi???t h???i nghi??m tr???ng cho 26 t???nh th??nh c???a Trung Qu???c, ?????c bi???t l?? khu v???c mi???n Nam v???i h??n 13 tri???u ng?????i b??? ???nh h?????ng.</p>','AdSys01','ACTIVE'),(6,'2020-06-30','2020-06-30','admin','admin','Ph??ng ban d??? ??n BIDV-CROMS','Ph??ng ban d??? ??n BIDV-CROMS','PrBBNKBIDV','ACTIVE'),(7,'2020-06-30','2020-06-30','admin','admin','Ph??ng ban d??? ??n BIDV-CROMS','Ph??ng ban d??? ??n BIDV-CROMS','PrBBNKBIDV','ACTIVE');
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
  `REF_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID_idx` (`USER_ID`),
  CONSTRAINT `USERS_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tk_user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item`
--

LOCK TABLES `tk_kpi_item` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item` DISABLE KEYS */;
INSERT INTO `tk_kpi_item` VALUES (41,'sonnc','sonnc','2021-03-17','2021-03-17',10,2021,'BO_PHAN','KPI GAN VOI BO PHAN',50,NULL,NULL,'ACTIVE',21),(42,'sonnc','sonnc','2021-03-17','2021-03-17',10,2021,'THUONG_XUYEN','KPI THUONG XUYEN',40,NULL,NULL,'ACTIVE',21),(43,'sonnc','sonnc','2021-03-17','2021-03-17',10,2021,'DOT_XUAT','KPI CONG VIEC DOT XUAT',10,NULL,NULL,'ACTIVE',21),(44,'sonnc','sonnc','2021-03-17','2021-03-17',9,2021,'BO_PHAN','KPI GAN VOI BO PHAN',50,NULL,NULL,'ACTIVE',21),(45,'sonnc','sonnc','2021-03-17','2021-03-17',9,2021,'THUONG_XUYEN','KPI THUONG XUYEN',40,NULL,NULL,'ACTIVE',21),(46,'sonnc','sonnc','2021-03-17','2021-03-17',9,2021,'DOT_XUAT','KPI CONG VIEC DOT XUAT',10,NULL,NULL,'ACTIVE',21),(47,'sonnc','sonnc','2021-03-24','2021-03-24',2,2021,'BO_PHAN','KPI GAN VOI BO PHAN',50,NULL,NULL,'ACTIVE',21),(48,'sonnc','sonnc','2021-03-24','2021-03-24',2,2021,'THUONG_XUYEN','KPI THUONG XUYEN',40,NULL,NULL,'ACTIVE',21),(49,'sonnc','sonnc','2021-03-24','2021-03-24',2,2021,'DOT_XUAT','KPI CONG VIEC DOT XUAT',10,NULL,NULL,'ACTIVE',21);
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
  `REF_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `KPI_ITEM_ID_idx` (`TK_KPI_ITEM_ID`),
  CONSTRAINT `KPI_ITEM_ID` FOREIGN KEY (`TK_KPI_ITEM_ID`) REFERENCES `tk_kpi_item` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item_detail`
--

LOCK TABLES `tk_kpi_item_detail` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item_detail` DISABLE KEYS */;
INSERT INTO `tk_kpi_item_detail` VALUES (174,'sonnc','quynd','2021-03-17','2021-03-17',41,'X??y d???ng chu???n n??ng l???c c???a ph??ng UPDATE','X??y d???ng chu???n n??ng l???c c???a ph??ng',6,'PEOPLE','YEAR',10,0,NULL,'ACTIVE',4),(175,'sonnc','sonnc','2021-03-17','2021-03-17',41,'them m???i','th??m m???i',100,'YEAR','MONTH',25,0,NULL,'INACTIVE',46),(176,'sonnc','quynd','2021-03-17','2021-03-17',41,'Chi ti??u d??ng ti???n s???a','Chi ti??u d??ng ti???n',20,'%','YEAR',10,0,NULL,'ACTIVE',6),(177,'sonnc','quynd','2021-03-17','2021-03-17',41,'N??ng cao n??ng l???c qu???n l?? c???a ph??ng UPDATE','N??ng cao n??ng l???c qu???n l?? c???a ph??ng',1,'PEOPLE','MONTH',10,10,1,'ACTIVE',3),(178,'sonnc','quynd','2021-03-17','2021-03-17',41,'Gi???m chi ph?? t???n kho UPDATE','Gi???m chi ph?? t???n kho',30000000,'VND','YEAR',30,0,NULL,'ACTIVE',1),(179,'sonnc','quynd','2021-03-17','2021-03-17',41,'????? ch??nh x??c trong d??? b??o ng??n s??ch','????? ch??nh x??c trong d??? b??o ng??n s??ch',95,'%','YEAR',10,0,NULL,'ACTIVE',7),(180,'sonnc','quynd','2021-03-17','2021-03-17',41,'Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)',98,'%','YEAR',10,0,NULL,'ACTIVE',5),(181,'sonnc','sonnc','2021-03-17','2021-03-17',41,'M???c ti??u ????o t???o nh??n s???','M???c ti??u ????o t???o nh??n s???',10,'DAYS','YEAR',10,0,NULL,'INACTIVE',8),(182,'sonnc','quynd','2021-03-17','2021-03-17',41,'Gi???m chi ph?? mua h??ng UPDATE','Gi???m chi ph?? mua h??ng',97,'%','YEAR',30,0,NULL,'ACTIVE',2),(183,'sonnc','quynd','2021-03-17','2021-03-17',42,'Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c',100,'%','MONTH',60,30,50,'ACTIVE',9),(184,'sonnc','quynd','2021-03-17','2021-03-17',42,'Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n',100,'%','MONTH',40,20,50,'ACTIVE',10),(185,'sonnc','quynd','2021-03-17','2021-03-17',42,'Tinh th???n chia s???, h??? tr??? ?????ng nghi???p','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p',100,'%','MONTH',40,0.375,50,'INACTIVE',11),(186,'sonnc','sonnc','2021-03-17','2021-03-17',43,'X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban',100,'%','QUATER',100,59,59,'ACTIVE',13),(187,'sonnc','quynd','2021-03-17','2021-03-17',44,'Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)',98,'%','YEAR',10,0,NULL,'ACTIVE',5),(188,'sonnc','quynd','2021-03-17','2021-03-17',44,'Gi???m chi ph?? t???n kho UPDATE','Gi???m chi ph?? t???n kho',30000000,'VND','YEAR',30,0,NULL,'ACTIVE',1),(189,'sonnc','quynd','2021-03-17','2021-03-17',44,'N??ng cao n??ng l???c qu???n l?? c???a ph??ng UPDATE','N??ng cao n??ng l???c qu???n l?? c???a ph??ng',1,'PEOPLE','MONTH',10,5,1,'ACTIVE',3),(190,'sonnc','quynd','2021-03-17','2021-03-17',44,'X??y d???ng chu???n n??ng l???c c???a ph??ng UPDATE','X??y d???ng chu???n n??ng l???c c???a ph??ng',6,'PEOPLE','YEAR',10,0,NULL,'ACTIVE',4),(191,'sonnc','sonnc','2021-03-17','2021-03-17',44,'them m???i','th??m m???i',100,'YEAR','MONTH',25,0,NULL,'INACTIVE',46),(192,'sonnc','quynd','2021-03-17','2021-03-17',44,'Chi ti??u d??ng ti???n s???a','Chi ti??u d??ng ti???n',20,'%','YEAR',10,0,NULL,'ACTIVE',6),(193,'sonnc','sonnc','2021-03-17','2021-03-17',44,'M???c ti??u ????o t???o nh??n s???','M???c ti??u ????o t???o nh??n s???',10,'DAYS','YEAR',10,0,NULL,'INACTIVE',8),(194,'sonnc','quynd','2021-03-17','2021-03-17',44,'????? ch??nh x??c trong d??? b??o ng??n s??ch','????? ch??nh x??c trong d??? b??o ng??n s??ch',95,'%','YEAR',10,0,NULL,'ACTIVE',7),(195,'sonnc','quynd','2021-03-17','2021-03-17',44,'Gi???m chi ph?? mua h??ng UPDATE','Gi???m chi ph?? mua h??ng',97,'%','YEAR',30,0,NULL,'ACTIVE',2),(196,'sonnc','quynd','2021-03-17','2021-03-17',45,'Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n',100,'%','MONTH',40,10,25,'ACTIVE',10),(197,'sonnc','quynd','2021-03-17','2021-03-17',45,'Tinh th???n chia s???, h??? tr??? ?????ng nghi???p','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p',100,'%','MONTH',40,0.2,25,'INACTIVE',11),(198,'sonnc','quynd','2021-03-17','2021-03-17',45,'Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c',100,'%','MONTH',60,15,25,'ACTIVE',9),(199,'sonnc','sonnc','2021-03-17','2021-03-17',46,'X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban',100,'%','QUATER',100,25,25,'ACTIVE',13),(200,'sonnc','sonnc','2021-03-24','2021-03-24',47,'Gi???m chi ph?? t???n kho UPDATE','Gi???m chi ph?? t???n kho',30000000,'VND','YEAR',30,0,NULL,'ACTIVE',1),(201,'sonnc','sonnc','2021-03-24','2021-03-24',47,'Gi???m chi ph?? mua h??ng UPDATE','Gi???m chi ph?? mua h??ng',97,'%','YEAR',30,0,NULL,'ACTIVE',2),(202,'sonnc','sonnc','2021-03-24','2021-03-24',47,'them m???i','th??m m???i',100,'YEAR','MONTH',25,0,NULL,'ACTIVE',46),(203,'sonnc','sonnc','2021-03-24','2021-03-24',47,'Chi ti??u d??ng ti???n s???a','Chi ti??u d??ng ti???n',20,'%','YEAR',10,0,NULL,'ACTIVE',6),(204,'sonnc','sonnc','2021-03-24','2021-03-24',47,'????? ch??nh x??c trong d??? b??o ng??n s??ch','????? ch??nh x??c trong d??? b??o ng??n s??ch',95,'%','YEAR',10,0,NULL,'ACTIVE',7),(205,'sonnc','sonnc','2021-03-24','2021-03-24',47,'N??ng cao n??ng l???c qu???n l?? c???a ph??ng UPDATE','N??ng cao n??ng l???c qu???n l?? c???a ph??ng',1,'PEOPLE','MONTH',10,0,NULL,'ACTIVE',3),(206,'sonnc','sonnc','2021-03-24','2021-03-24',47,'M???c ti??u ????o t???o nh??n s???','M???c ti??u ????o t???o nh??n s???',10,'DAYS','YEAR',10,0,NULL,'ACTIVE',8),(207,'sonnc','sonnc','2021-03-24','2021-03-24',47,'X??y d???ng chu???n n??ng l???c c???a ph??ng UPDATE','X??y d???ng chu???n n??ng l???c c???a ph??ng',6,'PEOPLE','YEAR',10,0,NULL,'ACTIVE',4),(208,'sonnc','sonnc','2021-03-24','2021-03-24',47,'Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)',98,'%','YEAR',10,0,NULL,'ACTIVE',5),(209,'sonnc','sonnc','2021-03-24','2021-03-24',48,'Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n',100,'%','MONTH',40,0,NULL,'ACTIVE',10),(210,'sonnc','sonnc','2021-03-24','2021-03-24',48,'Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c',100,'%','MONTH',60,0,NULL,'ACTIVE',9),(211,'sonnc','sonnc','2021-03-24','2021-03-24',48,'Tinh th???n chia s???, h??? tr??? ?????ng nghi???p','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p',100,'%','MONTH',40,0,NULL,'ACTIVE',11),(212,'sonnc','sonnc','2021-03-24','2021-03-24',49,'X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban',100,'%','QUATER',100,0,NULL,'ACTIVE',13);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item_detail_rating`
--

LOCK TABLES `tk_kpi_item_detail_rating` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item_detail_rating` DISABLE KEYS */;
INSERT INTO `tk_kpi_item_detail_rating` VALUES (30,'duypv','duypv','2021-03-17','2021-03-17',183,3,NULL,2021,40,20,50,'APPROVED'),(31,'duypv','duypv','2021-03-17','2021-03-17',184,3,NULL,2021,30,15,50,'APPROVED'),(32,'duypv','duypv','2021-03-17','2021-03-17',185,3,NULL,2021,30,15,50,'APPROVED'),(33,'duypv','duypv','2021-03-17','2021-03-17',186,NULL,1,2021,100,59,59,'APPROVED'),(34,'hungkieu','hungkieu','2021-03-17','2021-03-17',197,3,NULL,2021,30,7.5,25,'APPROVED'),(35,'hungkieu','hungkieu','2021-03-17','2021-03-17',196,3,NULL,2021,30,7.5,25,'APPROVED'),(36,'hungkieu','hungkieu','2021-03-17','2021-03-17',198,3,NULL,2021,40,10,25,'APPROVED'),(37,'hungkieu','hungkieu','2021-03-17','2021-03-17',199,NULL,1,2021,100,25,25,'APPROVED'),(38,'duypv','duypv','2021-03-17','2021-03-17',177,3,NULL,2021,10,10,1,'APPROVED'),(39,'hungkieu','hungkieu','2021-03-17','2021-03-17',189,3,NULL,2021,10,5,0.5,'APPROVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item_setting`
--

LOCK TABLES `tk_kpi_item_setting` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item_setting` DISABLE KEYS */;
INSERT INTO `tk_kpi_item_setting` VALUES (1,'ADMIN','quynd','2020-06-18','2021-03-17','Gi???m chi ph?? t???n kho UPDATE','Gi???m chi ph?? t???n kho',30000000,'VND',30,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(2,'ADMIN','quynd','2020-06-18','2021-03-17','Gi???m chi ph?? mua h??ng UPDATE','Gi???m chi ph?? mua h??ng',97,'%',30,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(3,'ADMIN','quynd','2020-06-18','2021-03-17','N??ng cao n??ng l???c qu???n l?? c???a ph??ng UPDATE','N??ng cao n??ng l???c qu???n l?? c???a ph??ng',1,'PEOPLE',10,'MONTH','25-31','ACTIVE','BO_PHAN','N',21),(4,'ADMIN','quynd','2020-06-18','2021-03-17','X??y d???ng chu???n n??ng l???c c???a ph??ng UPDATE','X??y d???ng chu???n n??ng l???c c???a ph??ng',6,'PEOPLE',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(5,'ADMIN','quynd','2020-06-18','2021-03-17','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)','Ho??n th??nh c??c b??o c??o t??i ch??nh ??? ch??nh x??c v?? ????ng h???n (98%)',98,'%',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(6,'ADMIN','quynd','2020-06-18','2021-03-17','Chi ti??u d??ng ti???n s???a','Chi ti??u d??ng ti???n',20,'%',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(7,'ADMIN','quynd','2020-06-18','2021-03-17','????? ch??nh x??c trong d??? b??o ng??n s??ch','????? ch??nh x??c trong d??? b??o ng??n s??ch',95,'%',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(8,'ADMIN','quynd','2020-06-18','2021-03-17','M???c ti??u ????o t???o nh??n s???','M???c ti??u ????o t???o nh??n s???',10,'DAYS',10,'YEAR','25-31','INACTIVE','BO_PHAN','N',21),(9,'ADMIN','quynd','2020-06-18','2021-03-17','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c','Ki???m so??t s??? li???u tr??n h??? th???ng ERP k???p th???i, ch??nh x??c',100,'%',60,'MONTH','25-31','ACTIVE','THUONG_XUYEN','N',21),(10,'ADMIN','quynd','2020-06-18','2021-03-17','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n','Ho???ch ?????nh chi???n l?????c v??? t??i ch??nh, c??n ?????i d??ng ti???n',100,'%',40,'MONTH','25-31','ACTIVE','THUONG_XUYEN','N',21),(11,'ADMIN','quynd','2020-06-18','2021-03-17','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p','Tinh th???n chia s???, h??? tr??? ?????ng nghi???p',100,'%',40,'MONTH','25-31','INACTIVE','THUONG_XUYEN','N',21),(13,'ADMIN','ADMIN','2020-06-18','2020-06-18','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban','X??y d???ng c??c quy ?????nh li??n quan ?????n ph??ng ban',100,'%',100,'QUATER','25-31','ACTIVE','DOT_XUAT','N',21),(21,'ADMIN','ADMIN','2020-06-18','2020-06-18','K???T QU??? KPI KH??C','K???T QU??? KPI KH??C',0,'',0,'','','','','',22),(30,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 01','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','BO_PHAN',NULL,29),(31,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 02','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','BO_PHAN',NULL,29),(32,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 03','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','BO_PHAN',NULL,29),(33,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 04','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','BO_PHAN',NULL,29),(34,'admin','admin','2020-07-11','2020-07-11','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i',100,'%',50,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(35,'admin','admin','2020-07-11','2020-07-11','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(36,'admin','admin','2020-07-11','2020-07-11','B??o c??o h??ng th??ng','B??o c??o h??ng th??ng',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(37,'admin','admin','2020-07-11','2020-07-11','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c',100,'%',100,'YEAR',NULL,'ACTIVE','DOT_XUAT',NULL,29),(38,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 01','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','BO_PHAN',NULL,30),(39,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 02','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','BO_PHAN',NULL,30),(40,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 03','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','BO_PHAN',NULL,30),(41,'admin','admin','2020-07-11','2020-07-11','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI - Module 04','Ph??t tri???n h??? th???ng qu???n l?? c??ng vi???c v?? ????nh gi?? KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','BO_PHAN',NULL,30),(42,'admin','admin','2020-07-11','2020-07-11','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i','Ph??t hi???n l???i h??? th???ng v?? x??? l?? k???p th???i',100,'%',50,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(43,'admin','admin','2020-07-11','2020-07-11','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t','Ph??t hi???n l???i b???o m???t/ v?? l???i b???o m???t',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(44,'admin','admin','2020-07-11','2020-07-11','B??o c??o h??ng th??ng','B??o c??o h??ng th??ng',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(45,'admin','admin','2020-07-11','2020-07-11','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c','X??? l?? h??? th???ng ?????t xu???t ngo??i khu v???c',100,'%',100,'YEAR',NULL,'ACTIVE','DOT_XUAT',NULL,30),(46,'sonnc','quynd','2021-03-17','2021-03-17','them m???i','th??m m???i',100,'YEAR',25,'MONTH',NULL,'INACTIVE','BO_PHAN',NULL,21),(47,'quynd','quynd','2021-03-17','2021-03-17','KPI 1',' KPI 1 M?? t??? *',1000,'USD',75,'MONTH',NULL,'ACTIVE','BO_PHAN',NULL,31),(48,'quynd','quynd','2021-03-17','2021-03-17','KPI 2',' KPI 2 M?? t??? *',10000,'%',100,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,31),(49,'quynd','quynd','2021-03-17','2021-03-17','KPI 3',' KPI 3 M?? t??? *',20,'PEOPLE',100,'MONTH',NULL,'ACTIVE','DOT_XUAT',NULL,31),(50,'quynd','quynd','2021-03-17','2021-03-17','Gi???m chi ph?? mua h??ng UPDATE',' KPI 2 M?? t??? *',10000,'YEAR',25,'MONTH',NULL,'ACTIVE','BO_PHAN',NULL,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_type_setting`
--

LOCK TABLES `tk_kpi_type_setting` WRITE;
/*!40000 ALTER TABLE `tk_kpi_type_setting` DISABLE KEYS */;
INSERT INTO `tk_kpi_type_setting` VALUES (21,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.001','KPI CHO NH??N VI??N L???P TR??NH',50,40,10,'ACTIVE','2',6),(22,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.002','KPI CHO NH??N VI??N KI???M TH???',60,30,10,'ACTIVE','2',6),(23,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.003','KPI CHO NH??N VI??N PH??N T??CH NGHI???P V???',60,30,10,'ACTIVE','2',6),(24,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.004','KPI CHO NH??N VI??N SALE',60,30,10,'ACTIVE','2',6),(25,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.005','KPI CHO NH??N VI??N PM',60,30,10,'ACTIVE','2',6),(26,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.006','KPI CHO NH??N VI??N T?? V???N',60,30,10,'ACTIVE','2',6),(27,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.007','K???T QU??? KPI KH??C',60,30,10,'DELETE','2',6),(29,'admin','admin','2020-07-11','2020-07-11','AdSys01.20200711143247','B??? KPI ??P D???NG CHO NH??N VI??N K??? THU???T H??? TH???NG',70,25,5,'ACTIVE','4',6),(30,'admin','admin','2020-07-11','2020-07-11','AdSys01.20200711143841','B??? KPI ??P D???NG CHO NH??N VI??N K??? THU???T H??? TH???NG 01',60,35,5,'ACTIVE','4',6),(31,'quynd','quynd','2021-03-17','2021-03-17','PrBNK01.20210317093543','KPI Test t???o',50,25,25,'DELETE','NV',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_rating_date_setup`
--

LOCK TABLES `tk_rating_date_setup` WRITE;
/*!40000 ALTER TABLE `tk_rating_date_setup` DISABLE KEYS */;
INSERT INTO `tk_rating_date_setup` VALUES (10,'sonnc','sonnc','2021-03-05','2021-03-05',4,10,'INACTIVE'),(11,'sonnc','sonnc','2021-03-11','2021-03-11',10,15,'INACTIVE'),(12,'sonnc','sonnc','2021-03-17','2021-03-17',15,20,'ACTIVE');
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
  `PACKAGE_SALARY` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_tk_user_tk_department1_idx` (`DEPARTMENT`),
  CONSTRAINT `fk_tk_user_tk_department1` FOREIGN KEY (`DEPARTMENT`) REFERENCES `tk_department` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_user`
--

LOCK TABLES `tk_user` WRITE;
/*!40000 ALTER TABLE `tk_user` DISABLE KEYS */;
INSERT INTO `tk_user` VALUES (2,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',19,'ACTIVE','sonnc','Nguy???n C??ng S??n','142000','123456789','sonnc3@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(3,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',19,'ACTIVE','quynd','Nh??m D????ng Qu??','142001','123456789','quynd@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(4,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','dungvt1','V?? Th??y Dung','142002','123456789','dungvt@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(5,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','tultc','L?? Th??? C???m T??','142003','123456789','tultc@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(6,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hoanglm','L?? M???nh Ho??ng','142004','123456789','hoanglm@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(7,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','anhht','Ho??ng Tu???n Anh','142005','123456789','anhht@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(8,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','nhanpth','Ph???m Th??? Thanh Nh??n','142006','123456789','nhanpth@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(9,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hungkieu','Nguy???n Ki???u H??ng','142007','123456789','hungnk@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(10,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','duypv','Ph???m V??n Duy','142008','123456789','duypv@fpt.com.vn','vi','Nh??n vi??n l???p tr??nh','0358346836','0358346836',NULL,NULL,6,1,20000000.00,290000000.00),(31,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',19,'ACTIVE','quynd10','Nh??m D????ng Qu??','142010','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(32,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','dungvt','V?? Th??y Dung','142011','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(33,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hoanglm21','L?? M???nh Ho??ng','142012','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(34,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','anhht52','Ho??ng Tu???n Anh','142013','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDVNh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(35,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','sonnc3','Nguy???n C??ng S??n','142014','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(36,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','longpp4','Ph???m Phi Long','142015','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(37,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','tupn6','Ph???m Ng???c T??','142016','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(38,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','tultc2','L?? Th??? C???m T??','142017','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(39,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','nhanptt4','Ph???m Th??? Thanh Nh??n','142018','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(40,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','huonglq','L?? Qu???nh H????ng','142019','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(41,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','nghiadp','?????ng Ph??c Ngh??a','142020','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(42,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hungnk','Nguy???n Ki???u H??ng','142021','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(43,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','anhnh','Nguy???n Ho??ng Anh','142022','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(44,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hailt21','L?? Th??? H???i','142023','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(45,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','phongdt31','D????ng Tu???n Phong','142024','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(46,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','hienlv','L?? V??n Hi??n','142025','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(47,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','dainv','Nguy???n Vi???t ?????i','142026','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(48,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','anhntv','Nguy???n Th??? V??n Anh','142027','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(49,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','chinhnt','Nguy???n Th??? Chinh','142028','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(50,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','quannv','Nguy???n V??n Qu??n','142029','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00),(51,0,'2021-02-20','2021-02-20','SYSTEM','SYSTEM',7,'ACTIVE','linhlt','L?? Th??? Linh','142030','123456789',NULL,'vi','Nh??n vi??n ph??ng ban PrBBNKBIDV',NULL,NULL,NULL,NULL,7,1,20000000.00,290000000.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Danh s??ch c??c d??? ??n trong ph??ng ban';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_workspace`
--

LOCK TABLES `tk_workspace` WRITE;
/*!40000 ALTER TABLE `tk_workspace` DISABLE KEYS */;
INSERT INTO `tk_workspace` VALUES (11,'2021-02-26','2021-02-26','sonnc','sonnc',NULL,NULL,'Vietcombank 1101','2',NULL,'csadcadsc','ACTIVE','2021-02-26','2021-02-26',6,NULL),(12,'2021-02-26','2021-02-26','sonnc','sonnc',NULL,NULL,'Vietcombank 1101','2',NULL,'vavdsav','ACTIVE','2021-02-26','2021-02-26',6,NULL),(13,'2021-03-12','2021-03-12','quynd10','quynd10',NULL,NULL,'D??? ??n BIDV CROMS','31',NULL,'D??? ??n tr???ng ??i???m cho ng??n h??ng ?????u t?? v?? ph??t tri???n Vi???t Nam,\r\nLi??n danh nh?? th???u: Integro.','ACTIVE','2020-01-12','2021-12-31',7,100000000),(14,'2021-03-12','2021-03-12','quynd','quynd',NULL,NULL,'test','3',NULL,'sfaf','ACTIVE','2021-03-18','2021-07-03',6,100000000),(15,'2021-03-12','2021-03-12','quynd','quynd',NULL,NULL,'D??? ??n BIDV CROMS','3',NULL,'dsvdsav','ACTIVE','2021-04-02','2021-07-03',6,100000000),(16,'2021-03-12','2021-03-12','quynd','quynd',NULL,NULL,'VDSDV','3',NULL,'VDSA','ACTIVE','2021-03-12','2021-04-01',6,100000000),(17,'2021-03-12','2021-03-12','quynd','quynd',NULL,NULL,'CSACSA','3',NULL,'CSACSA','ACTIVE','2021-04-08','2021-04-10',6,100000000),(18,'2021-03-12','2021-03-12','quynd','quynd',NULL,NULL,'aaaaaaaaaaaa','3',NULL,'vdsa','ACTIVE','2021-03-12','2021-04-10',6,100000000);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_attachments`
--

LOCK TABLES `tk_ws_attachments` WRITE;
/*!40000 ALTER TABLE `tk_ws_attachments` DISABLE KEYS */;
INSERT INTO `tk_ws_attachments` VALUES (8,'sonnc','sonnc','2021-03-08','2021-03-08','Dump20200926.sql','files/attachments/Dump20200926.sql','ACTIVE',4,NULL),(9,'sonnc','sonnc','2021-03-08','2021-03-08','LvThs_Dot2.docx','files/attachments/LvThs_Dot2.docx','ACTIVE',4,NULL),(10,'sonnc','sonnc','2021-03-08','2021-03-08','LvThs_Dot2.pdf','files/attachments/LvThs_Dot2.pdf','ACTIVE',4,NULL),(11,'sonnc','sonnc','2021-03-09','2021-03-09','LvThs_Dot2.docx','files/attachments/LvThs_Dot2.docx','ACTIVE',5,NULL),(12,'sonnc','sonnc','2021-03-09','2021-03-09','Capture.PNG','files/attachments/Capture.PNG','ACTIVE',6,NULL),(13,'sonnc','sonnc','2021-03-09','2021-03-09','ES05CR.sql','files/attachments/ES05CR.sql','INACTIVE',8,NULL),(14,'sonnc','sonnc','2021-03-12','2021-03-12','Dump20200926.sql','files/attachments/Dump20200926.sql','ACTIVE',8,NULL),(15,'sonnc','sonnc','2021-03-12','2021-03-12','sss.sql','files/attachments/sss.sql','ACTIVE',8,NULL),(16,'sonnc','sonnc','2021-03-12','2021-03-12','20210306_205101.jpg','files/attachments/20210306_205101.jpg','ACTIVE',8,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_comment`
--

LOCK TABLES `tk_ws_comment` WRITE;
/*!40000 ALTER TABLE `tk_ws_comment` DISABLE KEYS */;
INSERT INTO `tk_ws_comment` VALUES (1,'sonnc','sonnc','2021-03-08','2021-03-08','dababasdbdsbasbasdbdsbadb','ACTIVE','sonnc',4,NULL),(2,'sonnc','sonnc','2021-03-09','2021-03-09','bfdbfdbdfbdfbdfbdfb','ACTIVE','sonnc',5,NULL),(3,'sonnc','sonnc','2021-03-09','2021-03-09','Em ??i m???t r???i, c??n anh ??? l???i ...\n\nNg?????i gi??? c??n ????y kh??ng? Thuy???n n??y c??n li???u sang s??ng?\n\nBu???i chi???u d??i m??nh m??ng, l??ng ng?????i gi??? h??a hay ????ng\n\nH???ng m???t em c??? b???u tr???i ????? hoen\n\nTa nh?? ?????a tr??? ng??y th??, qu??n ??i th??ng ng??y ngu ng??\n\nNg?????i l?? ng??n m??y bay, m??nh l?? gi???t s???u chia tay\n\nNg?????i c???n b???u kh??ng say, c??n m??nh gi??i b??y trong ????y\n\nN??y gi?? ??i, ?????ng v???i v??ng, l???ng nghe ???????c kh??ng?','ACTIVE','sonnc',6,NULL),(4,'sonnc','sonnc','2021-03-09','2021-03-09','GFNFGDNFGDNFGDNFGDNFGDNFGDNDF','ACTIVE','sonnc',8,NULL),(5,'sonnc','sonnc','2021-03-10','2021-03-10','','ACTIVE','sonnc',9,NULL),(6,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE','sonnc',10,NULL),(7,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE','sonnc',11,NULL),(8,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE','sonnc',12,NULL),(9,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE','sonnc',13,NULL),(10,'sonnc','sonnc','2021-03-12','2021-03-12','cdscdsavasv','ACTIVE','sonnc',14,NULL),(11,'sonnc','sonnc','2021-03-12','2021-03-12','','ACTIVE','sonnc',15,NULL),(12,'sonnc','sonnc','2021-03-12','2021-03-12','','ACTIVE','sonnc',16,NULL);
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
  `milestones_close_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_folder`
--

LOCK TABLES `tk_ws_folder` WRITE;
/*!40000 ALTER TABLE `tk_ws_folder` DISABLE KEYS */;
INSERT INTO `tk_ws_folder` VALUES (4,'Giai ??o???n 1','ACTIVE','Giai ??o???n 1','Y',10000000.00,'2021-03-05','2021-06-18','2021-03-18','CLOSE'),(5,'Nh??m c??ng viec CLims','ACTIVE','Nh??m c??ng viec CLims',NULL,NULL,NULL,NULL,NULL,'ACTIVE'),(6,'9.Tri???n khai di???n r???ng & Nghi???m thu k???t th??c','ACTIVE','9.Tri???n khai di???n r???ng & Nghi???m thu k???t th??c','Y',30000000.00,'2020-12-01','2021-07-01',NULL,'ACTIVE'),(7,'10. B???o tr??, b???o h??nh h??? th???ng','ACTIVE','10. B???o tr??, b???o h??nh h??? th???ng','Y',50000000.00,'2021-08-01','2022-08-01',NULL,'ACTIVE'),(8,'????o t???o n???i b??? FIS','ACTIVE','????o t???o n???i b??? FIS',NULL,0.00,NULL,NULL,NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_people`
--

LOCK TABLES `tk_ws_people` WRITE;
/*!40000 ALTER TABLE `tk_ws_people` DISABLE KEYS */;
INSERT INTO `tk_ws_people` VALUES (1,11,'N/A','ACTIVE',2),(2,11,'N/A','ACTIVE',3),(3,12,'N/A','ACTIVE',2),(4,12,'N/A','ACTIVE',3),(5,13,'N/A','ACTIVE',31),(6,13,'N/A','ACTIVE',32),(7,13,'N/A','ACTIVE',33),(8,13,'N/A','ACTIVE',34),(9,13,'N/A','ACTIVE',35),(10,13,'N/A','ACTIVE',36),(11,13,'N/A','ACTIVE',37),(12,13,'N/A','ACTIVE',38),(13,13,'N/A','ACTIVE',39),(14,13,'N/A','ACTIVE',40),(15,13,'N/A','ACTIVE',41),(16,13,'N/A','ACTIVE',42),(17,13,'N/A','ACTIVE',43),(18,13,'N/A','ACTIVE',44),(19,13,'N/A','ACTIVE',45),(20,13,'N/A','ACTIVE',46),(21,13,'N/A','ACTIVE',47),(22,13,'N/A','ACTIVE',48),(23,13,'N/A','ACTIVE',49),(24,13,'N/A','ACTIVE',50),(25,13,'N/A','ACTIVE',51),(26,14,'N/A','ACTIVE',2),(27,14,'N/A','ACTIVE',3),(28,14,'N/A','ACTIVE',4),(29,14,'N/A','ACTIVE',5),(30,14,'N/A','ACTIVE',6),(31,14,'N/A','ACTIVE',7),(32,15,'N/A','ACTIVE',2),(33,15,'N/A','ACTIVE',3),(34,15,'N/A','ACTIVE',4),(35,15,'N/A','ACTIVE',5),(36,15,'N/A','ACTIVE',6),(37,15,'N/A','ACTIVE',7),(38,15,'N/A','ACTIVE',8),(39,15,'N/A','ACTIVE',9),(40,15,'N/A','ACTIVE',10),(41,16,'N/A','ACTIVE',2),(42,16,'N/A','ACTIVE',3),(43,16,'N/A','ACTIVE',4),(44,16,'N/A','ACTIVE',5),(45,16,'N/A','ACTIVE',6),(46,16,'N/A','ACTIVE',7),(47,16,'N/A','ACTIVE',8),(48,16,'N/A','ACTIVE',9),(49,16,'N/A','ACTIVE',10),(50,17,'N/A','ACTIVE',2),(51,17,'N/A','ACTIVE',3),(52,17,'N/A','ACTIVE',4),(53,17,'N/A','ACTIVE',5),(54,17,'N/A','ACTIVE',6),(55,17,'N/A','ACTIVE',7),(56,17,'N/A','ACTIVE',8),(57,17,'N/A','ACTIVE',9),(58,17,'N/A','ACTIVE',10),(59,18,'N/A','ACTIVE',2),(60,18,'N/A','ACTIVE',3),(61,18,'N/A','ACTIVE',4),(62,18,'N/A','ACTIVE',5),(63,18,'N/A','ACTIVE',6),(64,18,'N/A','ACTIVE',7),(65,18,'N/A','ACTIVE',8),(66,18,'N/A','ACTIVE',9),(67,18,'N/A','ACTIVE',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_people_teams`
--

LOCK TABLES `tk_ws_people_teams` WRITE;
/*!40000 ALTER TABLE `tk_ws_people_teams` DISABLE KEYS */;
INSERT INTO `tk_ws_people_teams` VALUES (5,3,3),(6,4,3),(7,3,4),(8,4,4),(9,2,6),(10,3,6),(11,4,6),(12,5,6),(13,6,6),(14,7,6),(15,2,7),(16,3,7),(17,4,7),(18,5,7),(19,6,7),(20,7,7),(21,2,8),(22,3,8),(23,4,8),(24,5,8),(25,6,8),(26,7,8),(27,8,8),(28,9,8),(29,10,8),(30,2,9),(31,3,9),(32,4,9),(33,5,9),(34,6,9),(35,7,9),(36,8,9),(37,9,9),(38,10,9),(39,2,10),(40,3,10),(41,4,10),(42,5,10),(43,6,10),(44,7,10),(45,8,10),(46,9,10),(47,10,10),(48,2,11),(49,3,11),(50,4,11),(51,5,11),(52,6,11),(53,7,11),(54,8,11),(55,9,11),(56,10,11),(57,2,12),(58,3,12),(59,4,12),(60,5,12),(61,6,12),(62,7,12),(63,8,12),(64,9,12),(65,10,12),(66,2,13),(67,3,13),(68,4,13),(69,5,13),(70,6,13),(71,7,13),(72,8,13),(73,9,13),(74,10,13),(75,2,14),(76,3,14),(77,4,14),(78,5,14),(79,6,14),(80,7,14),(81,8,14),(82,9,14),(83,10,14),(84,2,15),(85,3,15),(86,4,15),(87,5,15),(88,6,15),(89,7,15),(90,8,15),(91,9,15),(92,10,15),(93,2,16),(94,3,16),(95,4,16),(96,5,16),(97,6,16),(98,7,16),(99,8,16),(100,9,16),(101,10,16),(102,31,17),(103,32,17),(104,33,17),(105,34,17),(106,35,17),(107,36,17),(108,37,17),(109,38,17),(110,39,17),(111,40,17),(112,41,17),(113,42,17),(114,43,17),(115,44,17),(116,45,17),(117,46,17),(118,47,17),(119,48,17),(120,49,17),(121,50,17),(122,51,17),(123,31,18),(124,32,18),(125,33,18),(126,34,18),(127,35,18),(128,36,18),(129,37,18),(130,38,18),(131,39,18),(132,40,18),(133,41,18),(134,42,18),(135,43,18),(136,44,18),(137,45,18),(138,46,18),(139,47,18),(140,48,18),(141,49,18),(142,50,18),(143,51,18),(144,31,19),(145,32,19),(146,33,19),(147,34,19),(148,35,19),(149,36,19),(150,37,19),(151,38,19),(152,39,19),(153,40,19),(154,41,19),(155,42,19),(156,43,19),(157,44,19),(158,45,19),(159,46,19),(160,47,19),(161,48,19),(162,49,19),(163,50,19),(164,51,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task`
--

LOCK TABLES `tk_ws_task` WRITE;
/*!40000 ALTER TABLE `tk_ws_task` DISABLE KEYS */;
INSERT INTO `tk_ws_task` VALUES (4,'sonnc','sonnc','2021-03-08','2021-03-08','C??ng vi???c s??? 1','dsavdsavdsa',2,'N',NULL,2,'2021-03-08','2021-03-22','2021-05-08',1,'CLOSE',1,NULL,200000,NULL,NULL,NULL,3),(5,'sonnc','sonnc','2021-03-09','2021-03-09','C??ng vi???c trong task list 4','bfdbfnn',4,'N',NULL,2,'2021-03-09','2021-03-22','2021-04-10',1,'CLOSE',1,NULL,0,NULL,NULL,NULL,3),(6,'sonnc','sonnc','2021-03-09','2021-03-11','Th???c h???n nghi???m thu c??ng vi???c','Nh???p thong tin m?? t???',1,'N',NULL,3,'2021-03-11','2021-03-24','2021-04-17',2,'CLOSE',2,NULL,100000,NULL,NULL,NULL,3),(8,'sonnc','sonnc','2021-03-09','2021-03-09','C??ng vi???c s??? 1','NGFNFGDN',1,'N',NULL,3,'2021-03-09','2021-03-24','2021-04-02',1,'CLOSE',1,NULL,0,NULL,NULL,NULL,3),(9,'sonnc','sonnc','2021-03-10','2021-03-10','T???o d??? li???u cho bi???u ?????','nfdnfdnfdsnsfdn',3,'N',NULL,2,'2021-03-10','2021-03-12','2021-04-02',2,'INPROCESS',1,NULL,0,NULL,NULL,NULL,2),(10,'sonnc','sonnc','2021-03-11','2021-03-11','subtassk','dsavasdvdsavdsav',1,'N',NULL,3,'2021-03-11',NULL,'2021-04-03',3,'DELETE',1,NULL,8,NULL,NULL,NULL,3),(11,'sonnc','sonnc','2021-03-11','2021-03-12','sub-task ssssvewd','cdasvdasvdasvdasvvdsvsd',1,'Y',6,3,'2021-03-11','2021-03-24','2021-04-01',3,'CLOSE',1,NULL,20000,NULL,NULL,NULL,3),(12,'sonnc','sonnc','2021-03-11','2021-03-11','subtassk','cdsvdsavasv',1,'Y',6,3,'2021-03-18',NULL,'2021-04-09',3,'DELETE',1,NULL,0,NULL,NULL,NULL,2),(13,'sonnc','sonnc','2021-03-11','2021-03-11','subtassk 2','csacasdvdasv',1,'Y',6,3,'2021-03-11',NULL,'2021-04-09',2,'DELETE',1,NULL,200000,NULL,NULL,NULL,3),(14,'sonnc','sonnc','2021-03-12','2021-03-12','C??ng vi???c s??? 1 subtassk','csdvdasvdsav',1,'Y',8,3,'2021-03-12','2021-03-24','2021-04-10',3,'CLOSE',1,NULL,20000,NULL,NULL,NULL,3),(15,'sonnc','sonnc','2021-03-12','2021-03-12','Th???c hi???n c??ng vi???c xxxxxxx1`12345678','??i???p kh??c:\r\n\r\nGi?? ??i xin ?????ng l???y em ??i\r\n\r\nH??y mang em v??? ch???n xu??n th??\r\n\r\nNg??y n??o c??n b???i h???i t??c xanh\r\n\r\nNg??y n??o c??n tr?? chuy???n v???i anh\r\n\r\nEm n??i em th????ng anh m??\r\n\r\nN??i em y??u anh m??\r\n\r\nC??? sao ta l???i h??a chia xa\r\n\r\n????a phong lan l???ng l??? m?? m??ng\r\n\r\nN??ng d???u d??ng t???a ????n ph??? Vinh\r\n\r\n?????p r???ng ng???i ch???ng c???n c??? Xinh\r\n\r\nH???t ng???c r??i r???t tr??n m??i nh??, sau lu???ng c??, nh?? th??? l?? ...',1,'Y',6,3,'2021-03-26',NULL,'2021-04-09',1,'OPEN',1,NULL,10000,NULL,NULL,NULL,3),(16,'sonnc','sonnc','2021-03-12','2021-03-12','Th???c hi???n c??ng vi???c bfdsbfdb','bfbfdb',3,'N',NULL,2,'2021-03-12','2021-03-22','2021-03-26',2,'OPEN',1,NULL,0,NULL,NULL,NULL,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task_checklist`
--

LOCK TABLES `tk_ws_task_checklist` WRITE;
/*!40000 ALTER TABLE `tk_ws_task_checklist` DISABLE KEYS */;
INSERT INTO `tk_ws_task_checklist` VALUES (7,'sonnc','sonnc','2021-03-08','2021-03-08',4,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(8,'sonnc','sonnc','2021-03-08','2021-03-08',4,'B??? ki???m tra s??? 2',NULL,'ACTIVE'),(9,'sonnc','sonnc','2021-03-09','2021-03-09',5,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(10,'sonnc','sonnc','2021-03-09','2021-03-09',6,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(11,'sonnc','sonnc','2021-03-09','2021-03-09',8,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(12,'sonnc','sonnc','2021-03-10','2021-03-10',9,'',NULL,'ACTIVE'),(13,'sonnc','sonnc','2021-03-11','2021-03-11',10,'',NULL,'ACTIVE'),(14,'sonnc','sonnc','2021-03-11','2021-03-11',11,'',NULL,'ACTIVE'),(15,'sonnc','sonnc','2021-03-11','2021-03-11',12,'',NULL,'ACTIVE'),(16,'sonnc','sonnc','2021-03-11','2021-03-11',13,'',NULL,'ACTIVE'),(17,'sonnc','sonnc','2021-03-12','2021-03-12',14,'B??? ki???m tra s??? 1',NULL,'ACTIVE'),(18,'sonnc','sonnc','2021-03-12','2021-03-12',8,'B??? ki???m tra s??? 2',NULL,'ACTIVE'),(19,'sonnc','sonnc','2021-03-12','2021-03-12',8,'B??? ki???m tra s??? 1',NULL,'INACTIVE'),(20,'sonnc','sonnc','2021-03-12','2021-03-12',15,'',NULL,'ACTIVE'),(21,'sonnc','sonnc','2021-03-12','2021-03-12',16,'',NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task_checklist_item`
--

LOCK TABLES `tk_ws_task_checklist_item` WRITE;
/*!40000 ALTER TABLE `tk_ws_task_checklist_item` DISABLE KEYS */;
INSERT INTO `tk_ws_task_checklist_item` VALUES (13,7,'sonnc','sonnc','2021-03-08','2021-03-08','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(14,7,'sonnc','sonnc','2021-03-08','2021-03-08','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(15,8,'sonnc','sonnc','2021-03-08','2021-03-08','Ki???m tra d??? li???u 1','ACTIVE',NULL),(16,8,'sonnc','sonnc','2021-03-08','2021-03-08','Ki???m tra s??? 2 2','ACTIVE',NULL),(17,9,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(18,9,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(19,10,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(20,10,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(21,11,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(22,11,'sonnc','sonnc','2021-03-09','2021-03-09','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(23,12,'sonnc','sonnc','2021-03-10','2021-03-10','','ACTIVE',NULL),(24,12,'sonnc','sonnc','2021-03-10','2021-03-10','','ACTIVE',NULL),(25,13,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE',NULL),(26,13,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE',NULL),(27,14,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE',NULL),(28,14,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE',NULL),(29,15,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE',NULL),(30,15,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE',NULL),(31,16,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE',NULL),(32,16,'sonnc','sonnc','2021-03-11','2021-03-11','','ACTIVE',NULL),(33,17,'sonnc','sonnc','2021-03-12','2021-03-12','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(34,17,'sonnc','sonnc','2021-03-12','2021-03-12','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(35,18,'sonnc','sonnc','2021-03-12','2021-03-12','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(36,18,'sonnc','sonnc','2021-03-12','2021-03-12','Ki???m tra th???i h???n h??n th??nh 23','ACTIVE',NULL),(37,19,'sonnc','sonnc','2021-03-12','2021-03-12','Ki???m tra th???i h???n h??n th??nh','ACTIVE',NULL),(38,19,'sonnc','sonnc','2021-03-12','2021-03-12','Ki???m tra th???i h???n h??n th??nh 2','ACTIVE',NULL),(39,20,'sonnc','sonnc','2021-03-12','2021-03-12','','ACTIVE',NULL),(40,20,'sonnc','sonnc','2021-03-12','2021-03-12','','ACTIVE',NULL),(41,21,'sonnc','sonnc','2021-03-12','2021-03-12','','ACTIVE',NULL),(42,21,'sonnc','sonnc','2021-03-12','2021-03-12','','ACTIVE',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_task_raci`
--

LOCK TABLES `tk_ws_task_raci` WRITE;
/*!40000 ALTER TABLE `tk_ws_task_raci` DISABLE KEYS */;
INSERT INTO `tk_ws_task_raci` VALUES (1,3,2,'Y',NULL,NULL,NULL,'ACTIVE'),(2,3,3,NULL,'Y',NULL,NULL,'ACTIVE'),(3,3,2,'Y',NULL,NULL,NULL,'ACTIVE'),(4,3,3,'Y','Y','Y',NULL,'ACTIVE'),(5,4,2,'Y','Y',NULL,NULL,'ACTIVE'),(6,4,3,NULL,NULL,'Y','Y','ACTIVE'),(7,1,2,NULL,'Y','Y',NULL,'ACTIVE'),(8,1,3,'Y',NULL,NULL,NULL,'ACTIVE'),(9,12,2,'Y',NULL,'Y',NULL,'ACTIVE'),(10,12,3,NULL,'Y',NULL,NULL,'ACTIVE'),(11,2,2,'Y',NULL,NULL,NULL,'ACTIVE'),(12,2,3,NULL,'Y',NULL,NULL,'ACTIVE'),(13,16,32,NULL,NULL,'Y','Y','ACTIVE'),(14,16,33,'Y',NULL,NULL,NULL,'ACTIVE'),(15,16,34,'Y',NULL,NULL,NULL,'ACTIVE'),(16,16,35,'Y',NULL,NULL,NULL,'ACTIVE'),(17,16,38,'Y',NULL,NULL,NULL,'ACTIVE'),(18,16,39,'Y',NULL,NULL,NULL,'ACTIVE'),(19,16,41,NULL,'Y',NULL,NULL,'ACTIVE'),(20,16,31,'Y',NULL,NULL,NULL,'ACTIVE'),(21,13,32,'Y',NULL,'Y','Y','ACTIVE'),(22,13,33,'Y',NULL,NULL,NULL,'ACTIVE'),(23,13,34,'Y',NULL,NULL,NULL,'ACTIVE'),(24,13,35,'Y',NULL,NULL,NULL,'ACTIVE'),(25,13,36,'Y',NULL,NULL,NULL,'ACTIVE'),(26,13,37,'Y',NULL,NULL,NULL,'ACTIVE'),(27,13,38,'Y',NULL,NULL,NULL,'ACTIVE'),(28,13,39,NULL,NULL,'Y',NULL,'ACTIVE'),(29,13,41,'Y',NULL,NULL,NULL,'ACTIVE'),(30,13,42,'Y',NULL,NULL,NULL,'ACTIVE'),(31,13,43,'Y',NULL,NULL,NULL,'ACTIVE'),(32,13,45,'Y',NULL,NULL,NULL,'ACTIVE'),(33,13,31,'Y','Y',NULL,NULL,'ACTIVE'),(34,14,32,NULL,NULL,'Y','Y','ACTIVE'),(35,14,34,'Y',NULL,NULL,NULL,'ACTIVE'),(36,14,35,'Y',NULL,NULL,NULL,'ACTIVE'),(37,14,36,'Y',NULL,NULL,NULL,'ACTIVE'),(38,14,37,'Y',NULL,NULL,NULL,'ACTIVE'),(39,14,38,'Y',NULL,NULL,NULL,'ACTIVE'),(40,14,39,'Y',NULL,NULL,NULL,'ACTIVE'),(41,14,40,'Y',NULL,NULL,NULL,'ACTIVE'),(42,14,41,'Y',NULL,NULL,NULL,'ACTIVE'),(43,14,42,'Y','Y',NULL,NULL,'ACTIVE'),(44,14,43,'Y',NULL,NULL,NULL,'ACTIVE'),(45,14,45,'Y',NULL,NULL,NULL,'ACTIVE'),(46,14,46,'Y',NULL,NULL,NULL,'ACTIVE'),(47,14,51,'Y',NULL,NULL,NULL,'ACTIVE'),(48,15,32,NULL,'Y',NULL,NULL,'ACTIVE'),(49,15,49,'Y',NULL,NULL,NULL,'ACTIVE'),(50,15,35,'Y',NULL,NULL,NULL,'ACTIVE'),(51,15,38,'Y',NULL,NULL,NULL,'ACTIVE'),(52,15,39,'Y',NULL,NULL,NULL,'ACTIVE'),(53,15,43,'Y',NULL,NULL,NULL,'ACTIVE'),(54,15,44,'Y',NULL,'Y','Y','ACTIVE'),(55,17,32,NULL,'Y',NULL,'Y','ACTIVE'),(56,17,49,'Y',NULL,NULL,NULL,'ACTIVE'),(57,17,51,'Y',NULL,NULL,NULL,'ACTIVE'),(58,17,38,'Y',NULL,NULL,NULL,'ACTIVE'),(59,17,39,'Y',NULL,'Y',NULL,'ACTIVE'),(60,17,43,'Y',NULL,NULL,NULL,'ACTIVE'),(61,17,44,'Y',NULL,NULL,NULL,'ACTIVE'),(62,17,45,'Y',NULL,NULL,NULL,'ACTIVE'),(63,17,31,'Y',NULL,NULL,NULL,'ACTIVE'),(64,18,32,NULL,NULL,NULL,'Y','ACTIVE'),(65,18,33,'Y',NULL,NULL,NULL,'ACTIVE'),(66,18,34,'Y',NULL,NULL,NULL,'ACTIVE'),(67,18,50,'Y',NULL,NULL,NULL,'ACTIVE'),(68,18,35,'Y',NULL,NULL,NULL,'ACTIVE'),(69,18,41,'Y',NULL,NULL,NULL,'ACTIVE'),(70,18,42,'Y',NULL,NULL,NULL,'ACTIVE'),(71,18,45,'Y',NULL,NULL,NULL,'ACTIVE'),(72,18,31,'Y','Y','Y',NULL,'ACTIVE'),(73,18,47,'Y',NULL,NULL,NULL,'ACTIVE'),(74,19,32,NULL,'Y',NULL,NULL,'ACTIVE'),(75,19,33,'Y',NULL,NULL,NULL,'ACTIVE'),(76,19,34,'Y',NULL,NULL,NULL,'ACTIVE'),(77,19,51,'Y',NULL,NULL,NULL,'ACTIVE'),(78,19,37,'Y',NULL,NULL,NULL,'ACTIVE'),(79,19,41,'Y',NULL,NULL,NULL,'ACTIVE'),(80,19,31,NULL,NULL,'Y','Y','ACTIVE'),(81,20,33,'Y',NULL,NULL,NULL,'ACTIVE'),(82,20,34,'Y',NULL,NULL,NULL,'ACTIVE'),(83,20,35,'Y',NULL,NULL,NULL,'ACTIVE'),(84,20,42,'Y',NULL,NULL,NULL,'ACTIVE'),(85,20,31,NULL,'Y','Y','Y','ACTIVE'),(86,21,32,'Y',NULL,'Y','Y','ACTIVE'),(87,21,33,'Y',NULL,NULL,NULL,'ACTIVE'),(88,21,34,'Y',NULL,NULL,NULL,'ACTIVE'),(89,21,35,'Y',NULL,NULL,NULL,'ACTIVE'),(90,21,36,'Y',NULL,NULL,NULL,'ACTIVE'),(91,21,37,'Y',NULL,NULL,NULL,'ACTIVE'),(92,21,38,'Y',NULL,NULL,NULL,'ACTIVE'),(93,21,39,'Y',NULL,NULL,NULL,'ACTIVE'),(94,21,40,'Y',NULL,NULL,NULL,'ACTIVE'),(95,21,41,'Y',NULL,NULL,NULL,'ACTIVE'),(96,21,42,'Y',NULL,NULL,NULL,'ACTIVE'),(97,21,43,'Y',NULL,NULL,NULL,'ACTIVE'),(98,21,44,'Y',NULL,NULL,NULL,'ACTIVE'),(99,21,45,'Y',NULL,NULL,NULL,'ACTIVE'),(100,21,46,'Y',NULL,NULL,NULL,'ACTIVE'),(101,21,47,'Y',NULL,NULL,NULL,'ACTIVE'),(102,21,48,'Y',NULL,NULL,NULL,'ACTIVE'),(103,21,49,'Y',NULL,NULL,NULL,'ACTIVE'),(104,21,50,'Y',NULL,NULL,NULL,'ACTIVE'),(105,21,51,'Y',NULL,NULL,NULL,'ACTIVE'),(106,21,31,'Y','Y',NULL,NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_tasklist`
--

LOCK TABLES `tk_ws_tasklist` WRITE;
/*!40000 ALTER TABLE `tk_ws_tasklist` DISABLE KEYS */;
INSERT INTO `tk_ws_tasklist` VALUES (1,4,11,'Danh s??ch c??ng vi???c 1','cadvadsv',1,NULL,'2021-04-10','H','ACTIVE','sonnc','sonnc','2021-03-05','2021-03-05'),(2,4,11,'Danh s??ch c??ng vi???c 2','vdsavdsav',3,NULL,'2021-06-11','H','ACTIVE','sonnc','sonnc','2021-03-05','2021-03-05'),(3,5,11,'Danh s??ch c??ng vi???c 31','vdsavdsav',10,NULL,'2021-06-11','H','ACTIVE','sonnc','sonnc','2021-03-05','2021-03-05'),(4,NULL,11,'Danh s??ch c??ng vi???c 4','cccc',1,NULL,'2021-04-09','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(5,NULL,11,'Danh s??ch c??ng vi???c 5','sdacds',1,NULL,'2021-04-02','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(6,NULL,11,'Danh s??ch c??ng vi???c 6','jhvg',1,NULL,'2021-04-10','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(7,NULL,11,'Danh s??ch c??ng vi???c 7','css',1,NULL,'2021-04-02','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(8,NULL,11,'Danh s??ch c??ng vi???c 7','cdcd',1,NULL,'2021-04-02','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(9,NULL,11,'Danh s??ch c??ng vi???c 7','cdcd',1,NULL,'2021-04-02','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(10,NULL,11,'Danh s??ch c??ng vi???c 112','csc',1,NULL,'2021-03-08','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(11,NULL,11,'Danh s??ch c??ng vi???c 110','bkj b',1,NULL,'2021-04-07','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(12,NULL,11,'Danh s??ch c??ng vi???c 1','kmtym',1,NULL,'2021-03-31','H','ACTIVE','sonnc','sonnc','2021-03-07','2021-03-07'),(13,6,13,'Nh??m c??ng vi???c team CLOS','Nh??m c??ng vi???c team CLOS',100,NULL,'2021-07-01','H','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(14,6,13,'Nh??m c??ng vi???c team CLIMS','Nh??m c??ng vi???c team CLOS',100,NULL,'2021-07-01','H','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(15,6,13,'Nh??m c??ng vi???c team Report','Nh??m c??ng vi???c team CLOS',100,NULL,'2021-07-01','H','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(16,6,13,'Nh??m c??ng vi???c team Optimits','Nh??m c??ng vi???c team CLOS',100,NULL,'2021-07-01','H','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(17,7,13,'C??ng vi???c nh??m BA-Test','C??ng vi???c nh??m BA-Test',365,NULL,'2022-08-01','M','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(18,7,13,'Nh??m c??ng vi???c DEV-K??? thu???t','Nh??m c??ng vi???c DEV-K??? thu???t',365,NULL,'2022-08-01','M','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(19,NULL,13,'Nh??m c??ng vi???c ??o??n th??? PrBNKBIDV','C??c c??ng vi???c ??o??n th???',365,NULL,'2022-08-01','L','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(20,NULL,13,'Nh??m h???c t???p n??ng ch???ng ch???','Nh??m h???c t???p n??ng ch???ng ch???',365,NULL,'2022-06-12','L','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(21,8,13,'????o t???o n???i b??? FIS','????o t???o n???i b??? FIS',365,NULL,'2022-06-01','L','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ws_teams`
--

LOCK TABLES `tk_ws_teams` WRITE;
/*!40000 ALTER TABLE `tk_ws_teams` DISABLE KEYS */;
INSERT INTO `tk_ws_teams` VALUES (3,12,'[CLOS]','[vdsvdsvsa]','ACTIVE','sonnc','sonnc','2021-02-27','2021-02-27'),(4,12,'[CLIMS]','[dvsavasv]','ACTIVE','sonnc','sonnc','2021-02-27','2021-02-27'),(6,14,'[CLOS TEAMS]','[cscsdva]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(7,14,'[CLIMS TEAMS]','[vdsavdsavsa]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(8,15,'[CLOS TEAMS]','[vdsvsv]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(9,15,'[CLIMS TEAMS]','[cdsvasdvdsavdsv]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(10,15,'[REPORT TEAMS]','[vdsva]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(11,15,'[OPTIMITS TEAMS]','[NFNG]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(12,16,'[CLOS TEAMS]','[DSVDSAVD]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(13,16,'[CLIMS TEAMS]','[CDSCDSAV]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(14,18,'[CLOS TEAMS]','[sdvdsav]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(15,18,'[CLIMS TEAMS]','[http://localhost:8084/QLCV/workspaceAction?event=prepareCreateTeamWorkspace&&id=18]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(16,18,'[REPORT TEAMS]','[http://localhost:8084/QLCV/workspaceAction?event=prepareCreateTeamWorkspace&&id=18]','ACTIVE','quynd','quynd','2021-03-12','2021-03-12'),(17,13,'[CLOS TEAMS]','[Ph??t tri???n h??? th???ng kh???i t???o v?? qu???n l?? kho???n vay SMLC]','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(18,13,'[CLIMS TEAMS]','[Ph??t tri???n h??? th???ng kh???i t???o v?? qu???n l?? t??i s???n ?????m b???o]','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12'),(19,13,'[REPORT TEAMS]','[Ph??t tri???n b??o c??o]','ACTIVE','quynd10','quynd10','2021-03-12','2021-03-12');
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

-- Dump completed on 2021-03-24 21:09:04
