-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: task_kpi
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `tk_ba_flow_seting`
--

DROP TABLE IF EXISTS `tk_ba_flow_seting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ba_flow_seting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_by` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_update_by` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `USER_ID` int DEFAULT NULL,
  `DISPLAY_ORDER` int DEFAULT NULL,
  `COMMENT` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TK_BA_TYPE_SETTING_ID` int NOT NULL,
  `TIME_PROCESS` int DEFAULT NULL,
  `TIME_PROCESS_COMMON` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BA_ITEM_ID_idx` (`TK_BA_TYPE_SETTING_ID`),
  CONSTRAINT `BA_ITEM_ID` FOREIGN KEY (`TK_BA_TYPE_SETTING_ID`) REFERENCES `tk_ba_type_seting` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ba_flow_seting`
--

LOCK TABLES `tk_ba_flow_seting` WRITE;
/*!40000 ALTER TABLE `tk_ba_flow_seting` DISABLE KEYS */;
INSERT INTO `tk_ba_flow_seting` VALUES (2,'ADMIN','ADMIN','2020-07-11','2020-07-11',3,1,'TEAM LEAD','ACTIVE',1,1,'DAY'),(3,'ADMIN','ADMIN','2020-07-11','2020-07-11',3,2,'SUBPM','ACTIVE',1,1,'DAY'),(4,'ADMIN','ADMIN','2020-07-11','2020-07-11',3,3,'SUBPM','ACTIVE',1,2,'HOUR'),(5,'ADMIN','ADMIN','2020-07-11','2020-07-11',3,4,'PM','ACTIVE',1,2,'HOUR'),(6,'ADMIN','ADMIN','2020-07-11','2020-07-11',3,5,'GD','ACTIVE',1,1,'DAY'),(7,'admin','admin','2020-07-12','2020-07-12',4,0,'Tiếp nhận thông tin khai báo','ACTIVE',8,1,'HOUR'),(8,'admin','admin','2020-07-12','2020-07-12',5,1,'Nhập thông tin khai báo','ACTIVE',8,2,'HOUR'),(9,'admin','admin','2020-07-12','2020-07-12',3,2,'Phê duyệt và trả về kết quả','ACTIVE',8,3,'HOUR'),(10,'admin','admin','2020-07-12','2020-07-12',720,1,'Xu ly ticket','ACTIVE',9,1,'DAY'),(11,'admin','admin','2020-07-12','2020-07-12',736,2,'Xu ly ticket','ACTIVE',9,1,'DAY'),(12,'admin','admin','2020-07-12','2020-07-12',720,3,'Tra ve ket Qua','ACTIVE',9,1,'DAY'),(13,'admin','admin','2020-07-12','2020-07-12',711,4,'Tiep nhan ticket','ACTIVE',10,1,'DAY'),(14,'admin','admin','2020-07-12','2020-07-12',720,5,'Xu ly ticket','ACTIVE',10,1,'DAY'),(15,'admin','admin','2020-07-12','2020-07-12',736,6,'Xu ly ticket','ACTIVE',10,1,'DAY'),(16,'admin','admin','2020-07-12','2020-07-12',720,7,'Tra ve ket Qua','ACTIVE',10,1,'DAY'),(17,'admin','admin','2020-07-12','2020-07-12',711,8,'Tiep nhan ticket','ACTIVE',11,1,'DAY'),(18,'admin','admin','2020-07-12','2020-07-12',720,9,'Xu ly ticket','ACTIVE',11,1,'DAY'),(19,'admin','admin','2020-07-12','2020-07-12',736,10,'Xu ly ticket','ACTIVE',11,1,'DAY'),(20,'admin','admin','2020-07-12','2020-07-12',720,11,'Tra ve ket Qua','ACTIVE',11,1,'DAY'),(21,'admin','admin','2020-07-12','2020-07-12',711,12,'Tiep nhan ticket','ACTIVE',12,1,'DAY'),(22,'admin','admin','2020-07-12','2020-07-12',720,13,'Xu ly ticket','ACTIVE',12,1,'DAY'),(23,'admin','admin','2020-07-12','2020-07-12',736,14,'Xu ly ticket','ACTIVE',12,1,'DAY'),(24,'admin','admin','2020-07-12','2020-07-12',720,15,'Tra ve ket Qua','ACTIVE',12,1,'DAY'),(25,'admin','admin','2020-07-12','2020-07-12',711,16,'Tiep nhan ticket','ACTIVE',13,1,'DAY'),(26,'admin','admin','2020-07-12','2020-07-12',720,17,'Xu ly ticket','ACTIVE',13,1,'DAY'),(27,'admin','admin','2020-07-12','2020-07-12',736,18,'Xu ly ticket','ACTIVE',13,1,'DAY'),(28,'admin','admin','2020-07-12','2020-07-12',720,19,'Tra ve ket Qua','ACTIVE',13,1,'DAY'),(29,'admin','admin','2020-07-12','2020-07-12',711,20,'Tiep nhan ticket','ACTIVE',14,1,'DAY'),(30,'admin','admin','2020-07-12','2020-07-12',720,21,'Xu ly ticket','ACTIVE',14,1,'DAY'),(31,'admin','admin','2020-07-12','2020-07-12',736,22,'Xu ly ticket','ACTIVE',14,1,'DAY'),(32,'admin','admin','2020-07-12','2020-07-12',720,23,'Tra ve ket Qua','ACTIVE',14,1,'DAY'),(33,'admin','admin','2020-07-12','2020-07-12',711,24,'Tiep nhan ticket','ACTIVE',15,1,'DAY'),(34,'admin','admin','2020-07-12','2020-07-12',720,25,'Xu ly ticket','ACTIVE',15,1,'DAY'),(35,'admin','admin','2020-07-12','2020-07-12',736,26,'Xu ly ticket','ACTIVE',15,1,'DAY'),(36,'admin','admin','2020-07-12','2020-07-12',720,27,'Tra ve ket Qua','ACTIVE',15,1,'DAY'),(37,'admin','admin','2020-07-12','2020-07-12',711,28,'Tiep nhan ticket','ACTIVE',16,1,'DAY'),(38,'admin','admin','2020-07-12','2020-07-12',720,29,'Xu ly ticket','ACTIVE',16,1,'DAY'),(39,'admin','admin','2020-07-12','2020-07-12',736,30,'Xu ly ticket','ACTIVE',16,1,'DAY'),(40,'admin','admin','2020-07-12','2020-07-12',720,31,'Tra ve ket Qua','ACTIVE',16,1,'DAY'),(41,'admin','admin','2020-07-12','2020-07-12',711,32,'Tiep nhan ticket','ACTIVE',17,1,'DAY'),(42,'admin','admin','2020-07-12','2020-07-12',720,33,'Xu ly ticket','ACTIVE',17,1,'DAY'),(43,'admin','admin','2020-07-12','2020-07-12',736,34,'Xu ly ticket','ACTIVE',17,1,'DAY'),(44,'admin','admin','2020-07-12','2020-07-12',720,35,'Tra ve ket Qua','ACTIVE',17,1,'DAY'),(45,'admin','admin','2020-07-12','2020-07-12',711,36,'Tiep nhan ticket','ACTIVE',18,1,'DAY'),(46,'admin','admin','2020-07-12','2020-07-12',720,37,'Xu ly ticket','ACTIVE',18,1,'DAY'),(47,'admin','admin','2020-07-12','2020-07-12',736,38,'Xu ly ticket','ACTIVE',18,1,'DAY'),(48,'admin','admin','2020-07-12','2020-07-12',720,39,'Tra ve ket Qua','ACTIVE',18,1,'DAY'),(49,'admin','admin','2020-07-12','2020-07-12',711,40,'Tiep nhan ticket','ACTIVE',19,1,'DAY'),(50,'admin','admin','2020-07-12','2020-07-12',720,41,'Xu ly ticket','ACTIVE',19,1,'DAY'),(51,'admin','admin','2020-07-12','2020-07-12',736,42,'Xu ly ticket','ACTIVE',19,1,'DAY'),(52,'admin','admin','2020-07-12','2020-07-12',720,43,'Tra ve ket Qua','ACTIVE',19,1,'DAY'),(53,'admin','admin','2020-07-12','2020-07-12',711,44,'Tiep nhan ticket','ACTIVE',20,1,'DAY'),(54,'admin','admin','2020-07-12','2020-07-12',720,45,'Xu ly ticket','ACTIVE',20,1,'DAY'),(55,'admin','admin','2020-07-12','2020-07-12',736,46,'Xu ly ticket','ACTIVE',20,1,'DAY'),(56,'admin','admin','2020-07-12','2020-07-12',720,47,'Tra ve ket Qua','ACTIVE',20,1,'DAY'),(57,'admin','admin','2020-07-12','2020-07-12',711,48,'Tiep nhan ticket','ACTIVE',21,1,'DAY'),(58,'admin','admin','2020-07-12','2020-07-12',720,49,'Xu ly ticket','ACTIVE',21,1,'DAY'),(59,'admin','admin','2020-07-12','2020-07-12',736,50,'Xu ly ticket','ACTIVE',21,1,'DAY'),(60,'admin','admin','2020-07-12','2020-07-12',720,51,'Tra ve ket Qua','ACTIVE',21,1,'DAY'),(61,'admin','admin','2020-07-12','2020-07-12',711,52,'Tiep nhan ticket','ACTIVE',22,1,'DAY'),(62,'admin','admin','2020-07-12','2020-07-12',720,53,'Xu ly ticket','ACTIVE',22,1,'DAY'),(63,'admin','admin','2020-07-12','2020-07-12',736,54,'Xu ly ticket','ACTIVE',22,1,'DAY'),(64,'admin','admin','2020-07-12','2020-07-12',720,55,'Tra ve ket Qua','ACTIVE',22,1,'DAY'),(65,'admin','admin','2020-07-12','2020-07-12',711,56,'Tiep nhan ticket','ACTIVE',23,1,'DAY'),(66,'admin','admin','2020-07-12','2020-07-12',720,57,'Xu ly ticket','ACTIVE',23,1,'DAY'),(67,'admin','admin','2020-07-12','2020-07-12',736,58,'Xu ly ticket','ACTIVE',23,1,'DAY'),(68,'admin','admin','2020-07-12','2020-07-12',720,59,'Tra ve ket Qua','ACTIVE',23,1,'DAY'),(69,'admin','admin','2020-07-12','2020-07-12',711,60,'Tiep nhan ticket','ACTIVE',24,1,'DAY'),(70,'admin','admin','2020-07-12','2020-07-12',720,61,'Xu ly ticket','ACTIVE',24,1,'DAY'),(71,'admin','admin','2020-07-12','2020-07-12',736,62,'Xu ly ticket','ACTIVE',24,1,'DAY'),(72,'admin','admin','2020-07-12','2020-07-12',720,63,'Tra ve ket Qua','ACTIVE',24,1,'DAY'),(73,'admin','admin','2020-07-12','2020-07-12',711,64,'Tiep nhan ticket','ACTIVE',25,1,'DAY'),(74,'admin','admin','2020-07-12','2020-07-12',720,65,'Xu ly ticket','ACTIVE',25,1,'DAY'),(75,'admin','admin','2020-07-12','2020-07-12',736,66,'Xu ly ticket','ACTIVE',25,1,'DAY'),(76,'admin','admin','2020-07-12','2020-07-12',720,67,'Tra ve ket Qua','ACTIVE',25,1,'DAY'),(77,'admin','admin','2020-07-12','2020-07-12',711,68,'Tiep nhan ticket','ACTIVE',26,1,'DAY'),(78,'admin','admin','2020-07-12','2020-07-12',720,69,'Xu ly ticket','ACTIVE',26,1,'DAY'),(79,'admin','admin','2020-07-12','2020-07-12',736,70,'Xu ly ticket','ACTIVE',26,1,'DAY'),(80,'admin','admin','2020-07-12','2020-07-12',720,71,'Tra ve ket Qua','ACTIVE',26,1,'DAY'),(81,'admin','admin','2020-07-12','2020-07-12',711,72,'Tiep nhan ticket','ACTIVE',27,1,'DAY'),(82,'admin','admin','2020-07-12','2020-07-12',720,73,'Xu ly ticket','ACTIVE',27,1,'DAY'),(83,'admin','admin','2020-07-12','2020-07-12',736,74,'Xu ly ticket','ACTIVE',27,1,'DAY'),(84,'admin','admin','2020-07-12','2020-07-12',720,75,'Tra ve ket Qua','ACTIVE',27,1,'DAY'),(85,'admin','admin','2020-07-12','2020-07-12',711,76,'Tiep nhan ticket','ACTIVE',28,1,'DAY'),(86,'admin','admin','2020-07-12','2020-07-12',720,77,'Xu ly ticket','ACTIVE',28,1,'DAY'),(87,'admin','admin','2020-07-12','2020-07-12',736,78,'Xu ly ticket','ACTIVE',28,1,'DAY'),(88,'admin','admin','2020-07-12','2020-07-12',720,79,'Tra ve ket Qua','ACTIVE',28,1,'DAY'),(89,'admin','admin','2020-07-12','2020-07-12',711,80,'Tiep nhan ticket','ACTIVE',29,1,'DAY'),(90,'admin','admin','2020-07-12','2020-07-12',720,81,'Xu ly ticket','ACTIVE',29,1,'DAY'),(91,'admin','admin','2020-07-12','2020-07-12',736,82,'Xu ly ticket','ACTIVE',29,1,'DAY'),(92,'admin','admin','2020-07-12','2020-07-12',720,83,'Tra ve ket Qua','ACTIVE',29,1,'DAY'),(93,'admin','admin','2020-07-12','2020-07-12',711,84,'Tiep nhan ticket','ACTIVE',30,1,'DAY'),(94,'admin','admin','2020-07-12','2020-07-12',720,85,'Xu ly ticket','ACTIVE',30,1,'DAY'),(95,'admin','admin','2020-07-12','2020-07-12',736,86,'Xu ly ticket','ACTIVE',30,1,'DAY'),(96,'admin','admin','2020-07-12','2020-07-12',720,87,'Tra ve ket Qua','ACTIVE',30,1,'DAY');
/*!40000 ALTER TABLE `tk_ba_flow_seting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ba_type_seting`
--

DROP TABLE IF EXISTS `tk_ba_type_seting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_ba_type_seting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `BA_TYPE_CODE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `BA_TYPE_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `BA_TYPE_DESC` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `BA_SERIVICE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'admin/ hr/it/ other',
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ba_type_seting`
--

LOCK TABLES `tk_ba_type_seting` WRITE;
/*!40000 ALTER TABLE `tk_ba_type_seting` DISABLE KEYS */;
INSERT INTO `tk_ba_type_seting` VALUES (1,'ADMIN','ADMIN','2020-07-11','2020-07-11','IT01','COVID-19','Khai báo Covid-19','ADMIN-SERVICE','ACTIVE'),(8,'admin','admin','2020-07-12','2020-07-12','ADMIN-SERVICE.20200712183312','COVID-19-2','Khai báo thông tin y tế','ADMIN-SERVICE','ACTIVE'),(9,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183313','Hỗ trợ tạo tài khoản','Hỗ trợ tạo tài khoản','ADMIN-SERVICE','ACTIVE'),(10,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183314','Hỗ trợ khóa tài khoản','Hỗ trợ khóa tài khoản','ADMIN-SERVICE','ACTIVE'),(11,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183315','Hỗ trợ mở khóa  tài khoản','Hỗ trợ mở khóa  tài khoản','ADMIN-SERVICE','ACTIVE'),(12,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183316','Hỗ trợ tạo dự án','Hỗ trợ tạo dự án','ADMIN-SERVICE','ACTIVE'),(13,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183317','Hỗ trợ xử lý phòng ban','Hỗ trợ xử lý phòng ban','ADMIN-SERVICE','ACTIVE'),(14,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183318','Hỗ trợ cập nhật dữ liệu','Hỗ trợ cập nhật dữ liệu','ADMIN-SERVICE','ACTIVE'),(15,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183319','Hỗ trợ tạo mới KPI','Hỗ trợ tạo mới KPI','ADMIN-SERVICE','ACTIVE'),(16,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183320','Hỗ trợ cập nhật KPI','Hỗ trợ cập nhật KPI','ADMIN-SERVICE','ACTIVE'),(17,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183321','Hỗ trợ xử lý KPI lỗi','Hỗ trợ xử lý KPI lỗi','ADMIN-SERVICE','ACTIVE'),(18,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183322','Hỗ trợ tạo yêu cầu','Hỗ trợ tạo yêu cầu','ADMIN-SERVICE','ACTIVE'),(19,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183323','Báo cáo sự cố hệ thống','Báo cáo sự cố hệ thống','ADMIN-SERVICE','ACTIVE'),(20,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183324','Báo cáo sự cố HT công việc','Báo cáo sự cố HT công việc','ADMIN-SERVICE','ACTIVE'),(21,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183325','Báo cáo sự cố HT KPI','Báo cáo sự cố HT KPI','ADMIN-SERVICE','ACTIVE'),(22,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183326','Báo cáo sự cố SSO','Báo cáo sự cố SSO','ADMIN-SERVICE','ACTIVE'),(23,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183327','Yêu cầu chỉnh sửa thông tin','Yêu cầu chỉnh sửa thông tin','ADMIN-SERVICE','ACTIVE'),(24,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183328','Yêu cầu hỗ trợ ngoài luồng','Yêu cầu hỗ trợ ngoài luồng','ADMIN-SERVICE','ACTIVE'),(25,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183329','Yêu cầu đặt lịch 01','Yêu cầu đặt lịch 01','ADMIN-SERVICE','ACTIVE'),(26,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183330','Yêu cầu đặt lịch 02','Yêu cầu đặt lịch 02','ADMIN-SERVICE','ACTIVE'),(27,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183331','Yêu cầu đặt lịch 03','Yêu cầu đặt lịch 03','ADMIN-SERVICE','ACTIVE'),(28,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183332','Yêu cầu đặt lịch 04','Yêu cầu đặt lịch 04','ADMIN-SERVICE','ACTIVE'),(29,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183333','Yêu cầu đặt lịch 05','Yêu cầu đặt lịch 05','ADMIN-SERVICE','ACTIVE'),(30,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183334','Yêu cầu đặt lịch 06','Yêu cầu đặt lịch 06','ADMIN-SERVICE','ACTIVE'),(31,'admin','admin','2020-07-11','2020-07-12','ADMIN-SERVICE.20200712183335','Yêu cầu đặt lịch 07','Yêu cầu đặt lịch 07','ADMIN-SERVICE','ACTIVE'),(32,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183336','Helpdesk IT 01','Helpdesk. Virtual Server Support','IT-SERVICE','ACTIVE'),(33,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183337','Helpdesk IT 02','Helpdesk. Setup Printer / Scanner','IT-SERVICE','ACTIVE'),(34,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183338','Helpdesk IT 03','Helpdesk. Network connect','IT-SERVICE','ACTIVE'),(35,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183339','Helpdesk IT 04','Helpdesk. Install Windows for Company Common Asset (Include Partualy Funded Laptop)','IT-SERVICE','ACTIVE'),(36,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183340','Helpdesk IT 05','Helpdesk. Install Windows & Applications for Personal Common Asset','IT-SERVICE','ACTIVE'),(37,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183341','Helpdesk IT 06','Helpdesk. Hardware Troubleshoot for Company Common Asset (Include Partualy Funded Laptop)','IT-SERVICE','ACTIVE'),(38,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183342','Helpdesk IT 07','Helpdesk. Hardware Troubleshoot for Personal Common Asset','IT-SERVICE','ACTIVE'),(39,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183343','Helpdesk IT 08','Helpdesk. Change IP Phone Information','IT-SERVICE','ACTIVE'),(40,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183344','Helpdesk IT 09','Helpdesk. Webex Support','IT-SERVICE','ACTIVE'),(41,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183345','Helpdesk IT 10','Helpdesk. Other Request','IT-SERVICE','ACTIVE'),(42,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183346','Special IT Assets','Special IT Assets. Request/Change Special Physical IT Assets','IT-SERVICE','ACTIVE'),(43,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183347','Common Assets 01','Common Assets. Request/Change IT Accessories (Mouse, Keyboard, Cable)','IT-SERVICE','ACTIVE'),(44,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183348','Common Assets 02','Common Assets. Request/Change PC/Monitor/IPPhone/RAM for Individual','IT-SERVICE','ACTIVE'),(45,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183349','Common Assets 03','Common Assets. Borrow IT Assets for Project (Test, Training, Lab,...)','IT-SERVICE','ACTIVE'),(46,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183350','Common Assets 04','Common Assets. Bring IT Assets From Company To Another Site (License)','IT-SERVICE','ACTIVE'),(47,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183351','Access Card 01','Access Card. Renew Access Card (Damaged/Lost)','IT-SERVICE','ACTIVE'),(48,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183352','Access Card 02','Access Card. Access Card for Customer','IT-SERVICE','ACTIVE'),(49,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183353','Access Card 03','Access Card. Access Card for Overtime Working','IT-SERVICE','ACTIVE'),(50,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183354','Access Card 04','Access Card. Other Access Card Requests','IT-SERVICE','ACTIVE'),(51,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183355','Backup & Restore 01','Backup & Restore. Special Backup Data','IT-SERVICE','ACTIVE'),(52,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183356','Backup & Restore 02','Backup & Restore. Restore Data','IT-SERVICE','ACTIVE'),(53,'admin','admin','2020-07-11','2020-07-12','IT-SERVICE.20200712183357','SVN. Other SVN Request','SVN. Other SVN Request','IT-SERVICE','ACTIVE'),(54,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183358','Yêu cầu đào tạo HT công việc','Yêu cầu đào tạo HT công việc','HR-SERVICE','ACTIVE'),(55,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183359','Yêu cầu đào tạo HT  KPI','Yêu cầu đào tạo HT  KPI','HR-SERVICE','ACTIVE'),(56,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183360','Yêu cầu đào tạo HT SSO','Yêu cầu đào tạo HT SSO','HR-SERVICE','ACTIVE'),(57,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183361','Yêu cầu thay đổi luồng dữ liệu','Yêu cầu thay đổi luồng dữ liệu','HR-SERVICE','ACTIVE'),(58,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183362','Yêu cầu thay đổi người duyệt','Yêu cầu thay đổi người duyệt','HR-SERVICE','ACTIVE'),(59,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183363','Yêu cầu thay đổi nguồn lực','Yêu cầu thay đổi nguồn lực','HR-SERVICE','ACTIVE'),(60,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183364','Yêu cầu phân bổ nguồn lực','Yêu cầu phân bổ nguồn lực','HR-SERVICE','ACTIVE'),(61,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183365','Yêu cầu hỗ trợ công tác','Yêu cầu hỗ trợ công tác','HR-SERVICE','ACTIVE'),(62,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183366','Yêu cầu xin dấu','Yêu cầu xin dấu','HR-SERVICE','ACTIVE'),(63,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183367','Yêu cầu lấy văn bản','Yêu cầu lấy văn bản','HR-SERVICE','ACTIVE'),(64,'admin','admin','2020-07-11','2020-07-12','HR-SERVICE.20200712183368','Yêu cầu chuyển văn bản','Yêu cầu chuyển văn bản','HR-SERVICE','ACTIVE'),(65,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183369','Hỗ trợ TEST 1','Hỗ trợ TEST 1','OTHER-SERVICE','ACTIVE'),(66,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183370','Hỗ trợ TEST 2','Hỗ trợ TEST 2','OTHER-SERVICE','ACTIVE'),(67,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183371','Hỗ trợ TEST 3','Hỗ trợ TEST 3','OTHER-SERVICE','ACTIVE'),(68,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183372','Hỗ trợ TEST 4','Hỗ trợ TEST 4','OTHER-SERVICE','ACTIVE'),(69,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183373','Hỗ trợ TEST 5','Hỗ trợ TEST 5','OTHER-SERVICE','ACTIVE'),(70,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183374','Hỗ trợ TEST 6','Hỗ trợ TEST 6','OTHER-SERVICE','ACTIVE'),(71,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183375','Hỗ trợ TEST 7','Hỗ trợ TEST 7','OTHER-SERVICE','ACTIVE'),(72,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183376','Hỗ trợ TEST 8','Hỗ trợ TEST 8','OTHER-SERVICE','ACTIVE'),(73,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183377','Hỗ trợ TEST 9','Hỗ trợ TEST 9','OTHER-SERVICE','ACTIVE'),(74,'admin','admin','2020-07-11','2020-07-12','OTHER-SERVICE.20200712183378','Hỗ trợ TEST 10','Hỗ trợ TEST 10','OTHER-SERVICE','ACTIVE');
/*!40000 ALTER TABLE `tk_ba_type_seting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_baonline_admin_service`
--

DROP TABLE IF EXISTS `tk_baonline_admin_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_baonline_admin_service` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_baonline_admin_service`
--

LOCK TABLES `tk_baonline_admin_service` WRITE;
/*!40000 ALTER TABLE `tk_baonline_admin_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_baonline_admin_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_baonline_approved`
--

DROP TABLE IF EXISTS `tk_baonline_approved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_baonline_approved` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_baonline_approved`
--

LOCK TABLES `tk_baonline_approved` WRITE;
/*!40000 ALTER TABLE `tk_baonline_approved` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_baonline_approved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_baonline_file_attachment`
--

DROP TABLE IF EXISTS `tk_baonline_file_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_baonline_file_attachment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) DEFAULT NULL,
  `FILE_LINK` longtext,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `TICKET_ID` int NOT NULL,
  `file_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_baonline_file_attachment`
--

LOCK TABLES `tk_baonline_file_attachment` WRITE;
/*!40000 ALTER TABLE `tk_baonline_file_attachment` DISABLE KEYS */;
INSERT INTO `tk_baonline_file_attachment` VALUES (21,'2020-07-16','2020-07-16','sonnc','sonnc','files/attachments/BC 14.xls','BC 14.xls',3,'ACTIVE'),(22,'2020-07-16','2020-07-16','sonnc','sonnc','files/attachments/DATA.xml','DATA.xml',3,'ACTIVE');
/*!40000 ALTER TABLE `tk_baonline_file_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_baonline_flow`
--

DROP TABLE IF EXISTS `tk_baonline_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_baonline_flow` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TK_BA_TICKET_ID` int NOT NULL,
  `DISPLAY_ORDER` int DEFAULT NULL,
  `USER_PROCESS` int DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTIONS` varchar(2500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_ATTACHMENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_baonline_flow`
--

LOCK TABLES `tk_baonline_flow` WRITE;
/*!40000 ALTER TABLE `tk_baonline_flow` DISABLE KEYS */;
INSERT INTO `tk_baonline_flow` VALUES (7,'2020-07-16','2020-07-16','sonnc','sonnc',3,0,4,'2020-07-16','2020-07-16','PENDING-PROCESS',NULL,NULL),(8,'2020-07-16','2020-07-16','sonnc','sonnc',3,1,5,'2020-07-16','2020-07-16','PENDING',NULL,NULL),(9,'2020-07-16','2020-07-16','sonnc','sonnc',3,2,3,'2020-07-16','2020-07-16','PENDING',NULL,NULL),(10,'2020-08-30','2020-08-30','sonnc','sonnc',4,1,720,'2020-08-30','2020-08-31','PENDING-PROCESS',NULL,NULL),(11,'2020-08-30','2020-08-30','sonnc','sonnc',4,2,736,'2020-09-01','2020-09-02','PENDING',NULL,NULL),(12,'2020-08-30','2020-08-30','sonnc','sonnc',4,3,720,'2020-09-03','2020-09-04','PENDING',NULL,NULL);
/*!40000 ALTER TABLE `tk_baonline_flow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_baonline_it_service`
--

DROP TABLE IF EXISTS `tk_baonline_it_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_baonline_it_service` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_baonline_it_service`
--

LOCK TABLES `tk_baonline_it_service` WRITE;
/*!40000 ALTER TABLE `tk_baonline_it_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_baonline_it_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_baonline_other_service`
--

DROP TABLE IF EXISTS `tk_baonline_other_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_baonline_other_service` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_baonline_other_service`
--

LOCK TABLES `tk_baonline_other_service` WRITE;
/*!40000 ALTER TABLE `tk_baonline_other_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_baonline_other_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_baonline_ticket`
--

DROP TABLE IF EXISTS `tk_baonline_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_baonline_ticket` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_SUBJECT` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int DEFAULT NULL,
  `USER_CONTACT` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MUC_DO` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTIONS` varchar(2500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOTE` varchar(2500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_ATTACHMENT_ID` int DEFAULT NULL,
  `TK_BAONLINE_SETTING` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_baonline_ticket`
--

LOCK TABLES `tk_baonline_ticket` WRITE;
/*!40000 ALTER TABLE `tk_baonline_ticket` DISABLE KEYS */;
INSERT INTO `tk_baonline_ticket` VALUES (3,'2020-07-16','2020-07-16','sonnc','sonnc','KHAI BÁO THÔNG TIN Y TẾ CHO SONNC',3,'0358346836 / sonnc@fpt.com.vn','CAO','<p>ticketIdticketIdticketIdticketId<br></p>','<p>ticketIdticketIdticketIdticketIdticketId<br></p>','ACTIVE',NULL,8),(4,'2020-08-30','2020-08-30','sonnc','sonnc','Hỗ trợ  Office\'s Working Conditions',3,'0358346836 / sonnc@fpt.com.vn','THAP','<p><span style=\"font-size: 14px;\">Hỗ trợ&nbsp; Office\'s Working Conditions (Small equipment fixxing, Electricity, Light, Maintenance, Ink,... )</span><br></p>','<p><span style=\"font-size: 14px;\">Hỗ trợ&nbsp; Office\'s Working Conditions (Small equipment fixxing, Electricity, Light, Maintenance, Ink,... )</span><br></p>','ACTIVE',NULL,9);
/*!40000 ALTER TABLE `tk_baonline_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_code_value`
--

DROP TABLE IF EXISTS `tk_code_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_code_value` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE_STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE_VALUE` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE_CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE_LOCAL` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE_DISPLAY_ORDER` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_code_value`
--

LOCK TABLES `tk_code_value` WRITE;
/*!40000 ALTER TABLE `tk_code_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_code_value` ENABLE KEYS */;
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
INSERT INTO `tk_department` VALUES (2,'2020-03-28','2020-06-30','admin','admin','Trung tâm phần mềm số 1','Trung tâm phần mềm số 1','PrBNK01','ACTIVE'),(3,'2020-03-28','2020-03-28','admin','admin','ADMIN','ADMIN','ADMIN','ACTIVE'),(4,'2020-06-30','2020-06-30','admin','admin','Bộ phận Kỹ thuật hệ thống','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo cảnh báo của Đài khí tượng Trung ương Trung Quốc, ngày 29/6, các tỉnh thành như Quý Châu, Hồ Nam, Hồ Bắc, An Huy, Giang Tô, Thượng Hải... sẽ xuất hiện mưa vừa và mưa rất to. Trong đó, một số nơi thuộc Giang Tô, Thượng Hải sẽ xuất hiện lượng mưa lớn trong thời gian ngắn với lượng mưa vào khoảng 30-50mm/h, kèm theo hiện tượng thời tiết bất thường.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đây đã là ngày thứ 27 liên tiếp (từ ngày 2/6-28/6) Đài khí tượng Trung ương Trung Quốc ra cảnh báo về mưa lớn trên các địa phương của nước này, điều hiếm thấy từ trước đến nay.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo báo cáo của Bộ quản lý khẩn cấp Trung Quốc, đợt mưa lớn kéo dài từ đầu tháng 6 đến nay đã gây thiệt hại nghiêm trọng cho 26 tỉnh thành của Trung Quốc, đặc biệt là khu vực miền Nam với hơn 13 triệu người bị ảnh hưởng.</p>','AdSys01','ACTIVE'),(5,'2020-06-30','2020-06-30','admin','admin','Bộ phận Kỹ thuật hệ thống','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo cảnh báo của Đài khí tượng Trung ương Trung Quốc, ngày 29/6, các tỉnh thành như Quý Châu, Hồ Nam, Hồ Bắc, An Huy, Giang Tô, Thượng Hải... sẽ xuất hiện mưa vừa và mưa rất to. Trong đó, một số nơi thuộc Giang Tô, Thượng Hải sẽ xuất hiện lượng mưa lớn trong thời gian ngắn với lượng mưa vào khoảng 30-50mm/h, kèm theo hiện tượng thời tiết bất thường.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đây đã là ngày thứ 27 liên tiếp (từ ngày 2/6-28/6) Đài khí tượng Trung ương Trung Quốc ra cảnh báo về mưa lớn trên các địa phương của nước này, điều hiếm thấy từ trước đến nay.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo báo cáo của Bộ quản lý khẩn cấp Trung Quốc, đợt mưa lớn kéo dài từ đầu tháng 6 đến nay đã gây thiệt hại nghiêm trọng cho 26 tỉnh thành của Trung Quốc, đặc biệt là khu vực miền Nam với hơn 13 triệu người bị ảnh hưởng.</p>','AdSys01','ACTIVE'),(6,'2020-06-30','2020-06-30','admin','admin','Phòng ban dự án BIDV-CROMS','Phòng ban dự án BIDV-CROMS','PrBBNKBIDV','ACTIVE');
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
  `KPI_INDIVIDUAL_DEPARTMENT_WEIGHT` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'KPI công việc gắn liền với bộ phận',
  `KPI_INDIVIDUAL_REGULARLY_WEIGHT` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'KPI gắn liền với công việc cá nhân, thường xuyên',
  `KPI_INDIVIDUAL_OTHERS_WEIGHT` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'KPI công việc đột xuất',
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
  `KPI_PERIOD` int DEFAULT NULL COMMENT 'Mục tiêu trong kỳ. Lấy giá trị trong code_value\n',
  `KPI_DVT` int DEFAULT NULL COMMENT 'Đơn vị tính. Lấy giá trị trong code_value',
  `KPI_WEIGHT` int DEFAULT NULL COMMENT 'Trọng số.',
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item`
--

LOCK TABLES `tk_kpi_item` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item` DISABLE KEYS */;
INSERT INTO `tk_kpi_item` VALUES (14,'sonnc','sonnc','2020-06-24','2020-06-24',3,2020,'BO_PHAN','KPI GAN VOI BO PHAN',60,NULL,NULL,'ACTIVE'),(15,'sonnc','sonnc','2020-06-24','2020-06-24',3,2020,'THUONG_XUYEN','KPI THUONG XUYEN',30,NULL,NULL,'ACTIVE'),(16,'sonnc','sonnc','2020-06-24','2020-06-24',3,2020,'DOT_XUAT','KPI CONG VIEC DOT XUAT',10,NULL,NULL,'ACTIVE'),(17,'sonnc','sonnc','2020-06-25','2020-06-25',4,2020,'BO_PHAN','KPI GAN VOI BO PHAN',60,NULL,NULL,'ACTIVE'),(18,'sonnc','sonnc','2020-06-25','2020-06-25',4,2020,'THUONG_XUYEN','KPI THUONG XUYEN',30,NULL,NULL,'ACTIVE'),(19,'sonnc','sonnc','2020-06-25','2020-06-25',4,2020,'DOT_XUAT','KPI CONG VIEC DOT XUAT',10,NULL,NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item_detail`
--

LOCK TABLES `tk_kpi_item_detail` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item_detail` DISABLE KEYS */;
INSERT INTO `tk_kpi_item_detail` VALUES (73,'sonnc','sonnc','2020-06-24','2020-06-24',14,'Giảm chi phí mua hàng','Giảm chi phí mua hàng',97,'%','YEAR',10,NULL,NULL,'ACTIVE'),(74,'sonnc','sonnc','2020-06-24','2020-06-24',14,'Hoàn thành các báo cáo tài chính – chính xác và đúng hạn (98%)','Hoàn thành các báo cáo tài chính – chính xác và đúng hạn (98%)',98,'%','YEAR',30,NULL,NULL,'ACTIVE'),(75,'sonnc','sonnc','2020-06-24','2020-06-24',14,'Xây dựng chuẩn năng lực của phòng','Xây dựng chuẩn năng lực của phòng',6,'PEOPLE','YEAR',10,NULL,NULL,'ACTIVE'),(76,'sonnc','sonnc','2020-06-24','2020-06-24',14,'Mục tiêu đào tạo nhân sự','Mục tiêu đào tạo nhân sự',10,'DAYS','YEAR',10,NULL,NULL,'ACTIVE'),(77,'sonnc','sonnc','2020-06-24','2020-06-24',14,'Nâng cao năng lực quản lý của phòng','Nâng cao năng lực quản lý của phòng',1,'PEOPLE','YEAR',15,NULL,NULL,'ACTIVE'),(78,'sonnc','sonnc','2020-06-24','2020-06-24',14,'Chi tiêu dòng tiền','Chi tiêu dòng tiền',99,'%','YEAR',5,NULL,NULL,'ACTIVE'),(79,'sonnc','sonnc','2020-06-24','2020-06-24',14,'Độ chính xác trong dự báo ngân sách','Độ chính xác trong dự báo ngân sách',95,'%','YEAR',10,NULL,NULL,'ACTIVE'),(80,'sonnc','sonnc','2020-06-24','2020-06-24',14,'Giảm chi phí tồn kho','Giảm chi phí tồn kho',30000000,'VND','YEAR',10,NULL,NULL,'ACTIVE'),(81,'sonnc','sonnc','2020-06-24','2020-06-24',15,'Tinh thần chia sẻ, hỗ trợ đồng nghiệp','Tinh thần chia sẻ, hỗ trợ đồng nghiệp',100,'%','MONTH',30,NULL,NULL,'ACTIVE'),(82,'sonnc','sonnc','2020-06-24','2020-06-24',15,'Kiểm soát số liệu trên hệ thống ERP kịp thời, chính xác','Kiểm soát số liệu trên hệ thống ERP kịp thời, chính xác',100,'%','MONTH',40,56,56,'ACTIVE'),(83,'sonnc','sonnc','2020-06-24','2020-06-24',15,'Hoạch định chiến lược về tài chính, cân đối dòng tiền','Hoạch định chiến lược về tài chính, cân đối dòng tiền',100,'%','MONTH',30,NULL,NULL,'ACTIVE'),(84,'sonnc','sonnc','2020-06-24','2020-06-24',16,'Xây dựng các quy định liên quan đến phòng ban','Xây dựng các quy định liên quan đến phòng ban',100,'%','QUATER',100,NULL,NULL,'ACTIVE'),(85,'sonnc','sonnc','2020-06-25','2020-06-25',17,'Hoàn thành các báo cáo tài chính – chính xác và đúng hạn (98%)','Hoàn thành các báo cáo tài chính – chính xác và đúng hạn (98%)',98,'%','YEAR',30,0,NULL,'ACTIVE'),(86,'sonnc','sonnc','2020-06-25','2020-06-25',17,'Giảm chi phí tồn kho','Giảm chi phí tồn kho',30000000,'VND','YEAR',10,0,NULL,'ACTIVE'),(87,'sonnc','sonnc','2020-06-25','2020-06-25',17,'Nâng cao năng lực quản lý của phòng','Nâng cao năng lực quản lý của phòng',1,'PEOPLE','YEAR',15,0,NULL,'ACTIVE'),(88,'sonnc','sonnc','2020-06-25','2020-06-25',17,'Độ chính xác trong dự báo ngân sách','Độ chính xác trong dự báo ngân sách',95,'%','YEAR',10,0,NULL,'ACTIVE'),(89,'sonnc','sonnc','2020-06-25','2020-06-25',17,'Mục tiêu đào tạo nhân sự','Mục tiêu đào tạo nhân sự',10,'DAYS','YEAR',10,0,NULL,'ACTIVE'),(90,'sonnc','sonnc','2020-06-25','2020-06-25',17,'Chi tiêu dòng tiền','Chi tiêu dòng tiền',99,'%','YEAR',5,0,NULL,'ACTIVE'),(91,'sonnc','sonnc','2020-06-25','2020-06-25',17,'Giảm chi phí mua hàng','Giảm chi phí mua hàng',97,'%','YEAR',10,0,NULL,'ACTIVE'),(92,'sonnc','sonnc','2020-06-25','2020-06-25',17,'Xây dựng chuẩn năng lực của phòng','Xây dựng chuẩn năng lực của phòng',6,'PEOPLE','YEAR',10,0,NULL,'ACTIVE'),(93,'sonnc','sonnc','2020-06-25','2020-06-25',18,'Tinh thần chia sẻ, hỗ trợ đồng nghiệp','Tinh thần chia sẻ, hỗ trợ đồng nghiệp',100,'%','MONTH',30,24,80,'ACTIVE'),(94,'sonnc','sonnc','2020-06-25','2020-06-25',18,'Kiểm soát số liệu trên hệ thống ERP kịp thời, chính xác','Kiểm soát số liệu trên hệ thống ERP kịp thời, chính xác',100,'%','MONTH',40,0,NULL,'ACTIVE'),(95,'sonnc','sonnc','2020-06-25','2020-06-25',18,'Hoạch định chiến lược về tài chính, cân đối dòng tiền','Hoạch định chiến lược về tài chính, cân đối dòng tiền',100,'%','MONTH',30,6,20,'ACTIVE'),(96,'sonnc','sonnc','2020-06-25','2020-06-25',19,'Xây dựng các quy định liên quan đến phòng ban','Xây dựng các quy định liên quan đến phòng ban',100,'%','QUATER',100,0,NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_item_detail_rating`
--

LOCK TABLES `tk_kpi_item_detail_rating` WRITE;
/*!40000 ALTER TABLE `tk_kpi_item_detail_rating` DISABLE KEYS */;
INSERT INTO `tk_kpi_item_detail_rating` VALUES (4,'sonnc','sonnc','2020-06-24','2020-06-24',83,6,NULL,2020,30,90,90,'PENDING_APPROVED'),(5,'sonnc','sonnc','2020-06-25','2020-06-25',82,6,NULL,2020,40,56,56,'PENDING_APPROVED'),(6,'sonnc_01','sonnc_01','2020-06-25','2020-06-25',95,6,NULL,2020,30,52,52,'REJECT'),(7,'sonnc_01','sonnc_01','2020-06-25','2020-06-25',93,6,NULL,2020,30,90,90,'REJECT'),(8,'sonnc_01','sonnc_01','2020-06-25','2020-06-25',93,6,NULL,2020,30,24,80,'APPROVED'),(9,'sonnc_01','sonnc_01','2020-06-25','2020-06-25',95,6,NULL,2020,30,6,20,'APPROVED'),(10,'sonnc','sonnc','2020-07-19','2020-07-19',81,7,NULL,2020,30,27,90,'REJECT');
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
INSERT INTO `tk_kpi_item_setting` VALUES (1,'ADMIN','ADMIN','2020-06-18','2020-06-18','Giảm chi phí tồn kho','Giảm chi phí tồn kho',30000000,'VND',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(2,'ADMIN','ADMIN','2020-06-18','2020-06-18','Giảm chi phí mua hàng','Giảm chi phí mua hàng',97,'%',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(3,'ADMIN','ADMIN','2020-06-18','2020-06-18','Nâng cao năng lực quản lý của phòng','Nâng cao năng lực quản lý của phòng',1,'PEOPLE',15,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(4,'ADMIN','ADMIN','2020-06-18','2020-06-18','Xây dựng chuẩn năng lực của phòng','Xây dựng chuẩn năng lực của phòng',6,'PEOPLE',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(5,'ADMIN','ADMIN','2020-06-18','2020-06-18','Hoàn thành các báo cáo tài chính – chính xác và đúng hạn (98%)','Hoàn thành các báo cáo tài chính – chính xác và đúng hạn (98%)',98,'%',30,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(6,'ADMIN','ADMIN','2020-06-18','2020-06-18','Chi tiêu dòng tiền','Chi tiêu dòng tiền',99,'%',5,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(7,'ADMIN','ADMIN','2020-06-18','2020-06-18','Độ chính xác trong dự báo ngân sách','Độ chính xác trong dự báo ngân sách',95,'%',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(8,'ADMIN','ADMIN','2020-06-18','2020-06-18','Mục tiêu đào tạo nhân sự','Mục tiêu đào tạo nhân sự',10,'DAYS',10,'YEAR','25-31','ACTIVE','BO_PHAN','N',21),(9,'ADMIN','ADMIN','2020-06-18','2020-06-18','Kiểm soát số liệu trên hệ thống ERP kịp thời, chính xác','Kiểm soát số liệu trên hệ thống ERP kịp thời, chính xác',100,'%',40,'MONTH','25-31','ACTIVE','THUONG_XUYEN','N',21),(10,'ADMIN','ADMIN','2020-06-18','2020-06-18','Hoạch định chiến lược về tài chính, cân đối dòng tiền','Hoạch định chiến lược về tài chính, cân đối dòng tiền',100,'%',30,'MONTH','25-31','ACTIVE','THUONG_XUYEN','N',21),(11,'ADMIN','ADMIN','2020-06-18','2020-06-18','Tinh thần chia sẻ, hỗ trợ đồng nghiệp','Tinh thần chia sẻ, hỗ trợ đồng nghiệp',100,'%',30,'MONTH','25-31','ACTIVE','THUONG_XUYEN','N',21),(13,'ADMIN','ADMIN','2020-06-18','2020-06-18','Xây dựng các quy định liên quan đến phòng ban','Xây dựng các quy định liên quan đến phòng ban',100,'%',100,'QUATER','25-31','ACTIVE','DOT_XUAT','N',21),(21,'ADMIN','ADMIN','2020-06-18','2020-06-18','KẾT QUẢ KPI KHÁC','KẾT QUẢ KPI KHÁC',0,'',0,'','','','','',22),(30,'admin','admin','2020-07-11','2020-07-11','Phát triển hệ thống quản lý công việc và đánh giá KPI - Module 01','Phát triển hệ thống quản lý công việc và đánh giá KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','PHONG_BAN',NULL,29),(31,'admin','admin','2020-07-11','2020-07-11','Phát triển hệ thống quản lý công việc và đánh giá KPI - Module 02','Phát triển hệ thống quản lý công việc và đánh giá KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','PHONG_BAN',NULL,29),(32,'admin','admin','2020-07-11','2020-07-11','Phát triển hệ thống quản lý công việc và đánh giá KPI - Module 03','Phát triển hệ thống quản lý công việc và đánh giá KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','PHONG_BAN',NULL,29),(33,'admin','admin','2020-07-11','2020-07-11','Phát triển hệ thống quản lý công việc và đánh giá KPI - Module 04','Phát triển hệ thống quản lý công việc và đánh giá KPI',1,'NUMBER',25,'YEAR',NULL,'ACTIVE','PHONG_BAN',NULL,29),(34,'admin','admin','2020-07-11','2020-07-11','Phát hiện lỗi hệ thống và xử lý kịp thời','Phát hiện lỗi hệ thống và xử lý kịp thời',100,'%',50,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(35,'admin','admin','2020-07-11','2020-07-11','Phát hiện lỗi bảo mật/ vá lỗi bảo mật','Phát hiện lỗi bảo mật/ vá lỗi bảo mật',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(36,'admin','admin','2020-07-11','2020-07-11','Báo cáo hàng tháng','Báo cáo hàng tháng',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,29),(37,'admin','admin','2020-07-11','2020-07-11','Xử lý hệ thống đột xuất ngoài khu vực','Xử lý hệ thống đột xuất ngoài khu vực',100,'%',100,'YEAR',NULL,'ACTIVE','DOT_XUAT',NULL,29),(38,'admin','admin','2020-07-11','2020-07-11','Phát triển hệ thống quản lý công việc và đánh giá KPI - Module 01','Phát triển hệ thống quản lý công việc và đánh giá KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','PHONG_BAN',NULL,30),(39,'admin','admin','2020-07-11','2020-07-11','Phát triển hệ thống quản lý công việc và đánh giá KPI - Module 02','Phát triển hệ thống quản lý công việc và đánh giá KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','PHONG_BAN',NULL,30),(40,'admin','admin','2020-07-11','2020-07-11','Phát triển hệ thống quản lý công việc và đánh giá KPI - Module 03','Phát triển hệ thống quản lý công việc và đánh giá KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','PHONG_BAN',NULL,30),(41,'admin','admin','2020-07-11','2020-07-11','Phát triển hệ thống quản lý công việc và đánh giá KPI - Module 04','Phát triển hệ thống quản lý công việc và đánh giá KPI',1,'NUMBER',25,'MONTH',NULL,'ACTIVE','PHONG_BAN',NULL,30),(42,'admin','admin','2020-07-11','2020-07-11','Phát hiện lỗi hệ thống và xử lý kịp thời','Phát hiện lỗi hệ thống và xử lý kịp thời',100,'%',50,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(43,'admin','admin','2020-07-11','2020-07-11','Phát hiện lỗi bảo mật/ vá lỗi bảo mật','Phát hiện lỗi bảo mật/ vá lỗi bảo mật',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(44,'admin','admin','2020-07-11','2020-07-11','Báo cáo hàng tháng','Báo cáo hàng tháng',100,'%',25,'MONTH',NULL,'ACTIVE','THUONG_XUYEN',NULL,30),(45,'admin','admin','2020-07-11','2020-07-11','Xử lý hệ thống đột xuất ngoài khu vực','Xử lý hệ thống đột xuất ngoài khu vực',100,'%',100,'YEAR',NULL,'ACTIVE','DOT_XUAT',NULL,30);
/*!40000 ALTER TABLE `tk_kpi_item_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_setup`
--

DROP TABLE IF EXISTS `tk_kpi_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_setup` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_setup`
--

LOCK TABLES `tk_kpi_setup` WRITE;
/*!40000 ALTER TABLE `tk_kpi_setup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kpi_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_setup_group`
--

DROP TABLE IF EXISTS `tk_kpi_setup_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_setup_group` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_GROUP_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tên nhóm/ phòng ban/ đơn vị thực hiện KPI',
  `KPI_GROUP_CODE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_GROUP_DESC` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_setup_group`
--

LOCK TABLES `tk_kpi_setup_group` WRITE;
/*!40000 ALTER TABLE `tk_kpi_setup_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kpi_setup_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kpi_setup_group_detail`
--

DROP TABLE IF EXISTS `tk_kpi_setup_group_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_kpi_setup_group_detail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_SETUP_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tên nhóm/ phòng ban/ đơn vị thực hiện KPI',
  `KPI_SETUP_TYPE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_SETUP_PERIOD` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_SETUP_DVT` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_SETUP_WEIGHT` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPI_SETUP_STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_setup_group_detail`
--

LOCK TABLES `tk_kpi_setup_group_detail` WRITE;
/*!40000 ALTER TABLE `tk_kpi_setup_group_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kpi_setup_group_detail` ENABLE KEYS */;
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
  `PHONG_BAN` int DEFAULT NULL,
  `AP_DUNG` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PHONG_BAN_idx` (`PHONG_BAN`),
  CONSTRAINT `PHONG_BAN` FOREIGN KEY (`PHONG_BAN`) REFERENCES `tk_department` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kpi_type_setting`
--

LOCK TABLES `tk_kpi_type_setting` WRITE;
/*!40000 ALTER TABLE `tk_kpi_type_setting` DISABLE KEYS */;
INSERT INTO `tk_kpi_type_setting` VALUES (21,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.001','KPI CHO NHÂN VIÊN LẬP TRÌNH',60,30,10,'ACTIVE',2,'NV'),(22,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.002','KPI CHO NHÂN VIÊN KIỂM THỬ',60,30,10,'ACTIVE',2,'NV'),(23,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.003','KPI CHO NHÂN VIÊN PHÂN TÍCH NGHIỆP VỤ',60,30,10,'ACTIVE',2,'NV'),(24,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.004','KPI CHO NHÂN VIÊN SALE',60,30,10,'ACTIVE',2,'NV'),(25,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.005','KPI CHO NHÂN VIÊN PM',60,30,10,'ACTIVE',2,'NV'),(26,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.006','KPI CHO NHÂN VIÊN TƯ VẤN',60,30,10,'ACTIVE',2,'QL'),(27,'ADMIN','ADMIN','2020-06-18','2020-06-18','A.007','KẾT QUẢ KPI KHÁC',60,30,10,'DELETE',2,'NV'),(29,'admin','admin','2020-07-11','2020-07-11','AdSys01.20200711143247','BỘ KPI ÁP DỤNG CHO NHÂN VIÊN KỸ THUẬT HỆ THỐNG',70,25,5,'ACTIVE',4,'NV'),(30,'admin','admin','2020-07-11','2020-07-11','AdSys01.20200711143841','BỘ KPI ÁP DỤNG CHO NHÂN VIÊN KỸ THUẬT HỆ THỐNG 01',60,35,5,'ACTIVE',4,'NV');
/*!40000 ALTER TABLE `tk_kpi_type_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_project`
--

DROP TABLE IF EXISTS `tk_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_project` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PROJECT_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PROJECT_CODE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PROJECT_START_DATE` date NOT NULL,
  `PROJECT_END_DATE` date NOT NULL,
  `PROJECT_STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PROJECT_COST` decimal(19,2) NOT NULL,
  `DEPARTMENT_ID` int NOT NULL,
  `PROJECT_LEAD` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROJECT_OTHERS` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PROJECT_NAME_UNIQUE` (`PROJECT_NAME`),
  UNIQUE KEY `PROJECT_CODE_UNIQUE` (`PROJECT_CODE`),
  KEY `fk_tk_project_tk_employee1_idx` (`DEPARTMENT_ID`),
  CONSTRAINT `fk_tk_project_tk_employee1` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `tk_department` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_project`
--

LOCK TABLES `tk_project` WRITE;
/*!40000 ALTER TABLE `tk_project` DISABLE KEYS */;
INSERT INTO `tk_project` VALUES (3,'2020-04-06','2020-04-06','sonnc','sonnc','Dự án khởi tạo và quản lý khoản vay','BIDV-CROMS-SMLC','2020-04-06','2024-01-01','OPEN',10000000.00,2,'sonnc','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">+ Thủ tướng Anh Boris Johnson (55 tuổi) hôm 5/4 đã phải nhập viện để các bác sĩ kiểm tra thêm sau 10 ngày nhiễm Covid-19 mà các triệu chứng không thuyên giảm.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Chuyên gia y tế của CNN, Kent Sepkowitz nói,&nbsp;ông Boris Johnson có thể nhập viện để chụp CT vùng ngực và làm các xét nghiệm máu. Xét nghiệm nồng độ oxy trong máu có thể chỉ ra rằng “Thủ tướng Anh hồi phục chậm hay là đang rơi vào tình trạng nguy hiểm”.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Thủ tướng Anh Boris Johnson dương tính với Covid-19 hôm 27/3. Trong những ngày cách ly, ông Johnson điều hành Chính phủ từ xa và vẫn sẽ tiếp tục làm điều này dù nhập viện.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">+ Tính đến 9h30 sáng 6/4, Việt Nam ghi nhận 241 ca nhiễm Covid-19 (không tăng ca nào so với 12h trước), trong đó, 91 người đã khỏi bệnh, chưa có trường hợp nào tử vong.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">+ Bộ Y tế thông tin, trong số 150 bệnh nhân đang điều trị, số ca âm tính lần 1 là 29, âm tính lần 2 là 23 người. Các trường hợp nặng đang được điều trị tại Bệnh viện Bệnh Nhiệt đới Trung ương (Hà Nội) đang tiến triển tốt lên, không phải dùng tim phổi nhân tạo và thở máy.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">+ PGS.T Lê Quỳnh Mai, Phó Viện trưởng Viện Vệ sinh dịch tễ Trung ương cho biết, các nhà khoa học của Viện đã nhận thấy sự biến đổi khác biệt về sự tiến hóa của virus&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/dich-covid-19-c62e6058.html\" title=\"SARS-CoV-2\" style=\"line-height: 1.6; color: rgb(0, 0, 255);\">SARS-CoV-2</a>&nbsp;gây dịch Covid-19 tại Việt Nam.</p>'),(4,'2020-04-06','2020-04-06','sonnc','sonnc','Dự án khởi tạo và quản lý tài sản đảm bảo','BIDV-CROMS-CLIMS','2020-04-06','2023-01-30','OPEN',10000000.00,2,'sonnc','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Người đứng đầu Chính phủ&nbsp;cho rằng, có tín hiệu tích cực khi mà trong những ngày qua, số ca nhiễm&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/dich-covid-19-c62e6058.html\" title=\"Covid-19\" style=\"line-height: 1.6; color: rgb(0, 0, 255);\">Covid-19</a>&nbsp;mới ít, số ca ra viện tăng lên&nbsp;và trong xã hội xuất hiện nhiều tấm gương tương thân, tương ái.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Chỉ thị số 15, 16 làm cuộc sống của người dân thay đổi. Thủ tướng nêu rõ, ở giai đoạn này, sự chấp hành của người dân là yếu tố quan trọng nhất. Và thời gian qua, người dân đã tuân thủ tốt, nhờ đó, công tác chống dịch đạt một số kết quả tích cực.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đặt vấn đề về việc tiếp tục các Chỉ thị nêu trên, Thủ tướng nhấn mạnh, giải pháp mới trong giai đoạn hiện nay là gì?&nbsp;Từ nay đến ngày 15/4, cần tiếp tục tập trung thực hiện giải pháp đưa ra, không được chủ quan, không để vấp phải sai lầm do chủ quan, coi thường, nhất là khi xảy ra việc tái nhiễm ở một số nơi trên thế giới.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Trong cuộc họp Ban Chỉ đạo quốc gia về phòng, chống dịch sáng nay,&nbsp;Phó Thủ tướng Vũ Đức Đam trong phát biểu đã&nbsp;trân trọng cám ơn nhân dân đã chung sức, đồng lòng chống dịch cho dù phải chịu không ít bất tiện, thậm chí thiệt thòi về lợi ích kinh tế. Hơn thế, rất nhiều tổ chức, doanh nghiệp, cá nhân, từ những cụ già tới các em nhỏ đã có muôn vàn hành động rất đẹp, hết sức ý nghĩa để tiếp thêm sức mạnh vật chất và tinh thần cho cuộc chiến chống dịch.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Phó Thủ tướng Vũ Đức Đam cho biết,&nbsp;Việt Nam đã và đang kiểm soát được dịch bệnh Covid-19 nhưng phía trước còn gian khó, tiềm ẩn không ít rủi ro.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo báo cáo của Ban chỉ đạo quốc gia, trên thế giới ghi nhận hơn 1,23 triệu người mắc tại 210 quốc gia, vùng lãnh thổ, có gần 70.000 người tử vong.</p>'),(5,'2020-04-12','2020-04-12','sonnc','sonnc','Dự án: Hệ thống quản lý công việc và đánh giá KPI','TASK-KPI','2020-04-12','2020-06-30','OPEN',10000000.00,2,'sonnc','<p>PHÁT TRIỂN CÁC MODULE</p>'),(7,'2020-08-15','2020-08-15','sonnc','sonnc','Dự án test','TEST','2020-08-15','2021-11-15','OPEN',30000000000.00,2,'sonnc','<p>TEST TẠO ỔHECT</p>'),(8,'2020-08-15','2020-08-15','quynd10','quynd10','Dự án: Hệ thống khởi tạo và quản lý khoản vay.','CROMS-SMLC','2020-08-01','2022-08-01','OPEN',30000000000.00,6,'quynd10','<p><span style=\"font-size: 14px;\">Hệ thống khởi tạo và quản lý khoản vay.</span><br></p>'),(9,'2020-08-30','2020-08-30','quynd10','quynd10','BANK DAILY','BANK_DAILY','2020-01-01','2020-12-31','OPEN',0.00,6,'quynd10','<p>Các công việc hằng ngày liên quan đến phòng ban</p>');
/*!40000 ALTER TABLE `tk_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_raci`
--

DROP TABLE IF EXISTS `tk_raci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_raci` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) NOT NULL,
  `LAST_UPDATE_BY` varchar(255) NOT NULL,
  `RACI_TYPE` char(1) NOT NULL,
  `RACI_TASK_ID` int NOT NULL,
  `RACI_USER_ID` int NOT NULL,
  `raci_status` varchar(45) DEFAULT NULL,
  `RACI_START_DATE` date NOT NULL COMMENT 'Thời gian bắt đầu của 1 người trong chu trình RACI',
  `RACI_END_DATE` date NOT NULL COMMENT 'Thời gian kết thúc của 1 người trong chu trình RACI',
  `RACI_STATUS_APPROVED` varchar(45) DEFAULT NULL COMMENT 'Chỉ A mới có quyền cập nhật xác nhận hoàn thành phần RACI của 1 người: APPROVED/ DENIED/ PENDING',
  `RACI_STATUS_PROCESS` varchar(45) DEFAULT NULL COMMENT 'Mỗi người thuộc RACI cập nhật thạng thái hoàn thành để A xác nhận: OPEN,IN_PROCESS,FINISH',
  `RACI_STATUS_RATING` varchar(45) DEFAULT NULL COMMENT 'Trạng thái xử lý của mỗi người, dùng để đánh giá có hoàn thành đúng hạn không: TRUOC_HAN, DUNG_HAN, TRE_HAN',
  PRIMARY KEY (`ID`),
  KEY `fk_tk_raci_tk_task1_idx` (`RACI_TASK_ID`),
  KEY `fk_tk_raci_tk_user1_idx` (`RACI_USER_ID`),
  CONSTRAINT `fk_tk_raci_tk_task1` FOREIGN KEY (`RACI_TASK_ID`) REFERENCES `tk_task` (`ID`),
  CONSTRAINT `fk_tk_raci_tk_user1` FOREIGN KEY (`RACI_USER_ID`) REFERENCES `tk_user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_raci`
--

LOCK TABLES `tk_raci` WRITE;
/*!40000 ALTER TABLE `tk_raci` DISABLE KEYS */;
INSERT INTO `tk_raci` VALUES (1,'2020-04-11','2020-04-11','sonnc','sonnc','R',4,3,'ACTIVE','2020-01-01','2020-01-01',NULL,'OPEN',NULL),(2,'2020-04-11','2020-04-11','sonnc','sonnc','A',4,4,'ACTIVE','2020-01-01','2020-01-01',NULL,'OPEN',NULL),(3,'2020-04-11','2020-04-11','sonnc','sonnc','C',4,5,'ACTIVE','2020-01-01','2020-01-01',NULL,'OPEN',NULL),(4,'2020-04-11','2020-04-11','sonnc','sonnc','I',4,700,'ACTIVE','2020-01-01','2020-01-01',NULL,'OPEN',NULL),(5,'2020-04-12','2020-04-12','sonnc','sonnc','R',6,3,'ACTIVE','2020-04-12','2020-04-30',NULL,'OPEN',NULL),(6,'2020-04-12','2020-04-12','sonnc','sonnc','A',6,4,'ACTIVE','2020-04-12','2020-04-30',NULL,'OPEN',NULL),(7,'2020-04-12','2020-04-12','sonnc','sonnc','C',6,5,'ACTIVE','2020-04-12','2020-04-23',NULL,'OPEN',NULL),(8,'2020-04-12','2020-04-12','sonnc','sonnc','I',6,700,'ACTIVE','2020-04-12','2020-04-30',NULL,'OPEN',NULL),(9,'2020-04-12','2020-04-12','sonnc','sonnc','R',7,3,'ACTIVE','2020-04-12','2020-04-30',NULL,'OPEN',NULL),(10,'2020-04-12','2020-04-12','sonnc','sonnc','A',7,4,'ACTIVE','2020-04-12','2020-04-30',NULL,'OPEN',NULL),(11,'2020-04-12','2020-04-12','sonnc','sonnc','C',7,5,'ACTIVE','2020-04-12','2020-04-30',NULL,'OPEN',NULL),(12,'2020-04-12','2020-04-12','sonnc','sonnc','I',7,700,'ACTIVE','2020-04-12','2020-04-30',NULL,'OPEN',NULL),(13,'2020-04-14','2020-04-14','sonnc','sonnc','A',12,3,'ACTIVE','2020-04-14','2020-04-14',NULL,'OPEN',NULL),(14,'2020-04-14','2020-04-14','sonnc','sonnc','C',12,5,'ACTIVE','2020-04-21','2020-04-21',NULL,'OPEN',NULL),(15,'2020-04-14','2020-04-14','sonnc','sonnc','I',12,700,'ACTIVE','2020-04-29','2020-04-30',NULL,'OPEN',NULL),(19,'2020-04-14','2020-04-14','sonnc','sonnc','A',14,3,'ACTIVE','2020-04-14','2020-04-14',NULL,'OPEN',NULL),(20,'2020-04-14','2020-04-14','sonnc','sonnc','C',14,5,'ACTIVE','2020-04-14','2020-04-14',NULL,'OPEN',NULL),(21,'2020-04-14','2020-04-14','sonnc','sonnc','I',14,700,'ACTIVE','2020-04-21','2020-04-14',NULL,'OPEN',NULL),(22,'2020-05-06','2020-05-06','sonnc','sonnc','A',15,3,'ACTIVE','2020-05-06','2020-05-07',NULL,'OPEN',NULL),(23,'2020-05-16','2020-08-30','sonnc','sonnc','A',16,3,'ACTIVE','2020-05-16','2020-06-19','APPROVED','FINISH','TRE_HAN'),(24,'2020-05-16','2020-08-30','sonnc','sonnc','R',16,3,'ACTIVE','2020-06-16','2020-06-19','APPROVED','FINISH','TRE_HAN'),(25,'2020-05-16','2020-08-29','sonnc','sonnc','R',17,3,'ACTIVE','2020-05-16','2020-05-30',NULL,'OPEN',NULL),(26,'2020-05-16','2020-08-29','sonnc','sonnc','A',17,3,'ACTIVE','2020-05-16','2020-05-30',NULL,'OPEN',NULL),(42,'2020-05-24','2020-08-29','sonnc','sonnc','R',18,3,'ACTIVE','2020-05-16','2020-05-30',NULL,'OPEN',NULL),(43,'2020-05-24','2020-05-24','sonnc','sonnc','A',18,3,'ACTIVE','2020-05-16','2020-05-30',NULL,'OPEN',NULL),(44,'2020-05-24','2020-08-14','sonnc','sonnc','C',18,4,'ACTIVE','2020-05-16','2020-05-30',NULL,'OPEN',NULL),(45,'2020-05-24','2020-05-24','sonnc','sonnc','I',18,5,'ACTIVE','2020-05-16','2020-05-30',NULL,'OPEN',NULL),(46,'2020-05-24','2020-05-24','sonnc','sonnc','C',18,700,'ACTIVE','2020-05-16','2020-05-30',NULL,'OPEN',NULL),(47,'2020-08-29','2020-08-29','quynd10','quynd10','R',21,708,'ACTIVE','2020-09-01','2020-09-05',NULL,'OPEN',NULL),(48,'2020-08-29','2020-08-29','quynd10','quynd10','R',21,720,'ACTIVE','2020-09-01','2020-09-05',NULL,'OPEN',NULL),(49,'2020-08-29','2020-08-29','quynd10','quynd10','A',21,720,'ACTIVE','2020-09-01','2020-09-05',NULL,'OPEN',NULL),(50,'2020-08-29','2020-08-29','quynd10','quynd10','A',23,708,'ACTIVE','2020-09-01','2020-09-02',NULL,'OPEN',NULL),(51,'2020-08-29','2020-08-29','quynd10','quynd10','R',23,715,'ACTIVE','2020-09-01','2020-09-02',NULL,'OPEN',NULL),(52,'2020-08-29','2020-08-29','quynd10','quynd10','R',23,721,'ACTIVE','2020-09-01','2020-09-02',NULL,'OPEN',NULL),(53,'2020-08-29','2020-08-29','quynd10','quynd10','R',23,723,'ACTIVE','2020-09-01','2020-09-02',NULL,'OPEN',NULL),(54,'2020-08-29','2020-08-29','quynd10','quynd10','R',23,731,'ACTIVE','2020-09-01','2020-09-02',NULL,'OPEN',NULL),(55,'2020-08-29','2020-08-29','quynd10','quynd10','R',23,732,'ACTIVE','2020-09-01','2020-09-02',NULL,'OPEN',NULL),(56,'2020-08-29','2020-08-29','quynd10','quynd10','R',24,720,'ACTIVE','2020-09-02','2020-09-02',NULL,'OPEN',NULL),(57,'2020-08-29','2020-08-29','quynd10','quynd10','A',24,720,'ACTIVE','2020-09-02','2020-09-02',NULL,'OPEN',NULL),(58,'2020-08-29','2020-08-29','sonnc','sonnc','R',25,3,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(59,'2020-08-29','2020-08-29','sonnc','sonnc','A',25,3,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(60,'2020-08-29','2020-08-29','sonnc','sonnc','R',26,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(61,'2020-08-29','2020-08-29','sonnc','sonnc','A',26,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(62,'2020-08-29','2020-08-29','sonnc','sonnc','R',28,5,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(63,'2020-08-29','2020-08-29','sonnc','sonnc','A',28,5,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(64,'2020-08-29','2020-08-29','sonnc','sonnc','R',34,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(65,'2020-08-29','2020-08-29','sonnc','sonnc','A',34,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(66,'2020-08-29','2020-08-29','sonnc','sonnc','R',35,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(67,'2020-08-29','2020-08-29','sonnc','sonnc','A',35,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(68,'2020-08-29','2020-08-29','sonnc','sonnc','R',37,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(69,'2020-08-29','2020-08-29','sonnc','sonnc','A',37,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(70,'2020-08-29','2020-08-29','sonnc','sonnc','R',38,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(71,'2020-08-29','2020-08-29','sonnc','sonnc','A',38,4,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(72,'2020-08-29','2020-08-29','sonnc','sonnc','R',39,5,'ACTIVE','2020-08-29','2020-09-04',NULL,'OPEN',NULL),(73,'2020-08-29','2020-08-29','sonnc','sonnc','A',39,5,'ACTIVE','2020-08-29','2020-09-04',NULL,'OPEN',NULL),(74,'2020-08-29','2020-08-29','sonnc','sonnc','R',40,5,'ACTIVE','2020-09-01','2020-09-05',NULL,'OPEN',NULL),(75,'2020-08-29','2020-08-29','sonnc','sonnc','A',40,5,'ACTIVE','2020-09-01','2020-09-05',NULL,'OPEN',NULL),(76,'2020-08-29','2020-08-29','sonnc','sonnc','A',44,3,'ACTIVE','2020-08-29','2020-08-29',NULL,'OPEN',NULL),(77,'2020-08-29','2020-08-29','sonnc','sonnc','R',44,4,'ACTIVE','2020-09-01','2020-09-02',NULL,'OPEN',NULL),(78,'2020-08-30','2020-08-30','quynd10','quynd10','R',46,720,'ACTIVE','2020-09-02','2020-09-02',NULL,'OPEN',NULL),(79,'2020-08-30','2020-08-30','quynd10','quynd10','A',46,720,'ACTIVE','2020-09-02','2020-09-02',NULL,'OPEN',NULL),(80,'2020-08-30','2020-08-30','quynd10','quynd10','R',48,708,'ACTIVE','2020-09-03','2020-09-03',NULL,'OPEN',NULL),(81,'2020-08-30','2020-08-30','quynd10','quynd10','A',48,708,'ACTIVE','2020-09-03','2020-09-03',NULL,'OPEN',NULL),(82,'2020-08-30','2020-08-30','quynd10','quynd10','R',49,709,'ACTIVE','2020-09-03','2020-09-03',NULL,'OPEN',NULL),(83,'2020-08-30','2020-08-30','quynd10','quynd10','A',49,711,'ACTIVE','2020-09-03','2020-09-03',NULL,'OPEN',NULL),(84,'2020-08-30','2020-08-30','quynd10','quynd10','A',51,708,'ACTIVE','2020-09-02','2020-09-03',NULL,'OPEN',NULL),(85,'2020-08-30','2020-08-30','quynd10','quynd10','R',51,709,'ACTIVE','2020-09-02','2020-09-03',NULL,'OPEN',NULL),(86,'2020-08-30','2020-08-30','quynd10','quynd10','R',51,712,'ACTIVE','2020-09-02','2020-09-03',NULL,'OPEN',NULL),(87,'2020-08-30','2020-08-30','quynd10','quynd10','R',53,720,'ACTIVE','2020-09-04','2020-09-04',NULL,'OPEN',NULL),(88,'2020-08-30','2020-08-30','quynd10','quynd10','A',53,720,'ACTIVE','2020-09-04','2020-09-04',NULL,'OPEN',NULL),(89,'2020-08-30','2020-08-30','quynd10','quynd10','R',54,708,'ACTIVE','2020-09-04','2020-09-04',NULL,'OPEN',NULL),(90,'2020-08-30','2020-08-30','quynd10','quynd10','C',54,712,'ACTIVE','2020-09-04','2020-09-04',NULL,'OPEN',NULL),(91,'2020-08-30','2020-08-30','quynd10','quynd10','C',54,715,'ACTIVE','2020-09-04','2020-09-04',NULL,'OPEN',NULL),(92,'2020-08-30','2020-08-30','quynd10','quynd10','A',54,720,'ACTIVE','2020-09-04','2020-09-04',NULL,'OPEN',NULL),(93,'2020-08-30','2020-08-30','quynd10','quynd10','C',54,723,'ACTIVE','2020-09-04','2020-09-04',NULL,'OPEN',NULL),(94,'2020-08-30','2020-08-30','quynd10','quynd10','C',54,732,'ACTIVE','2020-09-04','2020-09-04',NULL,'OPEN',NULL),(95,'2020-08-30','2020-08-30','quynd10','quynd10','R',55,708,'ACTIVE','2020-09-20','2020-09-20',NULL,'OPEN',NULL),(96,'2020-08-30','2020-08-30','quynd10','quynd10','C',55,712,'ACTIVE','2020-09-20','2020-09-20',NULL,'OPEN',NULL),(97,'2020-08-30','2020-08-30','quynd10','quynd10','C',55,715,'ACTIVE','2020-09-20','2020-09-20',NULL,'OPEN',NULL),(98,'2020-08-30','2020-08-30','quynd10','quynd10','A',55,720,'ACTIVE','2020-09-20','2020-09-20',NULL,'OPEN',NULL),(99,'2020-08-30','2020-08-30','quynd10','quynd10','C',55,721,'ACTIVE','2020-09-20','2020-09-20',NULL,'OPEN',NULL),(100,'2020-08-30','2020-08-30','quynd10','quynd10','C',55,723,'ACTIVE','2020-09-20','2020-09-20',NULL,'OPEN',NULL),(101,'2020-08-30','2020-08-30','quynd10','quynd10','I',57,708,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(102,'2020-08-30','2020-08-30','quynd10','quynd10','R',57,712,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(103,'2020-08-30','2020-08-30','quynd10','quynd10','R',57,715,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(104,'2020-08-30','2020-08-30','quynd10','quynd10','R',57,716,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(105,'2020-08-30','2020-08-30','quynd10','quynd10','A',57,720,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(106,'2020-08-30','2020-08-30','quynd10','quynd10','R',57,723,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(107,'2020-08-31','2020-08-31','sonnc','sonnc','A',58,3,'ACTIVE','2020-09-01','2020-08-31',NULL,'IN_PROCESS',NULL),(108,'2020-08-31','2020-08-31','sonnc','sonnc','R',58,4,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(109,'2020-08-31','2020-08-31','sonnc','sonnc','R',59,3,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(110,'2020-08-31','2020-08-31','sonnc','sonnc','A',59,3,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(111,'2020-08-31','2020-08-31','sonnc','sonnc','R',60,3,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(112,'2020-08-31','2020-08-31','sonnc','sonnc','A',60,3,'ACTIVE','2020-08-31','2020-08-31',NULL,'OPEN',NULL),(113,'2020-09-03','2020-09-03','quynd10','quynd10','R',61,708,'ACTIVE','2020-09-03','2020-09-03',NULL,'OPEN',NULL),(114,'2020-09-03','2020-09-03','quynd10','quynd10','R',61,715,'ACTIVE','2020-09-03','2020-09-03',NULL,'OPEN',NULL),(115,'2020-09-03','2020-09-03','quynd10','quynd10','A',61,720,'ACTIVE','2020-09-10','2020-09-10',NULL,'OPEN',NULL),(116,'2020-09-03','2020-09-03','quynd10','quynd10','R',61,721,'ACTIVE','2020-09-10','2020-09-10',NULL,'OPEN',NULL),(117,'2020-09-03','2020-09-03','quynd10','quynd10','C',61,734,'ACTIVE','2020-09-10','2020-09-10',NULL,'OPEN',NULL),(118,'2020-09-03','2020-09-03','quynd10','quynd10','I',62,708,'ACTIVE','2020-09-12','2020-09-12',NULL,'OPEN',NULL),(119,'2020-09-03','2020-09-03','quynd10','quynd10','R',62,714,'ACTIVE','2020-09-03','2020-09-03',NULL,'OPEN',NULL),(120,'2020-09-03','2020-09-03','quynd10','quynd10','I',62,715,'ACTIVE','2020-09-03','2020-09-03',NULL,'OPEN',NULL),(121,'2020-09-03','2020-09-03','quynd10','quynd10','A',62,720,'ACTIVE','2020-09-12','2020-09-12',NULL,'OPEN',NULL),(122,'2020-09-03','2020-09-03','quynd10','quynd10','R',62,727,'ACTIVE','2020-09-12','2020-09-12',NULL,'OPEN',NULL);
/*!40000 ALTER TABLE `tk_raci` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_rating_date_setup`
--

LOCK TABLES `tk_rating_date_setup` WRITE;
/*!40000 ALTER TABLE `tk_rating_date_setup` DISABLE KEYS */;
INSERT INTO `tk_rating_date_setup` VALUES (1,'admin_04','admin_04','2020-09-04','2020-09-04',0,0,'INACTIVE'),(2,'admin_04','admin_04','2020-09-04','2020-09-04',0,0,'INACTIVE'),(3,'admin_04','admin_04','2020-09-04','2020-09-04',0,0,'INACTIVE'),(4,'admin_04','admin_04','2020-09-04','2020-09-04',10,31,'INACTIVE'),(5,'admin_04','admin_04','2020-09-04','2020-09-04',1,5,'INACTIVE'),(6,'admin_04','admin_04','2020-09-04','2020-09-04',29,31,'INACTIVE'),(7,'admin_04','admin_04','2020-09-23','2020-09-23',20,29,'ACTIVE');
/*!40000 ALTER TABLE `tk_rating_date_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_role`
--

DROP TABLE IF EXISTS `tk_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_CODE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_STATUS` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_LEVEL` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_role`
--

LOCK TABLES `tk_role` WRITE;
/*!40000 ALTER TABLE `tk_role` DISABLE KEYS */;
INSERT INTO `tk_role` VALUES (2,'2020-03-28','2020-03-28','ADMIN','ADMIN','QL','Quản lý','ACTIVE',1),(3,'2020-03-28','2020-03-28','ADMIN','ADMIN','NV','Nhân viên','ACTIVE',0),(4,'2020-03-28','2020-03-28','ADMIN','ADMIN','AD','Admin','ACTIVE',99),(5,'2020-03-28','2020-03-28','ADMIN','ADMIN','GD','Giám đốc','ACTIVE',2);
/*!40000 ALTER TABLE `tk_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_task`
--

DROP TABLE IF EXISTS `tk_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_task` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) NOT NULL,
  `LAST_UPDATE_BY` varchar(255) NOT NULL,
  `TASK_CODE` varchar(255) NOT NULL,
  `TASK_NAME` varchar(500) NOT NULL,
  `task_desc` longtext,
  `TASK_STATUS` varchar(45) NOT NULL,
  `TASK_START_DATE` date NOT NULL,
  `TASK_END_DATE` date NOT NULL,
  `TASK_PARENT_ID` int DEFAULT NULL,
  `TASK_PERCENT` int DEFAULT NULL,
  `TASK_PERCENT_FINISH` int DEFAULT NULL,
  `TASK_DISPLAY_ORDER` int DEFAULT NULL,
  `TASK_ALPHABETINDEX` varchar(45) DEFAULT NULL,
  `TASK_TYPE` varchar(45) DEFAULT NULL,
  `TASK_PRIORITY` varchar(45) DEFAULT NULL,
  `TASK_PROJECT_ID` int NOT NULL,
  `RATING_KPI` char(1) DEFAULT NULL,
  `TASK_STATUS_PROCESS` varchar(45) DEFAULT NULL COMMENT 'Trạng thái công việc sau khi kết thúc chu trình raci: TRUOC_HAN, DUNG_HAN, TRE_HAN, chỉ A mới có thể xác nhận cập nhật',
  `IS_TASK_TITLE_OMNIBUS` varchar(45) DEFAULT NULL,
  `OMNIBUS_IND` varchar(45) DEFAULT NULL,
  `OMNIBUS_GROUP` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tk_task_tk_project1_idx` (`TASK_PROJECT_ID`),
  CONSTRAINT `fk_tk_task_tk_project1` FOREIGN KEY (`TASK_PROJECT_ID`) REFERENCES `tk_project` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_task`
--

LOCK TABLES `tk_task` WRITE;
/*!40000 ALTER TABLE `tk_task` DISABLE KEYS */;
INSERT INTO `tk_task` VALUES (1,'2020-04-04','2020-04-04','ADMIN','ADMIN','BIDV-SMLC-001','Xử lý thông tin STP lỗi MI','Xử lý thông tin STP lỗi MI DESC','ACTIVE','2020-09-09','2020-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'PROCESS',NULL,'N',NULL),(2,'2020-04-04','2020-04-04','ADMIN','ADMIN','BIDV-SMLC-002','Xử lý mẫu Cas Printout','Xử lý mẫu Cas Printout và ES','ACTIVE','2020-09-09','2021-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'PROCESS',NULL,'N',NULL),(4,'2020-04-11','2020-04-11','sonnc','sonnc','BIDV-CROMS-SMLC-20200411034845','Xử lý báo cáo','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Ngày 11/4, Trung tâm Kiểm soát bệnh tật tỉnh Hà Nam thông báo, đơn vị này đã nhận được kết quả xét nghiệm Covid-19 của 193 trường hợp có liên quan đến bệnh nhân 251 (64 tuổi, trú tại thôn 3 Ngô Khê, xã Bình Nghĩa, huyện Bình Lục, tỉnh Hà Nam).</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Trong số 193 kết quả xét nghiệm, 101 mẫu được thực hiện bởi Viện Vệ sinh dịch tễ Trung ương và 92 mẫu được thực hiện tại Đại học Y Hà Nội. Tất cả đều cho kết quả ban đầu âm tính với virus&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/dich-covid-19-c62e6058.html\" title=\"SARS-CoV-2\" style=\"line-height: 1.6; color: rgb(0, 0, 255);\">SARS-CoV-2</a>&nbsp;(virus gây dịch Covid-19).</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Hiện cơ quan chức năng tỉnh Hà Nam đã xác định được 175 trường hợp là F1 của bệnh nhân 251, trong đó có trên 60 nhân viên y tế; trên 560 người được xác định F2 (người tiếp xúc với F1).</p>','ACTIVE','2020-04-11','2020-05-21',NULL,NULL,NULL,NULL,NULL,'MOI','THAP',3,NULL,'PROCESS',NULL,'N',NULL),(6,'2020-04-12','2020-04-12','sonnc','sonnc','BIDV-CROMS-SMLC-20200412032454','CRUD cho modul TASK','<p>- tạo task</p><p>- view</p><p>- cập nhật</p>','ACTIVE','2020-04-12','2020-04-30',NULL,NULL,NULL,NULL,NULL,'MOI','CAO',3,NULL,'PROCESS',NULL,'N',NULL),(7,'2020-04-12','2020-06-15','sonnc','sonnc','TASK-KPI-20200412040945','CRUD cho modul TASK trong TKTASK','<p>Tạo công việc</p>','ACTIVE','2020-04-12','2020-06-30',20,50,NULL,1,'1','MOI','CAO',5,NULL,'PROCESS',NULL,'Y',1),(12,'2020-04-14','2020-06-15','sonnc','sonnc','TASK-KPI-20200414014421','Tạo cấu trúc Omnibus cho TASK','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo đó bệnh nhân 22 được Đà Nẵng phát hiện dương tính từ ngày 8-3, điều trị đến ngày 27-3 thì cho xuất viện sau 3 lần âm tính.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Sau đó, người này tiếp tục được cách ly 14 ngày tại khách sạn.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đến ngày 10-4, người đàn ông quốc tịch Anh đi máy bay từ Đà Nẵng vào TP.HCM.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Trong khi chờ đi tiếp sang Anh, người này nghỉ tại một khách sạn trên đường Hồng Hà, quận Tân Bình và được lấy mẫu xét nghiệm.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đến tối 12-3, Trung tâm kiểm soát bệnh tật TP.HCM xác định mẫu xét nghiệm của người này dương tính, tuy nhiên bệnh nhân này đã trở về Anh.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Ngay sau đó, các cơ quan chức năng đã khử khuẩn khách sạn, cách ly tập&nbsp; trung 14 người tiếp xúc gần người đàn ông quốc tịch Anh, 3 nhân viên phục vụ được cách ly tại khách sạn, 31 khách lưu trú tại khách sạn này cũng được giám sát, cách ly. Đồng thời, cơ quan chức năng đã liên hệ với Hãng hàng không Vietnam Airlines để cách ly, lấy mẫu xét nghiệm đối với những trường hợp ngồi gần người này.</p>','ACTIVE','2020-04-14','2020-04-14',7,50,NULL,2,'1.1','MOI','CAO',5,NULL,'PROCESS',NULL,'Y',1),(14,'2020-04-14','2020-06-15','sonnc','sonnc','TASK-KPI-20200414022023','Test tạo RACI có R,A cùng 1 user','<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px;\">Ngay sau đó, các cơ quan chức năng đã khử khuẩn khách sạn, cách ly tập&nbsp; trung 14 người tiếp xúc gần người đàn ông quốc tịch Anh, 3 nhân viên phục vụ được cách ly tại khách sạn, 31 khách lưu trú tại khách sạn này cũng được giám sát, cách ly. Đồng thời, cơ quan chức năng đã liên hệ với Hãng hàng không Vietnam Airlines để cách ly, lấy mẫu xét nghiệm đối với những trường hợp ngồi gần người này.</span><br></p>','ACTIVE','2020-04-14','2020-04-30',12,100,NULL,3,'1.1.1','PHAT_HIEN','TRUNG_BINH',5,NULL,'PROCESS',NULL,'Y',1),(15,'2020-05-06','2020-06-15','sonnc','sonnc','TASK-KPI-20200506061736','TASK - XU LY CAP NHAT TASK','<h3><font face=\"Times New Roman\">The standard Lorem Ipsum passage, used since the 1500</font></h3><p><font face=\"Times New Roman\">\"Lorem\r\n ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum.\"</font></p><h3><font face=\"Times New Roman\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</font></h3><p><font face=\"Times New Roman\">\"Sed\r\n ut perspiciatis unde omnis iste natus error sit voluptatem accusantium \r\ndoloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo \r\ninventore veritatis et quasi architecto beatae vitae dicta sunt \r\nexplicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut \r\nodit aut fugit, sed quia consequuntur magni dolores eos qui ratione \r\nvoluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?</font></p><h3><font face=\"Times New Roman\">1914 translation by H. Rackha</font></h3><p><font face=\"Times New Roman\">\"But I must explain to you how all this mistaken idea of denouncing \r\npleasure and praising pain was born and I will give you a complete \r\naccount of the system, and expound the actual teachings of the great \r\nexplorer of the truth, the master-builder of human happiness. No one \r\nrejects, dislikes, or avoids pleasure itself, because it is pleasure, \r\nbut because those who do not know how to pursue pleasure rationally \r\nencounter consequences that are extremely painful. Nor again is there \r\nanyone who loves or pursues or desires to obtain pain of itself, because\r\n it is pain, but because occasionally circumstances occur in which toil \r\nand pain can procure him some great pleasure. To take a trivial example,\r\n which of us ever undertakes laborious physical exercise, except to \r\nobtain some advantage from it? But who has any right to find fault with a\r\n man who chooses to enjoy a pleasure that has no annoying consequences, \r\nor one who avoids a pain that produces no resultant pleasure?\"</font></p>','ACTIVE','2020-05-06','2020-05-07',7,50,NULL,4,'1.2','MOI','CAO',5,NULL,'PROCESS',NULL,'Y',1),(16,'2020-05-16','2020-08-30','sonnc','sonnc','TASK-KPI-20200516063610','Tạo mới công việc ngày 16 tháng 05 năm 2020','<p>Mô tả thông tin công việc về hệ thống.</p><p>Tạo mới công việc.</p>','CLOSE','2020-05-16','2020-05-31',20,50,100,5,'2','BO_XUNG','CAO',5,NULL,'FINISH',NULL,'Y',1),(17,'2020-05-16','2020-08-29','sonnc','sonnc','TASK-KPI-20200516091544','Test tạo RACI có R,A cùng 1 user lần 2','<p>test lần 2</p>','ACTIVE','2020-05-16','2020-05-30',16,100,NULL,6,'2.1','BO_XUNG','CAO',5,NULL,'PROCESS',NULL,'Y',1),(18,'2020-05-16','2020-08-29','sonnc','sonnc','TASK-KPI-20200516091922','Test tạo RACI lần 1','<p>Test tạo raci</p>','ACTIVE','2020-05-16','2020-05-30',41,100,NULL,1,'1','MOI','CAO',5,NULL,'PROCESS',NULL,'Y',2),(20,'2020-06-15','2020-06-15','sonnc','sonnc','TASK-KPI - Tái tạo cấu trúc omnibus','Tái tạo cấu trúc omnibus','Tái tạo cấu trúc omnibus','ACTIVE','2020-06-15','2020-08-13',NULL,11,NULL,0,NULL,NULL,NULL,5,NULL,'PROCESS','Y','Y',1),(21,'2020-08-29','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200829114240','TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS','<p><span style=\"font-weight: bolder;\">TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</span></p><p>Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</p><p>Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</p><p>Các nhiệm vụ, module bao gồm:</p><p>1. Tổ chức họp PM quý 3 (theo chính task này)</p><p>1.1. Chuẩn bị các tài liệu về dự án của quý 3</p><p>1.2. Mời BQL SX FIS Bank tham gia</p><p>1.3. Phê duyệt nội dung họp</p><p>1.4. Lên lịch họp</p><p>1.5. Đặt lịch phòng họp</p><p>1.6. In tài liệu, thông kê cho từng thành viên</p><p>1.7. Thực hiện cuộc họp</p><p>1.8. Đánh giá sau phiên họp</p><p>1.9. Tạo biên bản thống nhất&nbsp;</p><p>1.10. Xin đóng dấu</p>','ACTIVE','2020-09-01','2020-09-05',56,100,NULL,1,'1','MOI','CAO',8,NULL,'PROCESS',NULL,'Y',1),(23,'2020-08-29','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200829115555','1.1. Chuẩn bị các tài liệu về dự án của quý 3','<p><b>TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</b></p><p>Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</p><p>Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</p><p>Các nhiệm vụ, module bao gồm:</p><p>1. Tổ chức họp PM quý 3 (theo chính task này)</p><p>1.1. Chuẩn bị các tài liệu về dự án của quý 3</p><p>1.2. Mời BQL SX FIS Bank tham gia</p><p>1.3. Phê duyệt nội dung họp</p><p>1.4. Lên lịch họp</p><p>1.5. Đặt lịch phòng họp</p><p>1.6. In tài liệu, thông kê cho từng thành viên</p><p>1.7. Thực hiện cuộc họp</p><p>1.8. Đánh giá sau phiên họp</p><p>1.9. Tạo biên bản thống nhất&nbsp;</p><p>1.10. Xin đóng dấu</p>','ACTIVE','2020-09-01','2020-09-02',21,12,NULL,2,'1.1','MOI','CAO',8,NULL,'PROCESS',NULL,'Y',1),(24,'2020-08-29','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200829115819','1.2. Mời BQL SX FIS Bank tham gia','<p>TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</p><p>Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</p><p>Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</p><p>Các nhiệm vụ, module bao gồm:</p><p>1. Tổ chức họp PM quý 3 (theo chính task này)</p><p>1.1. Chuẩn bị các tài liệu về dự án của quý 3</p><p>1.2. Mời BQL SX FIS Bank tham gia</p><p>1.3. Phê duyệt nội dung họp</p><p>1.4. Lên lịch họp</p><p>1.5. Đặt lịch phòng họp</p><p>1.6. In tài liệu, thông kê cho từng thành viên</p><p>1.7. Thực hiện cuộc họp</p><p>1.8. Đánh giá sau phiên họp</p><p>1.9. Tạo biên bản thống nhất&nbsp;</p><p>1.10. Xin đóng dấu</p>','ACTIVE','2020-09-02','2020-09-02',21,12,NULL,3,'1.2','MOI','CAO',8,NULL,'PROCESS',NULL,'Y',1),(25,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829121918','TEST TÍNH TOÁN','<p>SSSSSS</p>','ACTIVE','2020-08-29','2020-08-29',18,50,NULL,2,'1.1','MOI','THAP',5,NULL,'FINISH',NULL,'Y',2),(26,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829122007','Xử lý báo cáo','<p>SSS</p>','ACTIVE','2020-08-29','2020-08-29',18,50,NULL,3,'1.2','MOI','THAP',5,NULL,'PROCESS',NULL,'Y',2),(28,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829123812','Tạo cấu trúc Omnibus cho TASK','<p>SSS</p>','ACTIVE','2020-08-29','2020-08-29',42,100,NULL,1,'1','MOI','THAP',5,NULL,'PROCESS',NULL,'Y',3),(34,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829041144','Test tạo RACI có R,A cùng 1 user 1','<p>cccccc</p>','ACTIVE','2020-08-29','2020-08-29',28,50,NULL,2,'1.1','MOI','THAP',5,NULL,'PROCESS',NULL,'Y',3),(35,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829041439','sssssssssssssss','<p>cccccc</p>','ACTIVE','2020-08-29','2020-08-29',28,50,NULL,3,'1.2','MOI','THAP',5,NULL,'PROCESS',NULL,'Y',3),(37,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829045702','Xử lý báo cáo vvvvvvvvvvvvvvvvvvv','<p>eeeeee</p>','ACTIVE','2020-09-04','2020-09-05',43,100,NULL,1,'1','MOI','THAP',5,NULL,'PROCESS',NULL,'Y',4),(38,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829051913','Xử lý báo cáo bbbbbbbbbbbb','','ACTIVE','2020-08-29','2020-08-29',37,50,NULL,2,'1.1','MOI','THAP',5,NULL,'PROCESS',NULL,'Y',4),(39,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829052635','Test tạo RACI lần 1. test edit 111111111111','','ACTIVE','2020-08-29','2020-09-03',37,50,NULL,3,'1.2','MOI','THAP',5,NULL,'PROCESS',NULL,'Y',4),(40,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829052843','CRUD cho modul TASK qqqqqqqq','','ACTIVE','2020-08-29','2020-09-05',NULL,11,NULL,NULL,NULL,'MOI','THAP',5,NULL,'PROCESS',NULL,'N',NULL),(41,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI - Cấu trúc omnibus 2','Cấu trúc omnibus 2','Cấu trúc omnibus 2','ACTIVE','2020-08-29','2020-09-05',NULL,11,NULL,0,NULL,NULL,NULL,5,NULL,'PROCESS','Y','Y',2),(42,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI - Cấu trúc omnibus 3','Cấu trúc omnibus 3','Cấu trúc omnibus 3','ACTIVE','2020-09-20','2020-09-05',NULL,11,NULL,0,NULL,NULL,NULL,5,NULL,'PROCESS','Y','Y',3),(43,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI - Tái tạo cấu trúc omnibus 3','Tái tạo cấu trúc omnibus 3','Tái tạo cấu trúc omnibus 3','ACTIVE','2020-08-29','2020-09-05',NULL,11,NULL,0,NULL,NULL,NULL,5,NULL,'PROCESS','Y','Y',4),(44,'2020-08-29','2020-08-29','sonnc','sonnc','TASK-KPI-20200829063611','Tạo mới cv test status','','ACTIVE','2020-08-29','2020-09-05',NULL,11,NULL,NULL,NULL,'MOI','THAP',5,NULL,'PROCESS',NULL,'N',NULL),(46,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200830121134','1.3. Phê duyệt nội dung họp','<p><span style=\"font-size: 14px;\">TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</span></p><p><span style=\"font-size: 14px;\">Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</span></p><p><span style=\"font-size: 14px;\">Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</span></p><p><span style=\"font-size: 14px;\">Các nhiệm vụ, module bao gồm:</span></p><p><span style=\"font-size: 14px;\">1. Tổ chức họp PM quý 3 (theo chính task này)</span></p><p><span style=\"font-size: 14px;\">1.1. Chuẩn bị các tài liệu về dự án của quý 3</span></p><p><span style=\"font-size: 14px;\">1.2. Mời BQL SX FIS Bank tham gia</span></p><p><span style=\"font-size: 14px;\">1.3. Phê duyệt nội dung họp</span></p><p><span style=\"font-size: 14px;\">1.4. Lên lịch họp</span></p><p><span style=\"font-size: 14px;\">1.5. Đặt lịch phòng họp</span></p><p><span style=\"font-size: 14px;\">1.6. In tài liệu, thông kê cho từng thành viên</span></p><p><span style=\"font-size: 14px;\">1.7. Thực hiện cuộc họp</span></p><p><span style=\"font-size: 14px;\">1.8. Đánh giá sau phiên họp</span></p><p><span style=\"font-size: 14px;\">1.9. Tạo biên bản thống nhất&nbsp;</span></p><p><span style=\"font-size: 14px;\">1.10. Xin đóng dấu</span></p>','ACTIVE','2020-09-02','2020-09-02',21,12,NULL,4,'1.3','MOI','CAO',8,NULL,'PROCESS',NULL,'Y',1),(48,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200830121933','1.4. Lên lịch họp','<p><span style=\"font-size: 14px;\">TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</span></p><p><span style=\"font-size: 14px;\">Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</span></p><p><span style=\"font-size: 14px;\">Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</span></p><p><span style=\"font-size: 14px;\">Các nhiệm vụ, module bao gồm:</span></p><p><span style=\"font-size: 14px;\">1. Tổ chức họp PM quý 3 (theo chính task này)</span></p><p><span style=\"font-size: 14px;\">1.1. Chuẩn bị các tài liệu về dự án của quý 3</span></p><p><span style=\"font-size: 14px;\">1.2. Mời BQL SX FIS Bank tham gia</span></p><p><span style=\"font-size: 14px;\">1.3. Phê duyệt nội dung họp</span></p><p><span style=\"font-size: 14px;\">1.4. Lên lịch họp</span></p><p><span style=\"font-size: 14px;\">1.5. Đặt lịch phòng họp</span></p><p><span style=\"font-size: 14px;\">1.6. In tài liệu, thông kê cho từng thành viên</span></p><p><span style=\"font-size: 14px;\">1.7. Thực hiện cuộc họp</span></p><p><span style=\"font-size: 14px;\">1.8. Đánh giá sau phiên họp</span></p><p><span style=\"font-size: 14px;\">1.9. Tạo biên bản thống nhất&nbsp;</span></p><p><span style=\"font-size: 14px;\">1.10. Xin đóng dấu</span></p>','ACTIVE','2020-09-03','2020-09-03',21,12,NULL,5,'1.4','MOI','CAO',8,NULL,'PROCESS',NULL,'Y',1),(49,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200830122117','1.5. Đặt lịch phòng họp','<p><span style=\"font-size: 14px;\">TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</span></p><p><span style=\"font-size: 14px;\">Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</span></p><p><span style=\"font-size: 14px;\">Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</span></p><p><span style=\"font-size: 14px;\">Các nhiệm vụ, module bao gồm:</span></p><p><span style=\"font-size: 14px;\">1. Tổ chức họp PM quý 3 (theo chính task này)</span></p><p><span style=\"font-size: 14px;\">1.1. Chuẩn bị các tài liệu về dự án của quý 3</span></p><p><span style=\"font-size: 14px;\">1.2. Mời BQL SX FIS Bank tham gia</span></p><p><span style=\"font-size: 14px;\">1.3. Phê duyệt nội dung họp</span></p><p><span style=\"font-size: 14px;\">1.4. Lên lịch họp</span></p><p><span style=\"font-size: 14px;\">1.5. Đặt lịch phòng họp</span></p><p><span style=\"font-size: 14px;\">1.6. In tài liệu, thông kê cho từng thành viên</span></p><p><span style=\"font-size: 14px;\">1.7. Thực hiện cuộc họp</span></p><p><span style=\"font-size: 14px;\">1.8. Đánh giá sau phiên họp</span></p><p><span style=\"font-size: 14px;\">1.9. Tạo biên bản thống nhất&nbsp;</span></p><p><span style=\"font-size: 14px;\">1.10. Xin đóng dấu</span></p>','ACTIVE','2020-09-03','2020-09-03',21,12,NULL,6,'1.5','MOI','CAO',8,NULL,'PROCESS',NULL,'Y',1),(51,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200830122329','1.6. In tài liệu, thông kê cho từng thành viên','<p><span style=\"font-size: 14px;\">TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</span></p><p><span style=\"font-size: 14px;\">Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</span></p><p><span style=\"font-size: 14px;\">Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</span></p><p><span style=\"font-size: 14px;\">Các nhiệm vụ, module bao gồm:</span></p><p><span style=\"font-size: 14px;\">1. Tổ chức họp PM quý 3 (theo chính task này)</span></p><p><span style=\"font-size: 14px;\">1.1. Chuẩn bị các tài liệu về dự án của quý 3</span></p><p><span style=\"font-size: 14px;\">1.2. Mời BQL SX FIS Bank tham gia</span></p><p><span style=\"font-size: 14px;\">1.3. Phê duyệt nội dung họp</span></p><p><span style=\"font-size: 14px;\">1.4. Lên lịch họp</span></p><p><span style=\"font-size: 14px;\">1.5. Đặt lịch phòng họp</span></p><p><span style=\"font-size: 14px;\">1.6. In tài liệu, thông kê cho từng thành viên</span></p><p><span style=\"font-size: 14px;\">1.7. Thực hiện cuộc họp</span></p><p><span style=\"font-size: 14px;\">1.8. Đánh giá sau phiên họp</span></p><p><span style=\"font-size: 14px;\">1.9. Tạo biên bản thống nhất&nbsp;</span></p><p><span style=\"font-size: 14px;\">1.10. Xin đóng dấu</span></p>','ACTIVE','2020-09-02','2020-09-03',21,12,NULL,7,'1.6','MOI','TRUNG_BINH',8,NULL,'PROCESS',NULL,'Y',1),(53,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200830122541','1.7. Thực hiện cuộc họp','<p><span style=\"font-size: 14px;\">TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</span></p><p><span style=\"font-size: 14px;\">Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</span></p><p><span style=\"font-size: 14px;\">Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</span></p><p><span style=\"font-size: 14px;\">Các nhiệm vụ, module bao gồm:</span></p><p><span style=\"font-size: 14px;\">1. Tổ chức họp PM quý 3 (theo chính task này)</span></p><p><span style=\"font-size: 14px;\">1.1. Chuẩn bị các tài liệu về dự án của quý 3</span></p><p><span style=\"font-size: 14px;\">1.2. Mời BQL SX FIS Bank tham gia</span></p><p><span style=\"font-size: 14px;\">1.3. Phê duyệt nội dung họp</span></p><p><span style=\"font-size: 14px;\">1.4. Lên lịch họp</span></p><p><span style=\"font-size: 14px;\">1.5. Đặt lịch phòng họp</span></p><p><span style=\"font-size: 14px;\">1.6. In tài liệu, thông kê cho từng thành viên</span></p><p><span style=\"font-size: 14px;\">1.7. Thực hiện cuộc họp</span></p><p><span style=\"font-size: 14px;\">1.8. Đánh giá sau phiên họp</span></p><p><span style=\"font-size: 14px;\">1.9. Tạo biên bản thống nhất&nbsp;</span></p><p><span style=\"font-size: 14px;\">1.10. Xin đóng dấu</span></p>','ACTIVE','2020-09-04','2020-09-04',21,12,NULL,8,'1.7','MOI','CAO',8,NULL,'PROCESS',NULL,'Y',1),(54,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200830122801','1.8. Đánh giá sau phiên họp','<p><span style=\"font-size: 14px;\">TỔ CHỨC HỌP PM QUÝ 3 _ 2020, DỰ ÁN BIDV-CROMS</span></p><p><span style=\"font-size: 14px;\">Theo như biên bản thống nhất tại dự án BIDV-CROMS, ngày 24/06/2020. Ban QLSX dự án BIDV-CROMS tổ chức lịch họp PM quý 3 để xem xét các vấn đề tồn đọng cần được giải quyết và đánh giá các nhiệm vụ, chỉ tiêu của quý 3.</span></p><p><span style=\"font-size: 14px;\">Nội dung tổ chức được phân công theo từng module công việc, các thành viên có tên, nhiệm vụ được giao cần hoàn thành trước thời hạn để có thể tạo được buổi họp thành công nhất.</span></p><p><span style=\"font-size: 14px;\">Các nhiệm vụ, module bao gồm:</span></p><p><span style=\"font-size: 14px;\">1. Tổ chức họp PM quý 3 (theo chính task này)</span></p><p><span style=\"font-size: 14px;\">1.1. Chuẩn bị các tài liệu về dự án của quý 3</span></p><p><span style=\"font-size: 14px;\">1.2. Mời BQL SX FIS Bank tham gia</span></p><p><span style=\"font-size: 14px;\">1.3. Phê duyệt nội dung họp</span></p><p><span style=\"font-size: 14px;\">1.4. Lên lịch họp</span></p><p><span style=\"font-size: 14px;\">1.5. Đặt lịch phòng họp</span></p><p><span style=\"font-size: 14px;\">1.6. In tài liệu, thông kê cho từng thành viên</span></p><p><span style=\"font-size: 14px;\">1.7. Thực hiện cuộc họp</span></p><p><span style=\"font-size: 14px;\">1.8. Đánh giá sau phiên họp</span></p><p><span style=\"font-size: 14px;\">1.9. Tạo biên bản thống nhất&nbsp;</span></p><p><span style=\"font-size: 14px;\">1.10. Xin đóng dấu</span></p>','ACTIVE','2020-09-04','2020-09-04',21,12,NULL,9,'1.8','MOI','CAO',8,NULL,'PROCESS',NULL,'Y',1),(55,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200830123201','TÍNH LƯƠNG KHOÀN SẢN XUẤT QUÝ 3','<p>Tính lương khoán cho cán bộ nhân viên trực thuộc phòng ban BIDV-CROMS</p><p>Các thành viên có tên tham gia, thực hiện thống kê các chỉ số của nhóm mình.</p>','ACTIVE','2020-09-20','2020-09-30',NULL,20,NULL,NULL,NULL,'MOI','CAO',8,NULL,'PROCESS',NULL,'N',NULL),(56,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC - TỔ CHỨC HỌP PM QUÝ 3 NĂM 2020, DỰ ÁN BIDV-CROMS','TỔ CHỨC HỌP PM QUÝ 3 NĂM 2020, DỰ ÁN BIDV-CROMS','TỔ CHỨC HỌP PM QUÝ 3 NĂM 2020, DỰ ÁN BIDV-CROMS','ACTIVE','2020-09-01','2020-09-05',NULL,20,NULL,0,NULL,NULL,NULL,8,NULL,'PROCESS','Y','Y',1),(57,'2020-08-30','2020-08-30','quynd10','quynd10','CROMS-SMLC-20200830124246','ĐÁNH GIÁ TỔNG KẾT THÁNG 8_2020','<p>ĐÁNH GIÁ TỔNG KẾT THÁNG 8_2020</p><p>Các nội dung bao gồm:</p><p>- Các vấn đề tồn đọng</p><p>- Các vấn đề đã được giải quyết</p><p>- Các đề xuất nếu có</p>','ACTIVE','2020-08-31','2020-08-31',NULL,20,NULL,NULL,NULL,'MOI','CAO',8,NULL,'PROCESS',NULL,'N',NULL),(58,'2020-08-31','2020-08-31','sonnc','sonnc','TASK-KPI-20200831082310','Công việc cho module 1','<p>TEst kiểm thử</p>','ACTIVE','2020-08-31','2020-09-05',NULL,11,NULL,NULL,NULL,'MOI','THAP',5,NULL,'PROCESS',NULL,'N',NULL),(59,'2020-08-31','2020-08-31','sonnc','sonnc','TASK-KPI-20200831082816','Tạo công việc bên trong project','<p>test</p>','ACTIVE','2020-08-31','2020-08-31',NULL,11,NULL,NULL,NULL,'MOI','THAP',5,NULL,'PROCESS',NULL,'N',NULL),(60,'2020-08-31','2020-08-31','sonnc','sonnc','TASK-KPI-20200831082913','Tạo công việc bên ngoài project','<p>bfgdb</p>','ACTIVE','2020-08-31','2020-08-31',NULL,11,NULL,NULL,NULL,'MOI','THAP',5,NULL,'PROCESS',NULL,'N',NULL),(61,'2020-09-03','2020-09-03','quynd10','quynd10','CROMS-SMLC-20200903105434','Công văn số 543/V-QLKV ','CÔng văn gửi từ BIDV về vấn đề share facility','ACTIVE','2020-09-10','2020-09-10',NULL,20,NULL,NULL,NULL,'MOI','CAO',8,NULL,'PROCESS',NULL,'N',NULL),(62,'2020-09-03','2020-09-03','quynd10','quynd10','CROMS-SMLC-20200903110025','Kế hoạch triển khai và đổ dữ liệu T9/2020','<p class=\"MsoNormal\"><span style=\"font-family:&quot;Calibri Light&quot;,sans-serif\">Dear\r\nall,</span></p><p class=\"MsoNormal\"><span style=\"font-family: &quot;Calibri Light&quot;, sans-serif; font-size: 1rem;\">Theo kế\r\nhoạch cuối tuần này chúng ra sẽ đổ dữ liệu chính thức. Vì vậy, kế hoạch OT của\r\ndự án sẽ như sau:</span></p><p class=\"MsoNormal\"><span style=\"font-family: &quot;Calibri Light&quot;, sans-serif; font-size: 1rem;\">Thứ 7: 5/9/2020: Đội DM đi làm\r\n     để thực hiện phối hợp với IT BIDV đổ dữ liệu chính thức đợt 2 mở rộng</span></p><p class=\"MsoNormal\"><span style=\"font-family: &quot;Calibri Light&quot;, sans-serif; font-size: 1rem;\">Chủ nhật: 6/9/2020: Cả dự án đi\r\n     làm để hỗ trợ xử lý các vấn đề phát sinh khi thực hiện đổ dữ liệu đợt 2 mở\r\n     rộng</span></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\"><li class=\"MsoListParagraph\" style=\"margin-left:0in;mso-list:l0 level1 lfo1;\r\n     tab-stops:list .5in\"><o:p></o:p></li>\r\n</ol>','ACTIVE','2020-09-12','2020-09-12',NULL,20,NULL,NULL,NULL,'MOI','CAO',8,NULL,'PROCESS',NULL,'N',NULL);
/*!40000 ALTER TABLE `tk_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_task_comment`
--

DROP TABLE IF EXISTS `tk_task_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_task_comment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) DEFAULT NULL,
  `COMMENT` longtext,
  `TASK_ID` int NOT NULL,
  `COMMENT_STATUS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tk_task_comment_tk_task1_idx` (`TASK_ID`),
  CONSTRAINT `fk_tk_task_comment_tk_task1` FOREIGN KEY (`TASK_ID`) REFERENCES `tk_task` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_task_comment`
--

LOCK TABLES `tk_task_comment` WRITE;
/*!40000 ALTER TABLE `tk_task_comment` DISABLE KEYS */;
INSERT INTO `tk_task_comment` VALUES (1,'2020-04-11','2020-04-11','sonnc','sonnc','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Ngày 11/4, Trung tâm Kiểm soát bệnh tật tỉnh Hà Nam thông báo, đơn vị này đã nhận được kết quả xét nghiệm Covid-19 của 193 trường hợp có liên quan đến bệnh nhân 251 (64 tuổi, trú tại thôn 3 Ngô Khê, xã Bình Nghĩa, huyện Bình Lục, tỉnh Hà Nam).</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Trong số 193 kết quả xét nghiệm, 101 mẫu được thực hiện bởi Viện Vệ sinh dịch tễ Trung ương và 92 mẫu được thực hiện tại Đại học Y Hà Nội. Tất cả đều cho kết quả ban đầu âm tính với virus&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/dich-covid-19-c62e6058.html\" title=\"SARS-CoV-2\" style=\"line-height: 1.6; color: rgb(0, 0, 255);\">SARS-CoV-2</a>&nbsp;(virus gây dịch Covid-19).</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Hiện cơ quan chức năng tỉnh Hà Nam đã xác định được 175 trường hợp là F1 của bệnh nhân 251, trong đó có trên 60 nhân viên y tế; trên 560 người được xác định F2 (người tiếp xúc với F1).</p>',4,NULL),(2,'2020-04-12','2020-04-12','sonnc','sonnc','<p>- tạo task</p><p>- view</p><p>- cập nhật</p>',6,'ACTIVE'),(3,'2020-04-12','2020-04-12','sonnc','sonnc','<p>Tạo công việc<br></p>',7,'ACTIVE'),(4,'2020-04-14','2020-04-14','sonnc','sonnc','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Theo đó bệnh nhân 22 được Đà Nẵng phát hiện dương tính từ ngày 8-3, điều trị đến ngày 27-3 thì cho xuất viện sau 3 lần âm tính.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Sau đó, người này tiếp tục được cách ly 14 ngày tại khách sạn.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đến ngày 10-4, người đàn ông quốc tịch Anh đi máy bay từ Đà Nẵng vào TP.HCM.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Trong khi chờ đi tiếp sang Anh, người này nghỉ tại một khách sạn trên đường Hồng Hà, quận Tân Bình và được lấy mẫu xét nghiệm.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đến tối 12-3, Trung tâm kiểm soát bệnh tật TP.HCM xác định mẫu xét nghiệm của người này dương tính, tuy nhiên bệnh nhân này đã trở về Anh.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Ngay sau đó, các cơ quan chức năng đã khử khuẩn khách sạn, cách ly tập&nbsp; trung 14 người tiếp xúc gần người đàn ông quốc tịch Anh, 3 nhân viên phục vụ được cách ly tại khách sạn, 31 khách lưu trú tại khách sạn này cũng được giám sát, cách ly. Đồng thời, cơ quan chức năng đã liên hệ với Hãng hàng không Vietnam Airlines để cách ly, lấy mẫu xét nghiệm đối với những trường hợp ngồi gần người này.</p>',12,'ACTIVE'),(6,'2020-04-14','2020-04-14','sonnc','sonnc','<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px;\">Ngay sau đó, các cơ quan chức năng đã khử khuẩn khách sạn, cách ly tập&nbsp; trung 14 người tiếp xúc gần người đàn ông quốc tịch Anh, 3 nhân viên phục vụ được cách ly tại khách sạn, 31 khách lưu trú tại khách sạn này cũng được giám sát, cách ly. Đồng thời, cơ quan chức năng đã liên hệ với Hãng hàng không Vietnam Airlines để cách ly, lấy mẫu xét nghiệm đối với những trường hợp ngồi gần người này.</span><br></p>',14,'ACTIVE'),(7,'2020-05-06','2020-05-06','sonnc','sonnc','<p>Cap nhat thong tin task va xu ly cong viec<br></p>',15,'ACTIVE'),(8,'2020-05-16','2020-05-16','sonnc','sonnc','<p>Cap nhat thong tin task va xu ly cong viec<br></p>',16,'ACTIVE'),(9,'2020-05-16','2020-05-16','sonnc','sonnc','',17,'ACTIVE'),(10,'2020-05-16','2020-05-16','sonnc','sonnc','<p>Tạo mới RACI</p>',18,'ACTIVE'),(11,'2020-08-29','2020-08-29','quynd10','quynd10','<p>Hi chị Dung,</p><p>Em gửi chị tài liệu chuẩn bị phiên họp quý 3. Chị xem có gì cần bổ xung không nhé.</p><p>Slide, chị gửi lên đây cho em để em duyệt trước.</p><p>Em cảm ơn.</p>',21,'ACTIVE'),(12,'2020-08-29','2020-08-29','quynd10','quynd10','<p>Hi all,</p><p>Mọi người chuẩn bị tài liệu cho cuộc họp PM sắp tới nhé.</p><p>Thanks. QuyND10</p>',23,'ACTIVE'),(13,'2020-08-29','2020-08-29','quynd10','quynd10','<p>Hi chị Dung,</p><p>Chị lên danh sách giúp em nhé.</p><p>Em cảm ơn.</p>',24,'ACTIVE'),(14,'2020-08-29','2020-08-29','sonnc','sonnc','',25,'ACTIVE'),(15,'2020-08-29','2020-08-29','sonnc','sonnc','',26,'ACTIVE'),(16,'2020-08-29','2020-08-29','sonnc','sonnc','',28,'ACTIVE'),(17,'2020-08-29','2020-08-29','sonnc','sonnc','',34,'ACTIVE'),(18,'2020-08-29','2020-08-29','sonnc','sonnc','',35,'ACTIVE'),(19,'2020-08-29','2020-08-29','sonnc','sonnc','',37,'ACTIVE'),(20,'2020-08-29','2020-08-29','sonnc','sonnc','',38,'ACTIVE'),(21,'2020-08-29','2020-08-29','sonnc','sonnc','',39,'ACTIVE'),(22,'2020-08-29','2020-08-29','sonnc','sonnc','',40,'ACTIVE'),(23,'2020-08-29','2020-08-29','sonnc','sonnc','',44,'ACTIVE'),(24,'2020-08-30','2020-08-30','quynd10','quynd10','',46,'ACTIVE'),(25,'2020-08-30','2020-08-30','quynd10','quynd10','',48,'ACTIVE'),(26,'2020-08-30','2020-08-30','quynd10','quynd10','',49,'ACTIVE'),(27,'2020-08-30','2020-08-30','quynd10','quynd10','',51,'ACTIVE'),(28,'2020-08-30','2020-08-30','quynd10','quynd10','',53,'ACTIVE'),(29,'2020-08-30','2020-08-30','quynd10','quynd10','',54,'ACTIVE'),(30,'2020-08-30','2020-08-30','quynd10','quynd10','',55,'ACTIVE'),(31,'2020-08-30','2020-08-30','quynd10','quynd10','<p>Hi a/c/e,</p><p>Mn tổng hợp lại các vấn đề phát sinh và các yêu cầu trong tháng 9 tới nhé.</p><p>Thanks. QuyND10</p>',57,'ACTIVE'),(32,'2020-08-31','2020-08-31','sonnc','sonnc','<p>taok mới</p>',58,'ACTIVE'),(33,'2020-08-31','2020-08-31','sonnc','sonnc','',59,'ACTIVE'),(34,'2020-08-31','2020-08-31','sonnc','sonnc','',60,'ACTIVE'),(35,'2020-09-03','2020-09-03','quynd10','quynd10','<p>Dear a/c/e</p><p>A/C/E xem thông tin công văn vừa được gửi nhé.</p><p>Thanks. QuyND10</p>',61,'ACTIVE'),(36,'2020-09-03','2020-09-03','quynd10','quynd10','',62,'ACTIVE');
/*!40000 ALTER TABLE `tk_task_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_task_file_attachment`
--

DROP TABLE IF EXISTS `tk_task_file_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_task_file_attachment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) DEFAULT NULL,
  `FILE_LINK` longtext,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `TASK_ID` int NOT NULL,
  `file_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tk_task_file_attachment_tk_task1_idx` (`TASK_ID`),
  CONSTRAINT `fk_tk_task_file_attachment_tk_task1` FOREIGN KEY (`TASK_ID`) REFERENCES `tk_task` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_task_file_attachment`
--

LOCK TABLES `tk_task_file_attachment` WRITE;
/*!40000 ALTER TABLE `tk_task_file_attachment` DISABLE KEYS */;
INSERT INTO `tk_task_file_attachment` VALUES (1,'2020-04-11','2020-04-11','sonnc','sonnc','files/attachments/upload_6e2f7989_1ab3_40b2_afca_8add6925634f_00000020.tmp','upload_6e2f7989_1ab3_40b2_afca_8add6925634f_00000020.tmp',4,NULL),(2,'2020-04-11','2020-04-11','sonnc','sonnc','files/attachments/upload_6e2f7989_1ab3_40b2_afca_8add6925634f_00000021.tmp','upload_6e2f7989_1ab3_40b2_afca_8add6925634f_00000021.tmp',4,NULL),(3,'2020-04-11','2020-04-11','sonnc','sonnc','files/attachments/upload_6e2f7989_1ab3_40b2_afca_8add6925634f_00000022.tmp','upload_6e2f7989_1ab3_40b2_afca_8add6925634f_00000022.tmp',4,NULL),(4,'2020-04-12','2020-04-12','sonnc','sonnc','files/attachments/upload_0a77b689_2961_4477_9472_02707a09bc5a_00000061.tmp','upload_0a77b689_2961_4477_9472_02707a09bc5a_00000061.tmp',6,'ACTIVE'),(5,'2020-04-12','2020-04-12','sonnc','sonnc','files/attachments/upload_0a77b689_2961_4477_9472_02707a09bc5a_00000062.tmp','upload_0a77b689_2961_4477_9472_02707a09bc5a_00000062.tmp',6,'ACTIVE'),(6,'2020-04-12','2020-04-12','sonnc','sonnc','files/attachments/upload_0a77b689_2961_4477_9472_02707a09bc5a_00000063.tmp','upload_0a77b689_2961_4477_9472_02707a09bc5a_00000063.tmp',6,'ACTIVE'),(7,'2020-04-12','2020-04-12','sonnc','sonnc','files/attachments/upload_b1472996_f6a9_40ae_be64_695388ae3c1b_00000028.tmp','upload_b1472996_f6a9_40ae_be64_695388ae3c1b_00000028.tmp',7,'ACTIVE'),(8,'2020-04-12','2020-04-12','sonnc','sonnc','files/attachments/upload_b1472996_f6a9_40ae_be64_695388ae3c1b_00000029.tmp','upload_b1472996_f6a9_40ae_be64_695388ae3c1b_00000029.tmp',7,'ACTIVE'),(9,'2020-04-14','2020-04-14','sonnc','sonnc','files/attachments/vertical-nav-compact-menu.html','vertical-nav-compact-menu.html',12,'ACTIVE'),(10,'2020-04-14','2020-04-14','sonnc','sonnc','files/attachments/vector-maps-mapael-basic.html','upload_515adf4f_608b_4aa4_a840_e4a2d6e392bd_00000028.tmp',12,'ACTIVE'),(12,'2020-04-14','2020-04-14','sonnc','sonnc','files/attachments/vertical-nav-compact-menu.html','vertical-nav-compact-menu.html',14,'ACTIVE'),(13,'2020-04-14','2020-04-14','sonnc','sonnc','files/attachments/vector-maps-mapael-basic.html','vector-maps-mapael-basic.html',14,'ACTIVE'),(14,'2020-04-14','2020-04-14','sonnc','sonnc','files/attachments/vector-maps-mapael-advance.html','vector-maps-mapael-advance.html',14,'ACTIVE'),(15,'2020-05-06','2020-05-06','sonnc','sonnc','files/attachments/TEXT.txt','TEXT.txt',15,'ACTIVE'),(16,'2020-05-16','2020-05-16','sonnc','sonnc','files/attachments/bai_10_answering.docx','bai_10_answering.docx',16,'DELETE'),(17,'2020-08-09','2020-08-09','sonnc','sonnc','files/attachments/UseCase Diagram TK_Task.png','UseCase Diagram TK_Task.png',16,'ACTIVE'),(18,'2020-08-09','2020-08-09','sonnc','sonnc','files/attachments/BC 8 BO SUNG.XLS','BC 8 BO SUNG.XLS',16,'ACTIVE'),(19,'2020-08-09','2020-08-09','sonnc','sonnc','files/attachments/BC 14.xls','BC 14.xls',16,'ACTIVE'),(20,'2020-08-29','2020-08-29','quynd10','quynd10','files/attachments/Tài liệu chuẩn bị phiên họp quý 3.docx','Tài liệu chuẩn bị phiên họp quý 3.docx',21,'ACTIVE'),(21,'2020-08-29','2020-08-29','quynd10','quynd10','files/attachments/Tài liệu chuẩn bị phiên họp quý 3.docx','Tài liệu chuẩn bị phiên họp quý 3.docx',23,'ACTIVE'),(22,'2020-08-30','2020-08-30','quynd10','quynd10','files/attachments/Biên bản đánh giá.docx','Biên bản đánh giá.docx',57,'ACTIVE'),(23,'2020-08-31','2020-08-31','sonnc','sonnc','files/attachments/URD Report Offline 15.08.2020 (002)[34918].docx','URD Report Offline 15.08.2020 (002)[34918].docx',58,'ACTIVE'),(24,'2020-09-03','2020-09-03','quynd10','quynd10','files/attachments/2020-09-01_CROMS_CV ve Share fac-giao dien ABBYY.pdf','2020-09-01_CROMS_CV ve Share fac-giao dien ABBYY.pdf',61,'ACTIVE');
/*!40000 ALTER TABLE `tk_task_file_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_task_rating`
--

DROP TABLE IF EXISTS `tk_task_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_task_rating` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `USER_ID` int NOT NULL,
  `RATING_DATE` date DEFAULT NULL,
  `TRUOC_HAN` double DEFAULT NULL,
  `DUNG_HAN` double DEFAULT NULL,
  `TRE_HAN` double DEFAULT NULL,
  `KHONG_HOAN_THANH` double DEFAULT NULL,
  `HIEU_SUAT_CONG_VIEC` double DEFAULT NULL,
  `THAM_GIA` double DEFAULT NULL,
  `NGUOI_DANH_GIA` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_task_rating`
--

LOCK TABLES `tk_task_rating` WRITE;
/*!40000 ALTER TABLE `tk_task_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_task_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_user`
--

DROP TABLE IF EXISTS `tk_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date NOT NULL,
  `LAST_UPDATE_DATE` date NOT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USER_PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_ROLE` int NOT NULL,
  `USER_STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_LANGUAGE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_DEPARTMENT_NO` int NOT NULL,
  `USER_EMAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_NAME_UNIQUE` (`USER_NAME`),
  UNIQUE KEY `USER_EMAIL_UNIQUE` (`USER_EMAIL`),
  KEY `USER_ROLE_idx` (`USER_ROLE`),
  KEY `USER_EMPLOYEE_idx` (`USER_DEPARTMENT_NO`),
  CONSTRAINT `USER_DEPARTMENT` FOREIGN KEY (`USER_DEPARTMENT_NO`) REFERENCES `tk_department` (`ID`),
  CONSTRAINT `USER_ROLE` FOREIGN KEY (`USER_ROLE`) REFERENCES `tk_role` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_user`
--

LOCK TABLES `tk_user` WRITE;
/*!40000 ALTER TABLE `tk_user` DISABLE KEYS */;
INSERT INTO `tk_user` VALUES (3,'2020-03-28','2020-03-28','admin','admin','sonnc','123456789',2,'ACTIVE','vi',2,'sonnc@fpt.com.vn'),(4,'2020-03-28','2020-03-28','admin','admin','sonnc_01','123456789',3,'ACTIVE','vi',2,'sonnc_01@fpt.com.vn'),(5,'2020-03-28','2020-03-28','admin','admin','sonnc_02','123456789',2,'ACTIVE','vi',2,'sonnc_02@fpt.com.vn'),(6,'2020-03-28','2020-03-28','admin','admin','sonnc_03','123456789',2,'ACTIVE','vi',2,'sonnc_03@fpt.com.vn'),(700,'2020-03-28','2020-03-28','admin','admin','admin_04','123456789',4,'ACTIVE','vi',3,'admin_04@fpt.com.vn'),(708,'2020-03-28','2020-03-28','admin','admin','dungvt','password1',2,'ACTIVE','VI',6,'dungvt@fpt.com.vn'),(709,'2020-03-28','2020-03-28','admin','admin','lanhp','password1',3,'ACTIVE','VI',6,'lanhp@fpt.com.vn'),(710,'2020-03-28','2020-03-28','admin','admin','hailt21','password1',3,'ACTIVE','VI',6,'hailt21@fpt.com.vn'),(711,'2020-03-28','2020-03-28','admin','admin','hienlv2','password1',3,'ACTIVE','VI',6,'HienLV2@fpt.com.vn'),(712,'2020-03-28','2020-03-28','admin','admin','tultc2','password1',3,'ACTIVE','VI',6,'tultc2@fpt.com.vn'),(713,'2020-03-28','2020-03-28','admin','admin','cuongld16','password1',3,'ACTIVE','VI',6,'CuongLD16@fpt.com.vn'),(714,'2020-03-28','2020-03-28','admin','admin','nguyetna4','password1',3,'ACTIVE','VI',6,'nguyetna4@fpt.com.vn'),(715,'2020-03-28','2020-03-28','admin','admin','nhanptt7','password1',3,'ACTIVE','VI',6,'nhanptt7@fpt.com.vn'),(716,'2020-03-28','2020-03-28','admin','admin','hungnk13','password1',3,'ACTIVE','VI',6,'HungNK13@fpt.com.vn'),(717,'2020-03-28','2020-03-28','admin','admin','linhha2','password1',3,'ACTIVE','VI',6,'LinhHA2@fpt.com.vn'),(718,'2020-03-28','2020-03-28','admin','admin','anhht52','password1',3,'ACTIVE','VI',6,'AnhHT52@fpt.com.vn'),(719,'2020-03-28','2020-03-28','admin','admin','minhnq17','password1',3,'ACTIVE','VI',6,'MinhNQ17@fpt.com.vn'),(720,'2020-03-28','2020-03-28','admin','admin','quynd10','password1',2,'ACTIVE','VI',6,'QuyND10@fpt.com.vn'),(721,'2020-03-28','2020-03-28','admin','admin','hoanglm21','password1',3,'ACTIVE','VI',6,'HoangLM21@fpt.com.vn'),(722,'2020-03-28','2020-03-28','admin','admin','tuanns3','password1',3,'ACTIVE','VI',6,'TuanNS3@fpt.com.vn'),(723,'2020-03-28','2020-03-28','admin','admin','huonglq','password1',3,'ACTIVE','VI',6,'HuongLQ@fpt.com.vn'),(724,'2020-03-28','2020-03-28','admin','admin','hangttt33','password1',3,'ACTIVE','VI',6,'HangTTT33@fpt.com.vn'),(725,'2020-03-28','2020-03-28','admin','admin','thomtth2','password1',3,'ACTIVE','VI',6,'ThomTTH2@fpt.com.vn'),(726,'2020-03-28','2020-03-28','admin','admin','nghiadp','password1',3,'ACTIVE','VI',6,'NghiaDP@fpt.com.vn'),(727,'2020-03-28','2020-03-28','admin','admin','linhpt31','password1',3,'ACTIVE','VI',6,'linhpt31@fpt.com.vn'),(728,'2020-03-28','2020-03-28','admin','admin','binhmv','password1',3,'ACTIVE','VI',6,'BinhMV@fpt.com.vn'),(729,'2020-03-28','2020-03-28','admin','admin','chamnm','password1',3,'ACTIVE','VI',6,'ChamNM@fpt.com.vn'),(730,'2020-03-28','2020-03-28','admin','admin','hoahv7','password1',3,'ACTIVE','VI',6,'HoaHV7@fpt.com.vn'),(731,'2020-03-28','2020-03-28','admin','admin','dainv','password1',3,'ACTIVE','VI',6,'DaiNV@fpt.com.vn'),(732,'2020-03-28','2020-03-28','admin','admin','hungna6','password1',3,'ACTIVE','VI',6,'HungNA6@fpt.com.vn'),(733,'2020-03-28','2020-03-28','admin','admin','luonghv','password1',3,'ACTIVE','VI',6,'luonghv@fpt.com.vn'),(734,'2020-03-28','2020-03-28','admin','admin','sonnc3','password1',3,'ACTIVE','VI',6,'SonNC3@fpt.com.vn'),(735,'2020-03-28','2020-03-28','admin','admin','vietlq6','password1',3,'ACTIVE','VI',6,'VietLQ6@fpt.com.vn'),(736,'2020-03-28','2020-03-28','admin','admin','tungnt2','password1',5,'ACTIVE','VI',6,'TungNT2@fpt.com.vn'),(737,'2020-03-28','2020-03-28','admin','admin','giangvth','password1',5,'ACTIVE','VI',6,'GiangVTH@soict.hust.edu.vn');
/*!40000 ALTER TABLE `tk_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_user_detail`
--

DROP TABLE IF EXISTS `tk_user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_user_detail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_DATE_OF_BIRTH` date NOT NULL,
  `USER_GENDER` bit(1) NOT NULL,
  `USER_PHONE` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_ADDRESS` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_DEGREE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'BẰNG CẤP',
  `USER_JOB` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AVARTA` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_OTHERS` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID_idx` (`USER_ID`),
  CONSTRAINT `USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tk_user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_user_detail`
--

LOCK TABLES `tk_user_detail` WRITE;
/*!40000 ALTER TABLE `tk_user_detail` DISABLE KEYS */;
INSERT INTO `tk_user_detail` VALUES (10,'2020-04-02','2020-06-29','sonnc','admin','Nguyễn Công Sơn','2020-04-04',_binary '\0','0358346836','Đại học Bách Khoa Hà Nội - Hai Bà Trưng - Hà Nội','Kỹ sư','Lập trình hệ thống',NULL,'Không phải chỉ có mỗi cntt, mà quan sát gần đây của cá nhân tôi, thì thấy, 9X nửa sau cũng vậy, ảo tưởng rất lớn về năng lực và sức mạnh cá nhân, mong muốn ra trường sẽ làm cái gì đó to tát, thu nhập cực khủngKhông phải chỉ có mỗi cntt, mà quan sát gần đây của cá nhân tôi, thì thấy, 9X nửa sau cũng vậy, ảo tưởng rất lớn về năng lực và sức mạnh cá nhân, mong muốn ra trường sẽ làm cái gì đó to tát, thu nhập cực khủngKhông phải chỉ có mỗi cntt, mà quan sát gần đây của cá nhân tôi, thì thấy, 9X nửa sau cũng vậy, ảo tưởng rất lớn về năng lực và sức mạnh cá nhân, mong muốn ra trường sẽ làm cái gì đó to tát, thu nhập cực khủng',3),(11,'2020-04-02','2020-04-02','sonnc','sonnc','Nguyễn văn A','2020-04-04',_binary '','0358346836','Đại học Bách Khoa Hà Nội - Hai Bà Trưng - Hà Nội','Kỹ sư','Lập trình hệ thống',NULL,'Làm gì có thông tin nào khác đâu cơ chứLàm gì có thông tin nào khác đâu cơ chứ',4),(12,'2020-04-02','2020-04-02','sonnc','sonnc','Nguyễn THị ','2020-04-04',_binary '','0358346836','Đại học Bách Khoa Hà Nội - Hai Bà Trưng - Hà Nội','Kỹ sư','Lập trình hệ thống',NULL,'Làm gì có thông tin nào khác đâu cơ chứ',5),(13,'2020-04-02','2020-04-02','sonnc','sonnc','Nguyễn Hồng C','2020-04-04',_binary '','0358346836','Đại học Bách Khoa Hà Nội - Hai Bà Trưng - Hà Nội','Kỹ sư','Lập trình hệ thống',NULL,'Làm gì có thông tin nào khác đâu cơ chứ',700),(16,'2020-07-28','2020-07-28','admin','admin','Vũ Thùy Dung','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Sub- Quản trị dự án',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',708),(17,'2020-07-28','2020-07-28','admin','admin','Hoa Phong Lan','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phân tích nghiệp vụ',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',709),(18,'2020-07-28','2020-07-28','admin','admin','Lương Thị Hải','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên kiểm thử phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',710),(19,'2020-07-28','2020-07-28','admin','admin','Lê Văn Hiên','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Sub- Quản trị dự án',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',711),(20,'2020-07-28','2020-07-28','admin','admin','Lê Thị Cẩm Tú','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',712),(21,'2020-07-28','2020-07-28','admin','admin','Lê Đình Cường','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',713),(22,'2020-07-28','2020-07-28','admin','admin','Nguyễn Ánh Nguyệt','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',714),(23,'2020-07-28','2020-07-28','admin','admin','Phạm Thị Thanh Nhàn','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên kiểm thử phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',715),(24,'2020-07-28','2020-07-28','admin','admin','Nguyễn Kiều Hưng','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',716),(25,'2020-07-28','2020-07-28','admin','admin','Hoàng Ái Linh','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',717),(26,'2020-07-28','2020-07-28','admin','admin','Hoàng Tuấn Anh','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',718),(27,'2020-07-28','2020-07-28','admin','admin','Nguyễn Quang Minh','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',719),(28,'2020-07-28','2020-07-28','admin','admin','Nhâm Dương Quý','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Quản trị dự án',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',720),(29,'2020-07-28','2020-07-28','admin','admin','Lê Mạnh Hoàng','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',721),(30,'2020-07-28','2020-07-28','admin','admin','Nguyễn Sĩ Tuấn','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',722),(31,'2020-07-28','2020-07-28','admin','admin','Lê Quỳnh Hương','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên kiểm thử phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',723),(32,'2020-07-28','2020-07-28','admin','admin','Trần Thị Thu Hằng','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên kiểm thử phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',724),(33,'2020-07-28','2020-07-28','admin','admin','Trần Thị Hồng Thơm','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên kiểm thử phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',725),(34,'2020-07-28','2020-07-28','admin','admin','Đặng Phúc Nghĩa','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',726),(35,'2020-07-28','2020-07-28','admin','admin','Phạm Thùy Linh','1900-01-01',_binary '\0','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',727),(36,'2020-07-28','2020-07-28','admin','admin','Mai Văn Bình','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',728),(37,'2020-07-28','2020-07-28','admin','admin','Nguyễn Mạnh Chàm','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',729),(38,'2020-07-28','2020-07-28','admin','admin','Hoàng Văn Hòa','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',730),(39,'2020-07-28','2020-07-28','admin','admin','Nguyễn Viết Đại','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',731),(40,'2020-07-28','2020-07-28','admin','admin','Nguyễn An Hưng','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',732),(41,'2020-07-28','2020-07-28','admin','admin','Hoàng Văn Lương','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',733),(42,'2020-07-28','2020-07-28','admin','admin','Nguyễn Công Sơn','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',734),(43,'2020-07-28','2020-07-28','admin','admin','Lê Quang Việt','1900-01-01',_binary '','0123456789','773 Hồng Hà - Chương Dương Độ - Hoàn Kiếm - Hà Nội','Kỹ sư','Nhân viên phát triển phần mềm',NULL,'Nhân viên thuộc dự án BIDV-CROMS. Công ty Hệ thống thông tin  FPT - FIS-Bank - FIS-BNK',735),(44,'2020-07-28','2020-07-28','admin','admin','Nguyễn Thanh Tùng','1900-01-01',_binary '','0123456789','22 - KeangNam - Nam Từ Liêm - Hà Nội','Thạc Sỹ','Ban Giám Đốc',NULL,'Nhân viên trực thuộc ban Giám Đốc',736),(45,'2020-07-28','2020-07-28','admin','admin','Vũ Thị Hương Giang','1900-01-01',_binary '\0','0123456789','Đại học Bách Khoa Hà Nội','Tiến sỹ','Ban Giám Đốc',NULL,'Nhân viên trực thuộc ban Giám Đốc',737);
/*!40000 ALTER TABLE `tk_user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_user_project`
--

DROP TABLE IF EXISTS `tk_user_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_user_project` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `CREATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int NOT NULL,
  `PROJECT_ID` int NOT NULL,
  `STATUS` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID_idx` (`USER_ID`),
  KEY `PROJECT_ID_idx` (`PROJECT_ID`),
  CONSTRAINT `USER_ID_UG` FOREIGN KEY (`USER_ID`) REFERENCES `tk_user` (`ID`),
  CONSTRAINT `USER_PROJECT` FOREIGN KEY (`PROJECT_ID`) REFERENCES `tk_project` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_user_project`
--

LOCK TABLES `tk_user_project` WRITE;
/*!40000 ALTER TABLE `tk_user_project` DISABLE KEYS */;
INSERT INTO `tk_user_project` VALUES (1,'2020-04-06','2020-04-06','sonnc','sonnc',3,3,'ACTIVE'),(2,'2020-04-06','2020-04-06','sonnc','sonnc',4,3,'ACTIVE'),(3,'2020-04-06','2020-04-06','sonnc','sonnc',5,3,'ACTIVE'),(4,'2020-04-06','2020-04-06','sonnc','sonnc',700,3,'ACTIVE'),(5,'2020-04-06','2020-04-06','sonnc','sonnc',3,4,'ACTIVE'),(6,'2020-04-06','2020-04-06','sonnc','sonnc',4,4,'ACTIVE'),(7,'2020-04-06','2020-04-06','sonnc','sonnc',700,4,'ACTIVE'),(8,'2020-04-12','2020-04-12','sonnc','sonnc',3,5,'ACTIVE'),(9,'2020-04-12','2020-04-12','sonnc','sonnc',4,5,'ACTIVE'),(10,'2020-04-12','2020-04-12','sonnc','sonnc',5,5,'ACTIVE'),(11,'2020-04-12','2020-04-12','sonnc','sonnc',700,5,'ACTIVE'),(12,'2020-08-15','2020-08-15','sonnc','sonnc',3,7,'ACTIVE'),(13,'2020-08-15','2020-08-15','sonnc','sonnc',4,7,'ACTIVE'),(14,'2020-08-15','2020-08-15','sonnc','sonnc',5,7,'ACTIVE'),(15,'2020-08-15','2020-08-15','quynd10','quynd10',708,8,'ACTIVE'),(16,'2020-08-15','2020-08-15','quynd10','quynd10',709,8,'ACTIVE'),(17,'2020-08-15','2020-08-15','quynd10','quynd10',710,8,'ACTIVE'),(18,'2020-08-15','2020-08-15','quynd10','quynd10',711,8,'ACTIVE'),(19,'2020-08-15','2020-08-15','quynd10','quynd10',712,8,'ACTIVE'),(20,'2020-08-15','2020-08-15','quynd10','quynd10',713,8,'ACTIVE'),(21,'2020-08-15','2020-08-15','quynd10','quynd10',714,8,'ACTIVE'),(22,'2020-08-15','2020-08-15','quynd10','quynd10',715,8,'ACTIVE'),(23,'2020-08-15','2020-08-15','quynd10','quynd10',716,8,'ACTIVE'),(24,'2020-08-15','2020-08-15','quynd10','quynd10',717,8,'ACTIVE'),(25,'2020-08-15','2020-08-15','quynd10','quynd10',718,8,'ACTIVE'),(26,'2020-08-15','2020-08-15','quynd10','quynd10',719,8,'ACTIVE'),(27,'2020-08-15','2020-08-15','quynd10','quynd10',720,8,'ACTIVE'),(28,'2020-08-15','2020-08-15','quynd10','quynd10',721,8,'ACTIVE'),(29,'2020-08-15','2020-08-15','quynd10','quynd10',722,8,'ACTIVE'),(30,'2020-08-15','2020-08-15','quynd10','quynd10',723,8,'ACTIVE'),(31,'2020-08-15','2020-08-15','quynd10','quynd10',724,8,'ACTIVE'),(32,'2020-08-15','2020-08-15','quynd10','quynd10',725,8,'ACTIVE'),(33,'2020-08-15','2020-08-15','quynd10','quynd10',726,8,'ACTIVE'),(34,'2020-08-15','2020-08-15','quynd10','quynd10',727,8,'ACTIVE'),(35,'2020-08-15','2020-08-15','quynd10','quynd10',728,8,'ACTIVE'),(36,'2020-08-15','2020-08-15','quynd10','quynd10',729,8,'ACTIVE'),(37,'2020-08-15','2020-08-15','quynd10','quynd10',730,8,'ACTIVE'),(38,'2020-08-15','2020-08-15','quynd10','quynd10',731,8,'ACTIVE'),(39,'2020-08-15','2020-08-15','quynd10','quynd10',732,8,'ACTIVE'),(40,'2020-08-15','2020-08-15','quynd10','quynd10',733,8,'ACTIVE'),(41,'2020-08-15','2020-08-15','quynd10','quynd10',734,8,'ACTIVE'),(42,'2020-08-15','2020-08-15','quynd10','quynd10',735,8,'ACTIVE'),(43,'2020-08-30','2020-08-30','quynd10','quynd10',708,9,'ACTIVE'),(44,'2020-08-30','2020-08-30','quynd10','quynd10',709,9,'ACTIVE'),(45,'2020-08-30','2020-08-30','quynd10','quynd10',710,9,'ACTIVE'),(46,'2020-08-30','2020-08-30','quynd10','quynd10',711,9,'ACTIVE'),(47,'2020-08-30','2020-08-30','quynd10','quynd10',712,9,'ACTIVE'),(48,'2020-08-30','2020-08-30','quynd10','quynd10',713,9,'ACTIVE'),(49,'2020-08-30','2020-08-30','quynd10','quynd10',714,9,'ACTIVE'),(50,'2020-08-30','2020-08-30','quynd10','quynd10',715,9,'ACTIVE'),(51,'2020-08-30','2020-08-30','quynd10','quynd10',716,9,'ACTIVE'),(52,'2020-08-30','2020-08-30','quynd10','quynd10',717,9,'ACTIVE'),(53,'2020-08-30','2020-08-30','quynd10','quynd10',718,9,'ACTIVE'),(54,'2020-08-30','2020-08-30','quynd10','quynd10',719,9,'ACTIVE'),(55,'2020-08-30','2020-08-30','quynd10','quynd10',720,9,'ACTIVE'),(56,'2020-08-30','2020-08-30','quynd10','quynd10',721,9,'ACTIVE'),(57,'2020-08-30','2020-08-30','quynd10','quynd10',722,9,'ACTIVE'),(58,'2020-08-30','2020-08-30','quynd10','quynd10',723,9,'ACTIVE'),(59,'2020-08-30','2020-08-30','quynd10','quynd10',724,9,'ACTIVE'),(60,'2020-08-30','2020-08-30','quynd10','quynd10',725,9,'ACTIVE'),(61,'2020-08-30','2020-08-30','quynd10','quynd10',726,9,'ACTIVE'),(62,'2020-08-30','2020-08-30','quynd10','quynd10',727,9,'ACTIVE'),(63,'2020-08-30','2020-08-30','quynd10','quynd10',728,9,'ACTIVE'),(64,'2020-08-30','2020-08-30','quynd10','quynd10',729,9,'ACTIVE'),(65,'2020-08-30','2020-08-30','quynd10','quynd10',730,9,'ACTIVE'),(66,'2020-08-30','2020-08-30','quynd10','quynd10',731,9,'ACTIVE'),(67,'2020-08-30','2020-08-30','quynd10','quynd10',732,9,'ACTIVE'),(68,'2020-08-30','2020-08-30','quynd10','quynd10',733,9,'ACTIVE'),(69,'2020-08-30','2020-08-30','quynd10','quynd10',734,9,'ACTIVE'),(70,'2020-08-30','2020-08-30','quynd10','quynd10',735,9,'ACTIVE'),(71,'2020-08-30','2020-08-30','quynd10','quynd10',736,9,'ACTIVE'),(72,'2020-08-30','2020-08-30','quynd10','quynd10',736,8,'ACTIVE');
/*!40000 ALTER TABLE `tk_user_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-26 18:24:46
