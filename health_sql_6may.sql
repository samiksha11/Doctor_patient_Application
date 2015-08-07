CREATE DATABASE  IF NOT EXISTS `health_care_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `health_care_db`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: health_care_db
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_id` int(11) DEFAULT NULL,
  `Doctors_id` int(11) DEFAULT NULL,
  `appointment_date_time` datetime DEFAULT NULL,
  `schedule_time` datetime DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `Prefered_Contact` varchar(255) DEFAULT NULL,
  `Prefered_Address` varchar(255) DEFAULT NULL,
  `appointment_reason` text,
  `appointment_relation` enum('personal','relative') DEFAULT NULL,
  `other_patient_name` varchar(255) DEFAULT NULL,
  `Relative_email` varchar(255) DEFAULT NULL,
  `relative_insurance` varchar(255) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `pending_status` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `fk__appointment__Patient` (`Patient_id`),
  KEY `fk__appointment__Doctors` (`Doctors_id`),
  KEY `relation_id` (`relation_id`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`relation_id`) REFERENCES `relation` (`relation_id`),
  CONSTRAINT `fk__appointment__Patient` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`Patient_id`),
  CONSTRAINT `fk__Prescription_Doctors` FOREIGN KEY (`Doctors_id`) REFERENCES `doctors` (`Doctors_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (2,13,16,'0000-00-00 00:00:00','2015-02-02 09:31:52','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,99,1,'0000-00-00 00:00:00',NULL,'2015-02-02 09:31:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,99,42,'0000-00-00 00:00:00',NULL,'2015-02-02 09:32:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,99,42,'0000-00-00 00:00:00',NULL,'2015-02-02 09:32:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,99,42,'0000-00-00 00:00:00',NULL,'2015-02-02 10:00:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,99,42,'2015-02-02 15:11:00',NULL,'2015-02-02 10:41:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,100,1,'2015-02-02 17:04:00',NULL,'2015-02-02 12:34:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,100,1,'2015-02-02 17:04:00',NULL,'2015-02-02 12:36:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,100,1,'2015-02-02 17:04:00',NULL,'2015-02-02 12:37:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,100,1,'2015-02-02 17:04:00',NULL,'2015-02-02 12:38:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,100,1,'2015-02-02 17:04:00',NULL,'2015-02-02 13:01:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:06:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:08:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:11:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:14:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:31:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:31:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:33:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:33:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:34:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:38:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:39:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:40:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:41:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:41:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:43:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:44:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,100,1,'2015-02-02 17:35:00',NULL,'2015-02-02 13:46:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,100,1,'2015-02-03 13:22:00',NULL,'2015-02-03 08:53:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,100,52,'2015-02-03 15:08:00',NULL,'2015-02-03 10:40:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,100,42,'2015-02-03 15:19:00',NULL,'2015-02-03 10:49:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,100,42,'2015-02-03 15:19:00',NULL,'2015-02-03 10:50:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,100,42,'2015-02-03 15:19:00',NULL,'2015-02-03 10:50:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,100,42,'2015-02-03 15:19:00',NULL,'2015-02-03 10:50:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,100,42,'2015-02-03 15:20:00',NULL,'2015-02-03 10:50:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,100,42,'2015-02-03 15:20:00',NULL,'2015-02-03 10:51:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,100,1,'2015-02-03 15:22:00',NULL,'2015-02-03 10:52:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,100,1,'2015-02-03 15:23:00',NULL,'2015-02-03 10:53:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,100,52,'2015-02-03 16:16:00',NULL,'2015-02-03 11:59:46',NULL,NULL,NULL,'personal',NULL,NULL,NULL,NULL,NULL),(50,100,47,'2015-02-03 16:52:00',NULL,'2015-02-03 12:22:47',NULL,NULL,NULL,'relative','mike',NULL,NULL,1,NULL),(51,100,2,'2015-02-03 16:53:00','1970-01-01 00:00:00','2015-02-03 12:24:04',NULL,NULL,NULL,'relative','mike',NULL,NULL,3,NULL),(52,100,2,'2015-02-03 16:53:00','1970-01-01 00:00:00','2015-02-03 12:41:53',NULL,NULL,NULL,'relative','mike',NULL,NULL,3,NULL),(53,100,1,'2015-02-04 16:13:00',NULL,'2015-02-04 11:45:17',NULL,NULL,NULL,'personal',NULL,NULL,NULL,NULL,NULL),(54,100,1,'2015-02-04 16:13:00',NULL,'2015-02-04 11:46:28',NULL,NULL,NULL,'personal',NULL,NULL,NULL,NULL,NULL),(55,100,42,'2015-02-23 13:12:00',NULL,'2015-02-23 08:42:57',NULL,NULL,NULL,'relative','michel','michel@fake.com',NULL,2,NULL),(56,100,1,'2015-02-23 13:32:00',NULL,'2015-02-23 09:02:52',NULL,NULL,NULL,'relative','nidhi','nidhi@fake.com',NULL,3,NULL),(57,100,43,'2014-11-26 03:22:00',NULL,'2015-02-25 22:53:03',NULL,NULL,NULL,'personal',NULL,NULL,NULL,NULL,NULL),(58,100,1,'2014-02-26 04:23:00',NULL,'2015-02-25 23:54:19',NULL,NULL,NULL,'personal',NULL,NULL,NULL,NULL,NULL),(62,100,50,'2015-01-26 08:57:00',NULL,'2015-02-26 04:28:16',NULL,NULL,NULL,'personal',NULL,NULL,NULL,NULL,NULL),(65,NULL,2,NULL,'2015-02-26 09:06:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,NULL,2,NULL,'2015-02-26 09:06:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,100,42,'2015-02-27 07:05:00',NULL,'2015-02-27 02:35:43',NULL,NULL,NULL,'relative','mmm','mnjnk',NULL,2,NULL),(69,100,42,'2014-02-27 07:06:00',NULL,'2015-02-27 02:37:18',NULL,NULL,NULL,'relative','mk','kmml',NULL,1,NULL),(70,100,42,'2014-02-27 07:06:00',NULL,'2015-02-27 09:04:26',NULL,NULL,NULL,'relative','mk','kmml',NULL,1,NULL),(71,100,50,'2014-02-28 01:50:00',NULL,'2015-02-27 21:21:12',NULL,NULL,NULL,'personal',NULL,NULL,NULL,NULL,NULL),(72,100,2,'2020-03-02 09:11:00',NULL,'2015-03-02 04:42:34','756','dhgfdsbfsndm',NULL,'relative','Hema','hema@fake.com',NULL,1,NULL),(73,100,2,'2015-03-02 10:09:00',NULL,'2015-03-02 05:40:05',NULL,NULL,NULL,'relative','nicy','nicy@fake.com','1,2,3',4,NULL),(74,100,1,'2015-03-02 10:23:00',NULL,'2015-03-02 05:54:24',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1,2,3',1,NULL),(75,100,1,'2015-03-02 10:23:00',NULL,'2015-03-02 06:04:26',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1,2,3',1,NULL),(76,100,1,'2015-03-02 10:23:00',NULL,'2015-03-02 06:06:05',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1,2,3',1,NULL),(77,100,1,'2015-03-02 10:23:00',NULL,'2015-03-02 06:08:49',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1,2,3',1,NULL),(78,100,1,'2015-03-02 10:23:00',NULL,'2015-03-02 06:12:41',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1,2,3',1,NULL),(79,100,1,'2015-03-02 10:23:00',NULL,'2015-03-02 06:13:12',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1,2,3',1,NULL),(80,100,2,'2015-03-02 10:23:00','1970-01-01 00:00:00','2015-03-02 06:14:52',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1',1,NULL),(81,100,2,'2015-03-02 10:23:00','1970-01-01 00:00:00','2015-03-02 06:16:05',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1',1,'1'),(82,100,2,'2015-03-02 10:23:00','1970-01-01 00:00:00','2015-03-02 06:16:50',NULL,NULL,NULL,'relative','demmo123','demmo123@fake.com','1',1,NULL),(83,100,2,'2015-03-09 04:24:00',NULL,'2015-03-08 23:54:47','1','herndon',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(84,100,41,'2015-03-13 03:55:00',NULL,'2015-03-12 23:26:22','456','fresno',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(85,100,2,'2015-02-13 05:07:00','1970-01-01 00:00:00','2015-03-13 00:38:49','23456','fresno',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(86,100,47,'2015-02-13 05:07:00',NULL,'2015-03-13 00:40:19','23456','fresno',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(87,100,82,'2014-03-13 05:16:00',NULL,'2015-03-13 00:46:39','0','dnfnmsa',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(88,100,82,'2014-03-13 05:16:00',NULL,'2015-03-13 00:49:40','0','dnfnmsa',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(89,100,82,'2014-03-13 05:16:00',NULL,'2015-03-13 00:50:16','0','dnfnmsa',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(90,100,82,'2014-03-13 05:16:00',NULL,'2015-03-13 00:52:13','0','dnfnmsa',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(91,100,82,'2014-03-13 05:16:00',NULL,'2015-03-13 00:52:52','0','dnfnmsa',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(92,100,82,'2014-03-13 05:16:00',NULL,'2015-03-13 00:57:26','0','dnfnmsa',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(93,100,45,'2015-03-13 05:27:00',NULL,'2015-03-13 00:57:47','0','dffd',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(94,100,45,'2015-03-13 05:27:00',NULL,'2015-03-13 00:58:08','0','dffd',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(95,100,45,'2015-03-13 05:27:00',NULL,'2015-03-13 01:26:12','0','dffd',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(96,100,86,'2014-03-17 13:05:00',NULL,'2015-03-17 08:38:39','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(97,100,86,'2014-03-17 13:05:00',NULL,'2015-03-17 08:39:18','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(98,100,86,'2014-03-17 13:05:00',NULL,'2015-03-17 08:39:48','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(99,100,86,'2014-03-17 13:13:00',NULL,'2015-03-17 08:43:57','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(100,100,87,'2015-03-18 01:50:00',NULL,'2015-03-17 21:20:27','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(101,100,87,'2015-03-18 01:50:00',NULL,'2015-03-17 21:23:34','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(102,100,87,'2015-03-18 01:50:00',NULL,'2015-03-17 21:24:08','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(103,100,87,'2015-03-18 02:17:00',NULL,'2015-03-17 21:47:21','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(104,100,87,'2015-03-18 02:17:00',NULL,'2015-03-17 21:49:53','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(105,100,87,'2015-03-18 02:17:00',NULL,'2015-03-17 21:50:26','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(106,100,87,'2015-03-18 02:17:00',NULL,'2015-03-17 21:51:51','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(107,100,87,'2015-03-18 02:17:00',NULL,'2015-03-17 21:52:38','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(111,100,87,'2015-03-18 02:26:00',NULL,'2015-03-17 21:56:43','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(112,100,87,'2015-03-18 02:26:00',NULL,'2015-03-17 22:03:04','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(113,100,87,'2015-03-18 02:26:00',NULL,'2015-03-17 22:07:07','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(114,100,87,'2015-03-18 02:37:00',NULL,'2015-03-17 22:07:33','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(115,100,87,'2015-03-18 02:37:00',NULL,'2015-03-17 22:08:20','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(116,100,87,'2015-03-18 02:38:00',NULL,'2015-03-17 22:08:47','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(117,100,87,'2015-03-18 02:38:00',NULL,'2015-03-17 22:09:10','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(118,100,87,'2015-03-18 02:38:00',NULL,'2015-03-17 22:13:13','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(119,100,87,'2015-03-18 02:43:00',NULL,'2015-03-17 22:13:35','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(122,100,87,'2015-03-20 13:08:00',NULL,'2015-03-20 08:40:59','0','',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(123,100,85,'2015-03-30 14:28:00',NULL,'2015-03-30 11:01:24','45678','uertkjr ',NULL,'personal',NULL,NULL,NULL,NULL,NULL),(124,100,85,'2015-03-30 14:35:00',NULL,'2015-03-30 11:05:47','67548','ggfdsf','follow up for thyroid treatment','personal',NULL,NULL,NULL,NULL,NULL),(125,130,2,'2015-04-02 16:00:00','1970-01-01 00:00:00','2015-04-02 12:31:42','365347','clovis','I want to see you for  follow up','personal',NULL,NULL,NULL,NULL,NULL),(126,131,90,'2015-04-06 12:21:00',NULL,'2015-04-06 08:53:57','2147483647','matiala','for followup','personal',NULL,NULL,NULL,NULL,NULL),(127,138,2,'2015-04-15 13:28:00','1970-01-01 00:00:00','2015-04-15 07:59:52','2147483647','h-7 uttam nagar','Follow UP','personal',NULL,NULL,NULL,NULL,NULL),(128,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,130,2,'2015-04-21 10:56:00','1970-01-01 00:00:00','2015-04-21 05:26:37','0','','','personal',NULL,NULL,NULL,NULL,NULL),(132,100,2,'2015-04-28 03:35:00',NULL,'2015-04-27 22:05:54','7564890','clovis','followup','personal',NULL,NULL,NULL,NULL,'0'),(133,142,93,'2015-05-02 03:31:00','1970-01-01 00:00:00','2015-05-01 22:02:54','2147483647','Fresno','Follow UP','personal',NULL,NULL,NULL,NULL,'1'),(134,143,93,'2015-07-03 10:08:00','1970-01-01 00:00:00','2015-05-03 04:39:59','2147483647','FG-1 ViKAS PURI','FOLLOW UP','personal',NULL,NULL,NULL,NULL,'1'),(135,143,93,'2015-06-06 01:36:00','1970-01-01 00:00:00','2015-05-05 20:09:04','43567898','Fresno','Follow up','personal',NULL,NULL,NULL,NULL,'1'),(136,143,93,'2015-05-06 01:40:00','1970-01-01 00:00:00','2015-05-05 20:11:40','9999971496','delhi','energency','personal',NULL,NULL,NULL,NULL,'1'),(138,143,93,'2015-05-06 02:31:00','1970-01-01 00:00:00','2015-05-05 21:02:14','','','dfgdfgd','personal',NULL,NULL,NULL,NULL,'0'),(139,143,93,'2015-05-06 04:27:00','1970-01-01 00:00:00','2015-05-05 22:57:46','','','','personal',NULL,NULL,NULL,NULL,'1'),(140,143,93,'2015-05-06 09:05:00','1970-01-01 00:00:00','2015-05-06 03:35:56','456778','dfghuj','','personal',NULL,NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `Department_id` int(11) NOT NULL AUTO_INCREMENT,
  `Doctors_id` int(11) DEFAULT NULL,
  `Department_Name` char(11) DEFAULT NULL,
  PRIMARY KEY (`Department_id`),
  KEY `fk__Department__Doctors` (`Doctors_id`),
  CONSTRAINT `fk__Department__Doctors` FOREIGN KEY (`Doctors_id`) REFERENCES `doctors` (`Doctors_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,2,' OBG'),(2,5,' <B> ENT </'),(3,4,' <B> Surger'),(4,6,' <B> Psychi'),(5,7,' <B> Cardio'),(6,3,' <B> ENT </'),(7,NULL,'Gastroenter'),(8,NULL,'Endocronolo'),(9,NULL,'Pediatrics'),(10,NULL,'cardiac sur');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion`
--

DROP TABLE IF EXISTS `discussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion` (
  `discussion_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `topic_type` enum('disease','insurance') DEFAULT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `dispatient` varchar(255) NOT NULL,
  `disdoctors` varchar(255) NOT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `doctor_id` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `sender` enum('patient','doctor') DEFAULT NULL,
  `depatient` varchar(255) NOT NULL,
  PRIMARY KEY (`discussion_id`),
  KEY `fk__discussion_insurance` (`insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion`
--

LOCK TABLES `discussion` WRITE;
/*!40000 ALTER TABLE `discussion` DISABLE KEYS */;
INSERT INTO `discussion` VALUES (1,'jfdsjf','insurance',0,'','',2,'13,57,61,100',0,'3,66,67,70','2015-04-07 13:13:47',NULL,NULL,''),(2,'jfdsjf','insurance',0,'','',2,'13,57,61',0,'3,66,67,70','2015-04-07 13:16:48',NULL,NULL,''),(4,'Nitesh Discussion','insurance',0,'','',1,'23,15,16,13,100',0,'1,1,5','2015-04-07 13:44:58',100,'patient',''),(5,'kdfkdsfsl','insurance',0,'','',3,'58,66,76',0,'4,45,52','2015-04-07 13:59:30',100,'patient',''),(6,'demo','insurance',0,'','',1,'15,16,13,100',0,'1,1,5','2015-04-07 14:01:12',100,'patient',''),(7,'mcbcb','insurance',0,'','',1,'16,13',0,'1,1','2015-04-07 14:10:55',100,'patient',''),(8,'mcbcb','insurance',0,'','',1,'16,13,100',0,'1,1','2015-04-07 14:14:22',100,'patient',''),(9,'kfgkfkgf','insurance',0,'','',2,'13,57,61',0,'3','2015-04-07 14:34:09',100,'patient',''),(10,'demo','insurance',0,'','',2,'13,57',0,'3','2015-04-07 14:36:03',100,'patient',''),(11,'demo','insurance',0,'','',2,'13,16,100',0,'3','2015-04-07 14:45:40',100,'patient',''),(12,'kfnvhbfvjbjhfvhj df','insurance',0,'','',4,'100,17,17,100',0,'72','2015-04-07 15:22:47',100,'patient',''),(13,'kfnvhbfvjbjhfvhj df','insurance',0,'','',4,'100,17,17,100',0,'','2015-04-07 15:23:32',100,'patient',''),(14,'health','insurance',0,'','',3,'100,17,13,2',0,'2','2015-04-07 15:23:32',2,'doctor',''),(15,'','insurance',0,'','',2,'16,13,57',0,'3,79,80','2015-04-08 13:30:20',2,'doctor',''),(16,'testing','insurance',0,'','',1,'130,131',0,'2,83,84','2015-04-08 13:35:44',100,'patient',''),(17,'Demo 2','insurance',0,'','',1,'130,131',0,'1','2015-04-08 13:39:45',100,'patient',''),(18,'sDBNsdbjbjdscbhjdbvsj','insurance',0,'','',1,'23,15,16,13',0,'89,90,2','2015-04-08 13:46:30',100,'patient',''),(19,'Changes','insurance',0,'','',4,'17,17,98,100',0,'2','2015-04-20 06:32:29',2,'doctor',''),(20,'hello','insurance',0,'','',7,'100',0,'1','2015-04-21 04:43:44',2,'doctor',''),(21,'testing insuraance','insurance',0,'','',2,'100',0,'85','2015-04-23 22:59:52',2,'doctor',''),(22,'','insurance',0,'','',4,'',0,'2','2015-04-23 23:01:38',100,'patient',''),(26,'disease test','disease',5,'','',NULL,'',0,'2','2015-04-24 05:31:57',2,'doctor',''),(27,'','disease',5,'','',NULL,'',0,'2','2015-04-24 05:32:20',2,'doctor',''),(28,'disease test2','disease',5,'','',NULL,'',0,'2','2015-04-24 05:34:34',100,'patient',''),(29,'nmgfnbmfgbngfmbngfmbngfmbngfmbf','disease',5,'','',NULL,'',0,'2','2015-04-24 05:45:05',2,'doctor',''),(30,'','insurance',0,'','',NULL,'',0,'','2015-04-24 05:46:49',100,'patient',''),(31,'','insurance',0,'','',NULL,'',0,'','2015-04-24 05:49:04',2,'doctor',''),(32,'Disease','disease',5,'','',NULL,'',0,'93','2015-05-01 22:03:58',142,'patient',''),(33,'Insurance policy','insurance',0,'','',NULL,'',0,'','2015-05-02 02:23:54',93,'doctor',''),(34,'Insurance policy','insurance',0,'','',NULL,'',0,'','2015-05-02 02:26:52',2,'doctor',''),(35,'Insurance policy','insurance',0,'','',NULL,'',0,'','2015-05-02 02:26:56',2,'doctor',''),(36,'Disease','disease',5,'','',NULL,'',0,'2,93','2015-05-02 02:47:48',93,'doctor',''),(37,'gastritis testing','disease',5,'','',NULL,'',0,'2,93','2015-05-02 20:38:45',93,'doctor',''),(38,'Atena Insurance Test','insurance',0,'','',NULL,'',0,'','2015-05-02 20:49:00',2,'doctor',''),(39,'New Atena Testing','insurance',0,'','',1,'',0,'','2015-05-02 21:10:58',100,'patient',''),(40,'Atena second Test','insurance',0,'','',1,'100,142',0,'2,93','2015-05-02 21:15:25',100,'patient',''),(41,'Insurance policyTest','insurance',0,'','',1,'100,142',0,'2,93','2015-05-02 21:43:08',100,'patient',''),(43,'Disease Testing','disease',5,'','2,93',NULL,'',0,'','2015-05-02 21:46:43',100,'patient',''),(44,'one more try','disease',5,'100','93',NULL,'',0,'','2015-05-02 22:11:54',2,'doctor',''),(45,'xcvxc','disease',5,'100','93',NULL,'',0,'','2015-05-02 22:21:21',100,'patient',''),(46,'xcvxc','disease',5,'100','93',NULL,'',0,'','2015-05-02 22:30:08',100,'patient',''),(47,'','disease',5,'','',NULL,'',0,'','2015-05-02 22:30:31',100,'patient',''),(48,'Disease Testing','disease',5,'100','2,93',0,'',0,'','2015-05-02 22:53:51',100,'patient',''),(49,'Insurance Testing','insurance',0,'','',1,'100,142',0,'2,93','2015-05-02 22:55:33',100,'patient',''),(50,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:21:55',2,'doctor',''),(51,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:30:23',2,'doctor',''),(52,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:31:22',2,'doctor',''),(53,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:31:32',2,'doctor',''),(54,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:31:52',2,'doctor',''),(55,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:33:20',2,'doctor',''),(56,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:34:44',2,'doctor',''),(57,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:35:22',2,'doctor',''),(58,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:36:22',2,'doctor',''),(59,'Disease Testing4','disease',5,'','93',0,'',0,'','2015-05-02 23:46:15',2,'doctor',''),(60,'DiseaseFinalTest','disease',5,',','93',0,'',0,'','2015-05-02 23:47:37',2,'doctor',''),(61,'ALpha ','disease',5,'143,142','93',0,'',0,'','2015-05-02 23:49:13',143,'patient',''),(62,'','disease',5,',','92,93',0,'',0,'','2015-05-02 23:55:18',143,'patient',''),(63,'','disease',5,',','92,93',0,'',0,'','2015-05-02 23:58:41',143,'patient',''),(64,'Stomach Problems','disease',5,',','93',0,'',0,'','2015-05-02 23:59:39',143,'patient',''),(65,'','disease',5,',,','92,93',0,'',0,'','2015-05-03 01:43:21',143,'patient',''),(66,'','disease',5,',,','92,93',0,'',0,'','2015-05-03 01:43:53',143,'patient',''),(67,'','disease',5,',,','92,93',0,'',0,'','2015-05-03 01:44:28',143,'patient',''),(68,'','disease',5,',,','92,93',0,'',0,'','2015-05-03 01:46:54',143,'patient',''),(69,'final test','disease',5,'142,142,143','93',0,'',0,'','2015-05-03 01:48:52',143,'patient',''),(70,'Ins Final test','insurance',0,'','',1,'100,142,143',0,'93,2','2015-05-03 01:50:15',143,'patient',''),(71,'without patient discussion','disease',5,'143','93',0,'',0,'','2015-05-03 03:44:11',2,'doctor',''),(72,'ulcer','disease',5,'','93',0,'',0,'','2015-05-03 03:46:11',143,'patient',''),(73,'DiseaseOne','disease',5,'143','93',0,'',0,'','2015-05-05 18:25:47',2,'doctor',''),(74,'DiseaseTeating 3','disease',5,'142,143','93',0,'',0,'','2015-05-05 19:51:54',93,'doctor',''),(75,'Atena Insurance Test final','insurance',5,'','',1,'143',0,'2','2015-05-05 21:22:59',93,'doctor',''),(76,'Insurance policyTest','insurance',0,'','',1,'142,143',0,'2,93','2015-05-05 21:26:38',93,'doctor','');
/*!40000 ALTER TABLE `discussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_message`
--

DROP TABLE IF EXISTS `discussion_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_message` (
  `discussion_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) DEFAULT NULL,
  `reply_by` int(11) DEFAULT NULL,
  `message` text,
  `message_date` datetime DEFAULT NULL,
  `status` enum('read','unread') DEFAULT NULL,
  PRIMARY KEY (`discussion_message_id`),
  KEY `fk__discussion_message_id` (`discussion_id`),
  CONSTRAINT `fk__discussion_message_id` FOREIGN KEY (`discussion_id`) REFERENCES `discussion` (`discussion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_message`
--

LOCK TABLES `discussion_message` WRITE;
/*!40000 ALTER TABLE `discussion_message` DISABLE KEYS */;
INSERT INTO `discussion_message` VALUES (1,NULL,NULL,'',NULL,NULL),(2,NULL,NULL,'',NULL,NULL),(3,8,100,'<p>\r\n	sdcmbf cjfsj b</p>\r\n','2015-04-07 14:14:22',NULL),(4,NULL,NULL,'',NULL,NULL),(5,9,100,'<p>\r\n	ndfdnkfgndfknkjdfg</p>\r\n','2015-04-07 14:34:09',NULL),(6,NULL,NULL,'',NULL,NULL),(7,10,100,'<p>\r\n	jasdnsjadkfnjdkfnkjsdfnksdfnjkfndsjfndskjfndskjfnsdjkf demo<strong>j</strong>jdfnjddfk</p>\r\n','2015-04-07 14:36:03',NULL),(8,NULL,NULL,'',NULL,NULL),(9,11,100,'<p>\r\n	jasdnsjadkfnjdkfnkjsdfnksdfnjkfndsjfndskjfndskjfnsdjkf demo<strong>j</strong>jdfnjddfk</p>\r\n','2015-04-07 14:45:40',NULL),(10,NULL,NULL,'',NULL,NULL),(11,12,100,'<p>\r\n	adc,jsfvbjfj sfjcv sfdvk nkdfbvkbfvbkfsbvkbfsvbjfsvjbfjvbjfsvjbsfjvbdscgsdvhc</p>\r\n','2015-04-07 15:22:47',NULL),(12,NULL,NULL,'',NULL,NULL),(13,13,100,'<p>\r\n	adc,jsfvbjfj sfjcv sfdvk nkdfbvkbfvbkfsbvkbfsvbjfsvjbfjvbjfsvjbsfjvbdscgsdvhc</p>\r\n','2015-04-07 15:23:32',NULL),(14,NULL,NULL,'',NULL,NULL),(15,8,100,'demo','2015-04-07 15:23:32',NULL),(16,12,100,'',NULL,NULL),(17,12,100,'<p>\r\n	jfkgkfgkfgnfgnfg</p>\r\n<p>\r\n	demo</p>\r\n',NULL,NULL),(18,12,100,'<p>\r\n	jfkgkfgkfgnfgnfg</p>\r\n<p>\r\n	demo</p>\r\n',NULL,NULL),(19,12,100,'<p>\r\n	jfkgkfgkfgnfgnfg</p>\r\n<p>\r\n	demo</p>\r\n<p>\r\n	Thank you</p>\r\n<p>\r\n	jjdfgndfj</p>\r\n',NULL,NULL),(20,12,100,'<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Thank you</p>\r\n<p>\r\n	jjdfgndfj</p>\r\n',NULL,NULL),(21,12,100,'<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Thank you</p>\r\n<p>\r\n	jjdfgndfj</p>\r\n',NULL,NULL),(22,12,100,'<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Thank you</p>\r\n<p>\r\n	jjdfgndfj</p>\r\n','2015-04-08 13:06:10',NULL),(23,12,100,'<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Hi This is samiksha Solanki</p>\r\n','2015-04-08 13:06:35',NULL),(24,12,100,'<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Hi This is samiksha Solanki</p>\r\n','2015-04-08 13:06:44',NULL),(25,15,2,'','2015-04-08 13:30:20',NULL),(26,NULL,NULL,'',NULL,NULL),(27,16,100,'<p>\r\n	Hello I am here</p>\r\n','2015-04-08 13:35:44',NULL),(28,NULL,NULL,'',NULL,NULL),(29,16,130,'<p>\r\n	Hi</p>\r\n<p>\r\n	I am reply of testing</p>\r\n','2015-04-08 13:36:58',NULL),(30,16,130,'<p>\r\n	Hi</p>\r\n<p>\r\n	I am reply of testing</p>\r\n','2015-04-08 13:37:02',NULL),(31,17,100,'<p>\r\n	Hi i am testing of demo2</p>\r\n','2015-04-08 13:39:45',NULL),(32,NULL,NULL,'',NULL,NULL),(33,17,130,'<p>\r\n	Hello I am reply of demo2</p>\r\n','2015-04-08 13:41:26',NULL),(34,17,130,'<p>\r\n	Hello I am reply of demo2</p>\r\n','2015-04-08 13:41:39',NULL),(35,18,100,'<p>\r\n	nkhdbfvbfdbvifvfbvbfv b bdfidif df bdfb fb sicifsifskifi fkvbfbvkfbvbfvbfsbsf</p>\r\n<p>\r\n	&nbsp;f</p>\r\n<p>\r\n	s</p>\r\n<p>\r\n	sfkbfkbiskisfbsfbskbfk sfkbfskbkfsvkbfv jkdfv<br />\r\n	lfsn kbfkj bfkvkfsbv</p>\r\n<p>\r\n	sdvkfsbvkifvkbfsvbksbvksdv</p>\r\n<p>\r\n	sdvkjsfvkbfskvbkfsbvksd</p>\r\n<p>\r\n	sdvjnksdbvbsdvkbsdbvsd</p>\r\n<p>\r\n	sdvjkfbvkbsfvkbfvkbs</p>\r\n<p>\r\n	cdvksbvkbsfkvbdsvk</p>\r\n<p>\r\n	svsfkvksfvkifivbkifbvkibfkibdfkv</p>\r\n<p>\r\n	sfnvk ndfk dfkn kdf</p>\r\n<p>\r\n	fsdnvkdfndfnvkdf</p>\r\n<p>\r\n	fjvndfnvikdf&nbsp;</p>\r\n<p>\r\n	dfvndfnkdf</p>\r\n<p>\r\n	dfnvndfkv nkdf</p>\r\n<p>\r\n	dfvndfnvndf</p>\r\n<p>\r\n	ofdnvikdfiv&nbsp;</p>\r\n<p>\r\n	dfnv d df</p>\r\n<p>\r\n	&nbsp;</p>\r\n','2015-04-08 13:46:30',NULL),(36,NULL,NULL,'',NULL,NULL),(37,18,2,'<p>\r\n	ifjnidbg df bidf idibidfi bigb ibfi bdif ifibifbi bdfi bidfb f ibf ifdib idfb idf dfi ibdfib difb idf bfdb df bdf bbfdf/</p>\r\n<p>\r\n	df odfnn kidf kibdf</p>\r\n<p>\r\n	df ndfndfkk bkdfb bik bkdfk kdfbvdf</p>\r\n','2015-04-08 13:47:06',NULL),(38,19,2,'<p>\r\n	Hi this is dicussion about changes in insurance</p>\r\n','2015-04-20 06:32:29',NULL),(39,NULL,NULL,'',NULL,NULL),(40,19,100,'<p>\r\n	May I know the Changes you are talking about</p>\r\n','2015-04-20 06:33:37',NULL),(41,19,2,'<p>\r\n	Increases in the price</p>\r\n','2015-04-20 06:35:46',NULL),(42,19,2,'<p>\r\n	Increases in the price</p>\r\n','2015-04-20 06:35:50',NULL),(43,20,2,'<p>\r\n	This is my doc</p>\r\n','2015-04-21 04:43:44',NULL),(44,NULL,NULL,'',NULL,NULL),(45,21,2,'<p>\r\n	Test message for insurance</p>\r\n','2015-04-23 22:59:52',NULL),(46,NULL,NULL,'',NULL,NULL),(47,21,100,'<p>\r\n	hello I am reply of testing</p>\r\n','2015-04-23 23:00:31',NULL),(48,21,100,'<p>\r\n	hello I am reply of testing</p>\r\n','2015-04-23 23:00:35',NULL),(49,22,100,'<p>\r\n	I am your test</p>\r\n','2015-04-23 23:01:38',NULL),(50,NULL,NULL,'',NULL,NULL),(51,26,2,'<p>\r\n	testing disease</p>\r\n','2015-04-24 05:31:57',NULL),(52,NULL,NULL,'',NULL,NULL),(53,27,2,'<p>\r\n	this is disease test</p>\r\n','2015-04-24 05:32:20',NULL),(54,NULL,NULL,'',NULL,NULL),(55,26,2,'<p>\r\n	i am disease reply</p>\r\n','2015-04-24 05:32:52',NULL),(56,26,2,'<p>\r\n	i am disease reply</p>\r\n','2015-04-24 05:32:56',NULL),(57,28,100,'<p>\r\n	hello i am disease test2</p>\r\n','2015-04-24 05:34:34',NULL),(58,NULL,NULL,'',NULL,NULL),(59,28,2,'<p>\r\n	I am diseasetest2 reply</p>\r\n','2015-04-24 05:35:54',NULL),(60,28,2,'<p>\r\n	I am diseasetest2 reply</p>\r\n','2015-04-24 05:35:59',NULL),(61,29,2,'<p>\r\n	Hellooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo</p>\r\n','2015-04-24 05:45:05',NULL),(62,NULL,NULL,'',NULL,NULL),(63,30,100,'<p>\r\n	&nbsp; nnnmn bnjmbhj gbgcfgfc &nbsp; &nbsp; yttytytyytyytytytyu</p>\r\n','2015-04-24 05:46:49',NULL),(64,NULL,NULL,'',NULL,NULL),(65,29,2,'<p>\r\n	fkjgfkjffffffffjnfkkkkkkkkkkkkkkkkbkvgn gfmn gn fkbgn fkbn fkmbnkfbndkbgnkndgvkbndkjbn</p>\r\n','2015-04-24 05:47:47',NULL),(66,29,2,'<p>\r\n	fkjgfkjffffffffjnfkkkkkkkkkkkkkkkkbkvgn gfmn gn fkbgn fkbn fkmbnkfbndkbgnkndgvkbndkjbn</p>\r\n','2015-04-24 05:47:50',NULL),(67,31,2,'<p>\r\n	jnjknjjbjb kjmbjmbjbjkbkjbkj b kjmb kjb jm bjnm bvn vn bv vm cvkm</p>\r\n','2015-04-24 05:49:04',NULL),(68,NULL,NULL,'',NULL,NULL),(69,32,142,'<p>\r\n	I am suffering from stomach ache from last &nbsp;10 days</p>\r\n','2015-05-01 22:03:58',NULL),(70,NULL,NULL,'',NULL,NULL),(71,32,93,'<p>\r\n	Please continue your medicines</p>\r\n','2015-05-01 22:10:27',NULL),(72,32,93,'<p>\r\n	Please continue your medicines</p>\r\n','2015-05-01 22:10:32',NULL),(73,33,93,'<p>\r\n	Hello Everyone;</p>\r\n<p>\r\n	I want to discuss about the atena insurance policy .I will suggest you to follow this policy.</p>\r\n<p>\r\n	Thank you</p>\r\n<p>\r\n	Samiksha</p>\r\n','2015-05-02 02:23:54',NULL),(74,NULL,NULL,'',NULL,NULL),(75,34,2,'<p>\r\n	Hello Everyone&nbsp;</p>\r\n<p>\r\n	I want to inform about atena insurance policy</p>\r\n','2015-05-02 02:26:52',NULL),(76,NULL,NULL,'',NULL,NULL),(77,35,2,'<p>\r\n	Hello Everyone&nbsp;</p>\r\n<p>\r\n	I want to inform about atena insurance policy</p>\r\n','2015-05-02 02:26:56',NULL),(78,NULL,NULL,'',NULL,NULL),(79,36,93,'<p>\r\n	This Discussion is on disease bases gaastrits</p>\r\n','2015-05-02 02:47:48',NULL),(80,NULL,NULL,'',NULL,NULL),(81,36,93,'<p>\r\n	Yes. this is dr.Nishu reply</p>\r\n','2015-05-02 02:49:23',NULL),(82,36,93,'<p>\r\n	Yes. this is dr.Nishu reply</p>\r\n','2015-05-02 02:49:27',NULL),(83,37,93,'<p>\r\n	Testing Testing disease testing</p>\r\n<p>\r\n	by nishu</p>\r\n','2015-05-02 20:38:45',NULL),(84,NULL,NULL,'',NULL,NULL),(85,37,2,'<p>\r\n	I am reply of gastritis testing</p>\r\n','2015-05-02 20:41:29',NULL),(86,37,2,'<p>\r\n	I am reply of gastritis testing</p>\r\n','2015-05-02 20:41:35',NULL),(87,38,2,'<p>\r\n	I am atena testing</p>\r\n','2015-05-02 20:49:00',NULL),(88,NULL,NULL,'',NULL,NULL),(89,39,100,'<p>\r\n	New Atena Testing</p>\r\n','2015-05-02 21:10:58',NULL),(90,NULL,NULL,'',NULL,NULL),(91,40,100,'<p>\r\n	Please Give ME ANSWER NOW&nbsp;</p>\r\n','2015-05-02 21:15:25',NULL),(92,NULL,NULL,'',NULL,NULL),(93,40,2,'<p>\r\n	HERE IS YOUR ANSWER NICHOLAS</p>\r\n','2015-05-02 21:16:20',NULL),(94,41,100,'<p>\r\n	I am semi final testing of atena</p>\r\n','2015-05-02 21:43:08',NULL),(95,NULL,NULL,'',NULL,NULL),(96,41,2,'<p>\r\n	I am reply of semo final testing of atena</p>\r\n','2015-05-02 21:43:59',NULL),(97,43,100,'<p>\r\n	I am semi final testing for gastrists</p>\r\n','2015-05-02 21:46:43',NULL),(98,NULL,NULL,'',NULL,NULL),(99,44,2,'<p>\r\n	one more try</p>\r\n','2015-05-02 22:11:54',NULL),(100,NULL,NULL,'',NULL,NULL),(101,45,100,'<p>\r\n	cvxvxvxvx</p>\r\n','2015-05-02 22:21:21',NULL),(102,NULL,NULL,'',NULL,NULL),(103,46,100,'<p>\r\n	cvxvxvxvx</p>\r\n','2015-05-02 22:30:08',NULL),(104,NULL,NULL,'',NULL,NULL),(105,47,100,'<p>\r\n	vccfgbfgdvdfvbdf</p>\r\n','2015-05-02 22:30:31',NULL),(106,NULL,NULL,'',NULL,NULL),(107,45,100,'<p>\r\n	i am reply pllzzzz</p>\r\n','2015-05-02 22:46:14',NULL),(108,45,100,'<p>\r\n	i am reply pllzzzz</p>\r\n','2015-05-02 22:46:17',NULL),(109,45,93,'<p>\r\n	i am cvxxxx reply nishu</p>\r\n','2015-05-02 22:48:13',NULL),(110,48,100,'<p>\r\n	Hello another test</p>\r\n','2015-05-02 22:53:51',NULL),(111,NULL,NULL,'',NULL,NULL),(112,49,100,'<p>\r\n	My Another Insurance Testing</p>\r\n','2015-05-02 22:55:33',NULL),(113,NULL,NULL,'',NULL,NULL),(114,49,2,'<p>\r\n	I am another Insurance testing reply</p>\r\n','2015-05-02 22:56:31',NULL),(115,48,93,'<p>\r\n	I am disease another reply</p>\r\n','2015-05-02 22:57:56',NULL),(116,50,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:21:55',NULL),(117,NULL,NULL,'',NULL,NULL),(118,51,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:30:23',NULL),(119,NULL,NULL,'',NULL,NULL),(120,52,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:31:22',NULL),(121,NULL,NULL,'',NULL,NULL),(122,53,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:31:32',NULL),(123,NULL,NULL,'',NULL,NULL),(124,54,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:31:52',NULL),(125,NULL,NULL,'',NULL,NULL),(126,55,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:33:20',NULL),(127,NULL,NULL,'',NULL,NULL),(128,56,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:34:44',NULL),(129,NULL,NULL,'',NULL,NULL),(130,57,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:35:22',NULL),(131,NULL,NULL,'',NULL,NULL),(132,58,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:36:22',NULL),(133,NULL,NULL,'',NULL,NULL),(134,59,2,'<p>\r\n	fdgfdgdfgdf</p>\r\n','2015-05-02 23:46:15',NULL),(135,NULL,NULL,'',NULL,NULL),(136,60,2,'<p>\r\n	Plz chal jaaa</p>\r\n','2015-05-02 23:47:37',NULL),(137,NULL,NULL,'',NULL,NULL),(138,61,143,'<p>\r\n	alpha beta gamma</p>\r\n','2015-05-02 23:49:13',NULL),(139,NULL,NULL,'',NULL,NULL),(140,62,143,'','2015-05-02 23:55:18',NULL),(141,NULL,NULL,'',NULL,NULL),(142,63,143,'','2015-05-02 23:58:41',NULL),(143,NULL,NULL,'',NULL,NULL),(144,64,143,'<p>\r\n	OHH MAN</p>\r\n','2015-05-02 23:59:39',NULL),(145,NULL,NULL,'',NULL,NULL),(146,65,143,'<p>\r\n	ndmvndmsnmds</p>\r\n','2015-05-03 01:43:21',NULL),(147,NULL,NULL,'',NULL,NULL),(148,66,143,'<p>\r\n	ndmvndmsnmds</p>\r\n','2015-05-03 01:43:53',NULL),(149,NULL,NULL,'',NULL,NULL),(150,67,143,'<p>\r\n	ndmvndmsnmds</p>\r\n','2015-05-03 01:44:28',NULL),(151,NULL,NULL,'',NULL,NULL),(152,68,143,'<p>\r\n	ndmvndmsnmds</p>\r\n','2015-05-03 01:46:54',NULL),(153,NULL,NULL,'',NULL,NULL),(154,69,143,'<p>\r\n	please run the final test</p>\r\n','2015-05-03 01:48:52',NULL),(155,NULL,NULL,'',NULL,NULL),(156,69,143,'<p>\r\n	I am reply of final test of disease</p>\r\n','2015-05-03 01:49:20',NULL),(157,70,143,'<p>\r\n	I am final test of insurance</p>\r\n','2015-05-03 01:50:15',NULL),(158,NULL,NULL,'',NULL,NULL),(159,70,100,'<p>\r\n	I am final reply of ins from patient portal</p>\r\n','2015-05-03 01:51:25',NULL),(160,69,93,'<p>\r\n	I am final reply on disease test from doc</p>\r\n','2015-05-03 01:52:16',NULL),(161,70,93,'<p>\r\n	I am final reply on ins portal from doc</p>\r\n','2015-05-03 01:52:48',NULL),(162,71,2,'<p>\r\n	disease discussion&nbsp;</p>\r\n','2015-05-03 03:44:11',NULL),(163,NULL,NULL,'',NULL,NULL),(164,71,143,'<p>\r\n	I am in this discussion</p>\r\n','2015-05-03 03:45:01',NULL),(165,72,143,'<p>\r\n	I am having ulcer from last 50days</p>\r\n','2015-05-03 03:46:11',NULL),(166,NULL,NULL,'',NULL,NULL),(167,72,93,'<p>\r\n	you should go for ultrasound</p>\r\n','2015-05-03 03:47:36',NULL),(168,73,2,'<p>\r\n	I am doing disease testing</p>\r\n','2015-05-05 18:25:47',NULL),(169,NULL,NULL,'',NULL,NULL),(170,74,93,'<p>\r\n	Hello I am disease testing 3</p>\r\n','2015-05-05 19:51:54',NULL),(171,NULL,NULL,'',NULL,NULL),(172,75,93,'<p>\r\n	I am talking about insurance company atena</p>\r\n','2015-05-05 21:22:59',NULL),(173,NULL,NULL,'',NULL,NULL),(174,75,2,'<p>\r\n	Hello I am its reply</p>\r\n','2015-05-05 21:24:12',NULL),(175,76,93,'<p>\r\n	I am insurance testing</p>\r\n','2015-05-05 21:26:38',NULL),(176,NULL,NULL,'',NULL,NULL),(177,76,93,'<p>\r\n	Hello i want to add some more in this</p>\r\n','2015-05-05 21:27:12',NULL),(178,76,2,'<p>\r\n	Hello I am reply nisha&nbsp;</p>\r\n','2015-05-05 21:27:53',NULL),(179,76,143,'<p>\r\n	I am also involved in this insurance</p>\r\n','2015-05-05 21:28:34',NULL);
/*!40000 ALTER TABLE `discussion_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `disease_id` int(11) NOT NULL AUTO_INCREMENT,
  `disease_name` varchar(255) NOT NULL,
  `disease_details` text NOT NULL,
  `cure` text NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`disease_id`),
  KEY `fk_disease_department` (`department_id`),
  CONSTRAINT `fk_disease_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`Department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,'Hemophilia','<p>Hemophilia is a rare disorder in which your blood doesn\'t clot normally because it lacks sufficient blood-clotting proteins (clotting factors). If you have hemophilia, you may bleed for a longer time after an injury than you would if your blood clotted normally.\nSmall cuts usually aren\'t much of a problem. The greater health concern is deep bleeding inside your body, especially in your knees, ankles and elbows. That internal bleeding can damage your organs and tissues, and may be life-threatening.\nHemophilia is an inherited (genetic) disorder. There\'s no cure yet. But with proper treatment and self-care, most people with hemophilia can maintain an active, productive lifestyle</p>','<p>Exercise regularly. Activities such as swimming, bicycle riding and walking can build up muscles while protecting joints. Contact sports — such as football, hockey or wrestling — are not safe for people with hemophilia.\nAvoid certain pain medications. Drugs that can aggravate bleeding include aspirin and ibuprofen (Advil, Motrin, others). Instead, use acetaminophen (Tylenol, others), which is a safe alternative for mild pain relief.\nAvoid blood-thinning medications. Medications that prevent blood from clotting include heparin, warfarin (Coumadin), clopidogrel (Plavix) and prasugrel (Effient).\nPractice good dental hygiene. The goal is to prevent tooth extraction, which can lead to excessive bleeding.Protect your child from injuries that could cause bleeding. Kneepads, elbow pads, helmets and safety belts all may help prevent injuries from falls and other accidents. Keep your home free of furniture with sharp corners.</p>',9),(2,'Low Red Cell Count (Anemia)','<p>Iron deficiency anemia is a common type of anemia — a condition in which blood lacks adequate healthy red blood cells. Red blood cells carry oxygen to the body\'s tissues.\nAs the name implies, iron deficiency anemia is due to insufficient iron. Without enough iron, your body can\'t produce enough of a substance in red blood cells that enables them to carry oxygen (hemoglobin). As a result, iron deficiency anemia may leave you tired and short of breath.\nYou can usually correct iron deficiency anemia with iron supplementation. Sometimes additional tests or treatments for iron deficiency anemia are necessary, especially if your doctor suspects that you\'re bleeding internally.</p>','<p>Choose iron-rich foods\n\nFoods rich in iron include:\n\nRed meat\nPork\nPoultry\nSeafood\nBeans\nDark green leafy vegetables, such as spinach\nDried fruit, such as raisins and apricots\nIron-fortified cereals, breads and pastas\nPeas\nYour body absorbs more iron from meat than it does from other sources. If you choose to not eat meat, you may need to increase your intake of iron-rich, plant-based foods to absorb the same amount of iron as someone who eats meat.\n\nChoose foods containing vitamin C to enhance iron absorption\n\nYou can enhance your body\'s absorption of iron by drinking citrus juice or eating other foods rich in vitamin C at the same time that you eat high-iron foods. Vitamin C in citrus juices, like orange juice, helps your body to better absorb dietary iron.\nVitamin C is also found in:\nBroccoli\nGrapefruit\nKiwi\nLeafy greens\nMelons\nOranges\nPeppers\nStrawberries\nTangerines\nTomatoes </p>',9),(3,'Thyroid','','',8),(4,'Ischemic  Stroke','','',10),(5,'Gastritis','','',7);
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease_group`
--

DROP TABLE IF EXISTS `disease_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease_group` (
  `Disease_Group_id` int(11) NOT NULL AUTO_INCREMENT,
  `Disease_Group` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`Disease_Group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_group`
--

LOCK TABLES `disease_group` WRITE;
/*!40000 ALTER TABLE `disease_group` DISABLE KEYS */;
INSERT INTO `disease_group` VALUES (1,'Abdomen'),(2,'Thyroid Gland'),(3,'Chronic Kidney'),(4,'Throat Disorders'),(5,'Joints Disorder'),(6,'Immune Disorder'),(7,'Tooth Disorder'),(8,'Macular Degeneration'),(9,'Obesity');
/*!40000 ALTER TABLE `disease_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `Doctors_id` int(11) NOT NULL AUTO_INCREMENT,
  `Doctors_name` varchar(255) DEFAULT NULL,
  `Phone_no` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Department_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_pass` varchar(255) DEFAULT NULL,
  `Department_id` int(11) DEFAULT NULL,
  `Online_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `activate_code` varchar(255) NOT NULL,
  `Added_on` datetime NOT NULL,
  `Last_seen` datetime NOT NULL,
  PRIMARY KEY (`Doctors_id`),
  KEY `fk__Doctors_Department_name` (`Department_id`),
  CONSTRAINT `fk__Doctors_Department_name` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr.Rajiv Solanki','0','','</p> Medicine </p>','dmv@gmail.c','djnd',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Dr.Nisha Solanki','2147487','DY Patil','<B> Surgery </B>','nisha@fake.com','a9f56b7ece2113c9c4a1214a19ede99c',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'<B>Dr.Rajiv Solanki   </B>','0','','</p> Medicine </p>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'<B> Dr.Nisha Solanki </B>','0','','<B> Surgery </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'<B>Dr.Ajay Lodha </B>','0','','</p> Primary Care </p>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'<B> Dr.David Lee </B>','0','','<B> Primary Care </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'<B> Dr.Abie Lee </B>','0','','<B> Primary Care </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'<B> Dr.Gary Guaranaccia </B>','0','','<B> OB-GYN </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'<B> Dr.Adam Romiff </B>','0','','<B> OB-GYN </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'<B> Dr.Sangeet Khanna </B>','0','','<B> Psychiatrist </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'<B> Dr.Howard Schwartz </B>','0','','<B> Cardiologist</B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'<B> Dr. John Anstasi </B>','0','','<B> Cardiothracic Surgeon</B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'<B> Dr. Ira Rothfeld </B>','0','','<B> ENT</B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'<B> Dr. Tom Moon </B>','0','','<B> ENT</B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'<B>Dr.Ajay Lodha </B>','0','','</p> Primary Care </p>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'<B> Dr.David Lee </B>','0','','<B> Primary Care </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'<B> Dr.Abie Lee </B>','0','','<B> Primary Care </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'<B> Dr.Gary Guaranaccia </B>','0','','<B> OB-GYN </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'<B> Dr.Adam Romiff </B>','0','','<B> OB-GYN </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'<B> Dr.Sangeet Khanna </B>','0','','<B> Psychiatrist </B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'<B> Dr.Howard Schwartz </B>','0','','<B> Cardiologist</B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'<B> Dr. John Anstasi </B>','0','','<B> Cardiothracic Surgeon</B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'<B> Dr. Ira Rothfeld </B>','0','','<B> ENT</B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'<B> Dr. Tom Moon </B>','0','','<B> ENT</B>',NULL,NULL,NULL,NULL,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'bv_demo','0','',NULL,'bv_demo@dem','827ccb0eea8a706c4c34a16891f84e7b',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'bv_demo','0','',NULL,'bv_demo@dem','827ccb0eea8a706c4c34a16891f84e7b',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'hello','0','',NULL,'bv_demo@dem','c6fa79d77d3d71c5872c2688969e31d6',NULL,2,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'dummy15','0','',NULL,'demo@dem.co','827ccb0eea8a706c4c34a16891f84e7b',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'dummy15','0','',NULL,'demo@dem.co','827ccb0eea8a706c4c34a16891f84e7b',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Dr.Nitesh','0','',NULL,'nitesh@demo','827ccb0eea8a706c4c34a16891f84e7b',NULL,5,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'Dr.shail','0','',NULL,'shail.@demo','81b073de9370ea873f548e31b8adc081',NULL,3,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'abc','0','',NULL,'abc@demo.co','202cb962ac59075b964b07152d234b70',NULL,2,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'kjk','0','',NULL,'kbj@h.co','202cb962ac59075b964b07152d234b70',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'hg','0','',NULL,'hg@demo.co','202cb962ac59075b964b07152d234b70',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'hgh','0','',NULL,'hdg@demo.co','202cb962ac59075b964b07152d234b70',NULL,2,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'eg','0','',NULL,'eg@demo.com','6562c5c1f33db6e05a082a88cddab5ea',NULL,3,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Dr.Ali','0','',NULL,'ali@fake.co','ali',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'demmo1','0','',NULL,'demmo1@demo','demmo1',NULL,1,'Active','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'','0','',NULL,'demmo1@demo','1e9b763a2641944f478bc30ebe40413b',NULL,1,'Active','','2015-01-14 07:57:45','2015-01-14 07:57:45'),(55,'','0','',NULL,'demmo3@fake','df6bbf0da2fe174d8bf6b69917f6983d',NULL,1,'Active','','2015-01-14 07:58:42','2015-01-14 07:58:42'),(56,'','0','',NULL,'demmo4@demm','f494a8d1bbd521dee20dddcbef2dd25c',NULL,1,'Active','','2015-01-14 08:02:05','2015-01-14 08:02:05'),(57,'','0','',NULL,'demmo4@demm','f494a8d1bbd521dee20dddcbef2dd25c',NULL,1,'Active','','2015-01-14 08:05:49','2015-01-14 08:05:49'),(58,'','0','',NULL,'demmo4@demm','f494a8d1bbd521dee20dddcbef2dd25c',NULL,1,'Active','','2015-01-14 08:06:00','2015-01-14 08:06:00'),(59,'','0','',NULL,'demo@demo.c','fe01ce2a7fbac8fafaed7c982a04e229',NULL,1,'Active','','2015-01-14 08:06:28','2015-01-14 08:06:28'),(60,'','0','',NULL,'demo@demo.c','fe01ce2a7fbac8fafaed7c982a04e229',NULL,1,'Active','','2015-01-14 08:39:39','2015-01-14 08:39:39'),(61,'','0','',NULL,'dem1@dem.co','202cb962ac59075b964b07152d234b70',NULL,1,'Active','','2015-01-14 08:40:30','2015-01-14 08:40:30'),(62,'','0','',NULL,'dem1@dem.co','202cb962ac59075b964b07152d234b70',NULL,1,'Active','','2015-01-14 08:43:38','2015-01-14 08:43:38'),(63,'','0','',NULL,'al@fake.com','568bc15d026dc2de777278f0f09adcc5',NULL,1,'Active','','2015-01-14 08:44:38','2015-01-14 08:44:38'),(64,'','0','',NULL,'hee1@fake1.','e3e84538a1b02b1cc11bf71fe3169958',NULL,1,'Active','','2015-01-14 08:53:33','2015-01-14 08:53:33'),(65,'mitesh','4567','gv',NULL,'df@fke.com','',NULL,1,'Active','','2015-01-14 09:02:38','2015-01-14 09:02:38'),(66,'tres','4567','tyuio',NULL,'tres','tyui',NULL,1,'Active','','2015-01-14 09:05:10','2015-01-14 09:05:10'),(67,'heee','34567','tyuio45',NULL,'heee','tyui',NULL,1,'Active','','2015-01-14 09:08:43','2015-01-14 09:08:43'),(70,'Dr.Alopes','7865','786tf',NULL,'alopes@fake','1234',NULL,1,'Inactive','','2015-01-14 10:24:25','2015-01-14 10:24:25'),(72,'demlo','123456789','delhi',NULL,'demol@demo.','123456',NULL,1,'Active','','2015-01-14 10:41:48','2015-01-14 10:41:48'),(73,'Dr.Alpha','12345','12yhj',NULL,'alpha@fake.com','1234',NULL,1,'Active','','2015-01-14 10:47:22','2015-01-14 10:47:22'),(74,'<B>hello</B>','123467','hello56',NULL,'hello@fake.com','hello',NULL,1,'Active','','2015-01-15 08:36:45','2015-01-15 08:36:45'),(75,'','0','',NULL,'','',NULL,2,'Active','','2015-01-15 16:27:36','2015-01-15 16:27:36'),(77,'hello1','12345','qwer',NULL,'hello1@fake.com','hello1',NULL,1,'Active','','2015-01-16 11:02:15','2015-01-16 11:02:15'),(78,'Dr.Beta','12345','123er',NULL,'beta@fake.com','md5(1234)',NULL,1,'Active','','2015-01-16 12:06:16','2015-01-16 12:06:16'),(79,'Dr.gamma','1234','gamma12',NULL,'gamma@fake.com','81dc9bdb52d04dc20036dbd8313ed055',NULL,1,'Active','','2015-01-16 12:08:29','2015-01-16 12:08:29'),(80,'Dr.gamma1','1234','wert',NULL,'gamma1@fake1.com','81dc9bdb52d04dc20036dbd8313ed055',NULL,1,'Active','','2015-01-16 12:13:25','2015-01-16 12:13:25'),(81,'gamma1','12345','gamawer',NULL,'gaama01@fake.com','e10adc3949ba59abbe56e057f20f883e',NULL,2,'Active','','2015-01-16 12:15:53','2015-01-16 12:15:53'),(82,'sushmareddy sandireddy','4387','yydhfkjds',NULL,'reddy@fake.com','81dc9bdb52d04dc20036dbd8313ed055',NULL,2,'Active','','2015-02-28 02:35:29','2015-02-28 02:35:29'),(83,'kdjfgndfg','854','ndfgm',NULL,'','046ab44c052e6657be73cc78e927e3ca',NULL,1,'Active','','2015-03-11 04:26:32','2015-03-11 04:26:32'),(84,'samiksha ','23456','4908 N Ninth Street App #211',NULL,'samiksha.com','e5aeaf2693dadfe7ae967f9b02c6f376',NULL,2,'Active','','2015-03-13 01:37:29','2015-03-13 01:37:29'),(85,'Nisha solanki','15678','delhi',NULL,'nisha.solanki08@fake.com','5b6ea67661c7e1ad26fe138903a76ac8',NULL,1,'Active','','2015-03-16 18:36:59','2015-03-16 18:36:59'),(86,'solanki','559754854','fdjghdfkj',NULL,'samiksha11@mail.fresnostate.edu','60fd5215a6bc1e13f1ae813877045fdf',NULL,2,'Active','','2015-03-16 18:40:52','2015-03-16 18:40:52'),(87,'solankinisha','34567','ftfyug',NULL,'nisha.solanki0.com','05742b06f76efa13b568643315f5e488',NULL,2,'Active','','2015-03-16 18:57:25','2015-03-16 18:57:25'),(88,'akhilverma','985678','hghjgj',NULL,'verma.akhil01@gmail.com','b7af98b3e90e656ed605c23577116862',NULL,2,'Active','','2015-03-17 08:14:17','2015-03-17 08:14:17'),(89,'nitesh','785','gfdkj',NULL,'nitesh.g@parangat.com','388c6df5ce99c934d9c5f0bf29d758e4',NULL,2,'Inactive','AyoS!wp2Nz1427696016','2015-03-30 08:13:36','2015-03-30 08:13:36'),(90,'samiksha','2147483647','fresno',NULL,'samiksha.solanki11@gmail.com','825cf084f9fe84596c47bbe01cacec92',NULL,2,'Active','','2015-04-06 08:47:49','2015-04-06 08:47:49'),(91,'Raj','876345','clovis',NULL,'solrajivil.com','24fa3fab8cc007d8106596047e0c50ec',NULL,7,'Inactive','N9pAcaWDfF1430461988','2015-05-01 06:33:08','2015-05-01 06:33:08'),(92,'Raj','63874568','fresno state',NULL,'solrajiv09@gmail.com','a132feb0c1c8aab98a02b99679b41130',NULL,7,'Inactive','yJoXQO1ohu1430462566','2015-05-01 08:42:46','2015-05-01 08:42:46'),(93,'Nishu','55786790','7230 N Millbrook Ave, Fresno, CA 93720',NULL,'nisha.solanki08@gmail.com','430eb1b69c27ee405ab00cf5003cb9ba',NULL,7,'Active','','2015-05-01 20:39:07','2015-05-01 20:39:07');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dpatient_bplist`
--

DROP TABLE IF EXISTS `dpatient_bplist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpatient_bplist` (
  `dpatient_bplist` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `bp_date` date DEFAULT NULL,
  `bp_time` varchar(255) DEFAULT NULL,
  `bp_certi` varchar(255) DEFAULT NULL,
  `systolic` varchar(255) DEFAULT NULL,
  `diastolic` varchar(255) DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  PRIMARY KEY (`dpatient_bplist`),
  KEY `fk__dpatient_bplist_patient` (`patient_id`),
  KEY `fk__dpatient_bplist_doctor` (`doctor_id`),
  CONSTRAINT `fk__dpatient_bplist_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`Patient_id`),
  CONSTRAINT `fk__dpatient_bplist_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`Doctors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpatient_bplist`
--

LOCK TABLES `dpatient_bplist` WRITE;
/*!40000 ALTER TABLE `dpatient_bplist` DISABLE KEYS */;
/*!40000 ALTER TABLE `dpatient_bplist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `Hospital_id` int(11) NOT NULL AUTO_INCREMENT,
  `Hospital_name` varchar(255) DEFAULT NULL,
  `City_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (2,'<p>Porteville Development Centre </p>','<p>Porteville</p>'),(3,'<p>Sonoma Development Centre</p>','<p>Eldridge</p>'),(4,'<p>Porteville Development Centre </p>','<p>Porteville</p>'),(5,'<p>Allen County Hospital </p>','<p>LOla</p>'),(6,'<p>Anderson County Hospital </p>','<p>Garnett</p>'),(7,'<p>Ashland Health centre </p>','<p>Ashland</p>'),(8,'<p>Associated Eye Surgical Centre </p>','<p>Wichita</p>'),(9,'<p>Atchison Hospital </p>','<p>Atchison</p>'),(10,'<p>Bob Wilson Memorial Grant County Hospital </p>','<p>Ulysses</p>'),(11,'<p>Cedar Vale Community Hospital </p>','<p>Cedar Vale</p>'),(12,'<p>Citizen Medical Centre </p>','<p>Lolby</p>'),(13,'<p>Coffey County Hospital</p>','<p>Burlington</p>'),(14,'<p>Sonoma Development Centre</p>','<p>Eldridge</p>'),(15,'<p>Porteville Development Centre </p>','<p>Porteville</p>'),(16,'<p>Allen County Hospital </p>','<p>LOla</p>'),(17,'<p>Anderson County Hospital </p>','<p>Garnett</p>'),(18,'<p>Ashland Health centre </p>','<p>Ashland</p>'),(19,'<p>Associated Eye Surgical Centre </p>','<p>Wichita</p>'),(20,'<p>Atchison Hospital </p>','<p>Atchison</p>'),(21,'<p>Bob Wilson Memorial Grant County Hospital </p>','<p>Ulysses</p>'),(22,'<p>Cedar Vale Community Hospital </p>','<p>Cedar Vale</p>'),(23,'<p>Citizen Medical Centre </p>','<p>Lolby</p>'),(24,'<p>Coffey County Hospital</p>','<p>Burlington</p>');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance` (
  `Insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_name` varchar(255) DEFAULT NULL,
  `policy_type` char(10) DEFAULT NULL,
  `policy_amount` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'Atena','pop',999.99),(2,'Alaska Insurance Providers','Medical',999.99),(3,'Alabama Insurance Providers','Medical',999.99),(4,'Arizona Insurance Providers','Medical',999.99),(5,'California Insurance Providers','Medical',999.99),(6,'Colorado Insurance Providers','Medical',999.99),(7,'Connecticut Insurance Providers','Medical',999.99),(8,'Florida Insurance Providers','Medical',999.99),(9,'Montana Insurance Providers','Dental',NULL);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_sum` BEFORE INSERT ON `insurance`
 FOR EACH ROW SET  NEW.policy_amount = policy_amount + NEW.policy_amount */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `insurance_acceptance`
--

DROP TABLE IF EXISTS `insurance_acceptance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance_acceptance` (
  `Insurance_Acceptance_id` int(11) NOT NULL AUTO_INCREMENT,
  `Insurance_Acceptance_Info` text,
  `Doctors_id` int(11) DEFAULT NULL,
  `Insurance_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Insurance_Acceptance_id`),
  KEY `fk__Insurance_Acceptance__Doctors` (`Doctors_id`),
  KEY `fk__Insurance_Acceptance__Insurances` (`Insurance_id`),
  CONSTRAINT `fk__Insurance_Acceptance__Doctors` FOREIGN KEY (`Doctors_id`) REFERENCES `doctors` (`Doctors_id`),
  CONSTRAINT `fk__Insurance_Acceptance__Insurances` FOREIGN KEY (`Insurance_id`) REFERENCES `insurance` (`Insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_acceptance`
--

LOCK TABLES `insurance_acceptance` WRITE;
/*!40000 ALTER TABLE `insurance_acceptance` DISABLE KEYS */;
INSERT INTO `insurance_acceptance` VALUES (1,'POP',1,1),(2,'<B>POP</B>',1,1),(3,'<B>Non POP</B>',5,1),(5,'<B>Non POP</B>',1,7),(6,'<B> POP</B>',4,6),(7,'<B>Non POP</B>',5,5),(8,'<B>POP</B>',4,3),(9,'<B>POP</B>',9,6),(10,'<B>Non POP</B>',3,2),(14,NULL,45,3),(26,NULL,52,3),(29,NULL,59,1),(30,NULL,59,2),(31,NULL,60,1),(32,NULL,60,2),(33,NULL,61,1),(34,NULL,61,2),(35,NULL,61,3),(36,NULL,62,1),(37,NULL,62,2),(38,NULL,62,3),(39,NULL,63,1),(40,NULL,63,2),(41,NULL,63,3),(42,NULL,64,1),(43,NULL,64,2),(44,NULL,65,2),(45,NULL,65,3),(46,NULL,66,2),(47,NULL,67,1),(48,NULL,67,2),(49,NULL,70,1),(50,NULL,70,2),(51,NULL,72,1),(52,NULL,72,2),(53,NULL,72,3),(54,NULL,72,4),(55,NULL,73,1),(56,NULL,73,2),(57,NULL,73,3),(61,NULL,75,1),(62,NULL,75,3),(63,NULL,77,1),(64,NULL,77,2),(65,NULL,77,3),(66,NULL,78,1),(67,NULL,78,2),(68,NULL,78,3),(69,NULL,79,1),(70,NULL,79,2),(71,NULL,79,3),(72,NULL,80,1),(73,NULL,80,2),(74,NULL,80,3),(75,NULL,81,1),(76,NULL,81,2),(77,NULL,81,3),(92,NULL,74,1),(93,NULL,74,2),(94,NULL,74,5),(99,NULL,82,3),(100,NULL,83,1),(101,NULL,84,1),(102,NULL,84,2),(103,NULL,84,3),(104,NULL,85,1),(105,NULL,85,2),(106,NULL,85,3),(107,NULL,86,1),(108,NULL,86,2),(109,NULL,86,3),(110,NULL,87,2),(111,NULL,88,1),(112,NULL,89,1),(116,NULL,90,1),(117,NULL,90,2),(118,NULL,90,3),(173,NULL,91,1),(174,NULL,91,2),(175,NULL,91,3),(176,NULL,91,4),(177,NULL,91,5),(178,NULL,91,6),(179,NULL,91,7),(180,NULL,91,8),(181,NULL,91,9),(182,NULL,92,1),(183,NULL,92,2),(184,NULL,92,3),(185,NULL,92,4),(186,NULL,92,5),(187,NULL,92,6),(188,NULL,92,7),(189,NULL,92,8),(204,NULL,2,1),(205,NULL,2,2),(206,NULL,2,3),(207,NULL,2,4),(208,NULL,2,5),(209,NULL,2,6),(210,NULL,93,1),(211,NULL,93,2),(212,NULL,93,3),(213,NULL,93,4),(214,NULL,93,5),(215,NULL,93,6),(216,NULL,93,7),(217,NULL,93,8),(218,NULL,93,9);
/*!40000 ALTER TABLE `insurance_acceptance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Sami','56fafa8964024efa410773781a5f9e93');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_assistance`
--

DROP TABLE IF EXISTS `media_assistance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_assistance` (
  `Media_id` int(11) NOT NULL AUTO_INCREMENT,
  `Disease` varchar(225) DEFAULT NULL,
  `video_url_Assistance` blob,
  `Image_Assistance` blob,
  `Disease_Group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Media_id`),
  KEY `fk__Media_Assistance__Disease_Group` (`Disease_Group_id`),
  CONSTRAINT `fk__Media_Assistance__Disease_Group` FOREIGN KEY (`Disease_Group_id`) REFERENCES `disease_group` (`Disease_Group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_assistance`
--

LOCK TABLES `media_assistance` WRITE;
/*!40000 ALTER TABLE `media_assistance` DISABLE KEYS */;
INSERT INTO `media_assistance` VALUES (1,'Acid Indigestion','','F:fall-2014csci_226DataBase_Healthimagesstomach.jpg',1),(2,'LowerGI series','','F:fall-2014csci_226DataBase_Healthimagesintestines.jpg',1),(3,'Ulcerative series','','F:fall-2014csci_226DataBase_Healthimagesstomach.jpg',1),(4,'Hypothrodism','','F:fall-2014csci_226DataBase_HealthimagesTHYROID.jpg',4),(5,'Hyperthyrodism','','F:fall-2014csci_226DataBase_HealthimagesTHYROID.jpg.jpg',4),(6,'Amyloidsis','','F:fall-2014csci_226DataBase_Healthimages\neck_bone.jpg',5),(7,'Cramp','','F:fall-2014csci_226DataBase_HealthimagesLegbone.jpg',7),(8,'Charley horse','','F:fall-2014csci_226DataBase_Healthimagescervical_stenosis.jpg',7);
/*!40000 ALTER TABLE `media_assistance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL AUTO_INCREMENT,
  `disease_id` int(11) DEFAULT NULL,
  `medicine_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`medicine_id`),
  KEY `fk__Medicine__disease_id` (`disease_id`),
  CONSTRAINT `fk__Medicine__disease_id` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`disease_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,1,'Advate,Alphanate,Autoplex T'),(2,2,'Aminoxin,Anadrol-50,BiferaRx');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `Patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_name` varchar(255) DEFAULT NULL,
  `patient_DOB` date DEFAULT NULL,
  `patient_BloodGroup` char(5) DEFAULT NULL,
  `Phone_NO` varchar(255) DEFAULT NULL,
  `carrier` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_pass` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `zip_code_no` int(11) DEFAULT NULL,
  `Doctor_id` varchar(255) DEFAULT NULL,
  `History` tinytext,
  `report_password` varchar(255) DEFAULT NULL,
  `activate_code` varchar(255) NOT NULL,
  `Online_status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  PRIMARY KEY (`Patient_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (13,'<B>Alex Lopez </B>','2014-07-06','O+','3428972',NULL,'12@fake.com',NULL,NULL,'gadskd','CA',2477,'1,2',NULL,NULL,'','Inactive'),(14,'<B>Frank Garica</B>','1970-10-11','AB+','2147483647',NULL,'fake2@fake.com',NULL,NULL,'512 south able street ,milpitas','GA',1,'',NULL,NULL,'','Inactive'),(15,'Jose Crets','1989-01-01','A+','2147483647',NULL,'fake3@fake.com',NULL,NULL,'121 N fifth street clovis','CA',1,NULL,NULL,NULL,'','Inactive'),(16,'Candy Cruz','1990-12-20','b+','2147483647',NULL,'fake4@fake.com',NULL,NULL,'342 house no 12 street 121, san jose','CA',2,NULL,NULL,NULL,'','Inactive'),(17,'Tim Vang','1991-12-01','b+','2147483647',NULL,'fake5@fake.com',NULL,NULL,'456 street no 17 app 212 , sunny vale','CA',3,NULL,NULL,NULL,'','Inactive'),(18,'Denny Manvel','1992-03-05','Ab+','2147483647',NULL,'fake6@fake.com',NULL,NULL,'246 street no 14 app# 34, scremento','CA',5,NULL,NULL,NULL,'','Inactive'),(19,'Rocky Penez','1977-07-09','A+','2147483647',NULL,'fake7@fake.com',NULL,NULL,'345 house no 12 , mumbai','MUM',1,NULL,NULL,NULL,'','Inactive'),(20,'Sue Vang','1989-12-18','Ab+','2147483647',NULL,'fake8@fake.com',NULL,NULL,'343 house no 56 , delhi ','DEL',2,NULL,NULL,NULL,'','Inactive'),(21,'pablo','1989-10-10','A+','2147483647',NULL,'fake9@fake.com',NULL,NULL,' 7 west  street z house no 4 , delhi ','CA',NULL,NULL,NULL,NULL,'','Inactive'),(22,'Christian','1990-03-01','b+','2147483647',NULL,'fake10@fake.com',NULL,NULL,'4908 N Ninth street app 213, fresno','CA',NULL,NULL,NULL,NULL,'','Inactive'),(23,'Andrew','1990-09-09','Ab+','2147483647',NULL,'fake11@fake.com',NULL,NULL,'4908 N Ninth street app 420, fresno','CA',NULL,NULL,NULL,NULL,'','Inactive'),(25,'Nimi','0000-00-00','','0',NULL,'nimi @ 123',NULL,NULL,'24','',NULL,NULL,NULL,NULL,'','Inactive'),(26,'Nimi','0000-00-00','','0',NULL,'nimi',NULL,NULL,'24se','',NULL,NULL,NULL,NULL,'','Inactive'),(27,'Alex Lopez','1989-12-18','Ab+','2345',NULL,'ers',NULL,NULL,'12234','ca',NULL,NULL,NULL,NULL,'','Inactive'),(28,'Alex1','1989-12-18','Ab+','2345',NULL,'ers1',NULL,NULL,'12234','ca',NULL,NULL,NULL,NULL,'','Inactive'),(29,'Alex1','1989-12-18','Ab+','2345',NULL,'ers111',NULL,NULL,'12234','ca',NULL,NULL,NULL,NULL,'','Inactive'),(30,'Alex1','1989-12-18','Ab+','2345',NULL,'@',NULL,NULL,'12234','ca',NULL,NULL,NULL,NULL,'','Inactive'),(31,'Alex1','1989-12-18','Ab+','2345',NULL,'a@b.com',NULL,NULL,'12234','ca',NULL,NULL,NULL,NULL,'','Inactive'),(33,'Alex1','1989-12-18','Ab+','2345',NULL,'a@c.com',NULL,NULL,'12234','ca',NULL,NULL,NULL,NULL,'','Inactive'),(34,'Alex1','1989-12-18','Ab+','2345',NULL,'ac.com',NULL,NULL,'12234','ca',NULL,NULL,NULL,NULL,'','Inactive'),(35,'Alex1','1989-12-18','Ab+','2345',NULL,'acd.com',NULL,NULL,'12234','ca',NULL,NULL,NULL,NULL,'','Inactive'),(41,'ndkfm','2015-01-26','A','3487',NULL,'mxc@gmail.com',NULL,NULL,'mfnm','cc',4359,NULL,NULL,NULL,'','Inactive'),(42,'jndfj','2015-01-19','A','83498',NULL,'hbj@gmail.com',NULL,NULL,'ndf ','nf',84,NULL,NULL,NULL,'','Inactive'),(43,'','0000-00-00','AB','0',NULL,'',NULL,NULL,'','',0,NULL,NULL,NULL,'','Inactive'),(44,'hello','2015-01-25','A','834',NULL,'nbn@gmail.com',NULL,NULL,'n fs','jdbsf',46,NULL,NULL,NULL,'','Inactive'),(45,'sami','2015-01-18','B','456',NULL,'sam@fake.com',NULL,NULL,'gehj','fg',56,NULL,NULL,NULL,'','Inactive'),(46,'Sam1','2015-01-11','A','7654',NULL,'sam1@fake.com',NULL,NULL,'hdb','hsdfj',745,NULL,NULL,NULL,'','Inactive'),(47,'sam2','2015-01-11','A','735',NULL,'db@mail.com',NULL,NULL,'bfvx','nfbv',754,'',NULL,NULL,'','Inactive'),(48,'sam2','2015-01-12','A','8349',NULL,'bdxzc@mail.com',NULL,NULL,'8349','nd',84,'',NULL,NULL,'','Inactive'),(51,'hello1','2015-01-25','B','6567',NULL,'hello@fake.com',NULL,NULL,'efgv','sa',34,'',NULL,NULL,'','Inactive'),(52,'hee1','2015-01-18','B','324',NULL,'hee1@fake.com',NULL,NULL,'chcc','sa',34,'',NULL,NULL,'','Inactive'),(53,'jkdv','2015-01-25','B','459',NULL,'mxvc@fake2.com',NULL,NULL,'nsdf ','jdsf',8743,'',NULL,NULL,'','Inactive'),(55,'heelo1','2015-01-04','B','6567',NULL,'dele@fake.com',NULL,NULL,'hsdb','gh',34,'',NULL,NULL,'','Inactive'),(57,'hello2','2015-01-04','B','43425',NULL,'fske@fake.com',NULL,NULL,'hbf','sa',34,'',NULL,NULL,'','Inactive'),(58,'niki','2015-01-04','A','35324',NULL,'nikki@fake.com',NULL,NULL,'sdhfbNds','da',324,'',NULL,NULL,'','Inactive'),(61,'niiki2','2015-01-04','A','3453',NULL,'sjbdsj@fake.com',NULL,NULL,'adsn ','x',0,'2,3',NULL,NULL,'','Inactive'),(62,'demo p','2015-01-11','B','343223',NULL,'edmp_p@demo.com',NULL,NULL,'512 south able street ,milpitas','CA',34,'1,2,3',NULL,NULL,'','Inactive'),(64,'demmo2','2015-01-11','B','325342',NULL,'demmo2@fake2.com',NULL,NULL,'dsf','ds',345,'1,2,3',NULL,NULL,'','Inactive'),(66,'demmo5','2015-01-18','B','324',NULL,'demmo5@fake.com',NULL,NULL,'xzc','dfs',432,'1,2,3',NULL,NULL,'','Inactive'),(73,'Nitesh','2015-01-18','A','12345',NULL,'nitesh@fake.com',NULL,NULL,'newdelhi','newdelhi',34,'',NULL,NULL,'','Inactive'),(76,'nitesh garg','2015-01-11','A','1234',NULL,'niku@fake.com',NULL,NULL,'newdelhi','newdelhi',12345,'',NULL,NULL,'','Inactive'),(77,'akhil','2015-01-04','A','123456',NULL,'akhil@fake.com',NULL,NULL,'wert','wert',1341,'',NULL,NULL,'','Inactive'),(78,'gupta','2015-01-11','AB','12345',NULL,'gupta@fake.com',NULL,NULL,'erty','dfgh',1234,'',NULL,NULL,'','Inactive'),(79,'gupta1','2014-12-01','AB','123456',NULL,'gupta1@fake.com',NULL,NULL,'erty','ert',1234,'2',NULL,NULL,'','Inactive'),(92,'','0000-00-00','AB','0',NULL,'fake2@fake.co',NULL,NULL,'','',0,'0',NULL,NULL,'','Inactive'),(95,'neerja','2015-01-04','A','1233',NULL,'neer@fake.com','827ccb0eea8a706c4c34a16891f84e7b',NULL,'delhi','wert',1233,'Array',NULL,NULL,'','Inactive'),(96,'tiger','1970-10-11','AB','321654987',NULL,'tiger@fake.com','81dc9bdb52d04dc20036dbd8313ed055',NULL,'512 south able street ,milpitas','CA',1234,'',NULL,NULL,'','Inactive'),(97,'tiger2','1970-10-11','AB','12345',NULL,'tiger2@fake.com','827ccb0eea8a706c4c34a16891f84e7b',NULL,'erty','wert',23456,'1,2,3',NULL,NULL,'','Inactive'),(98,'demlo dr','1970-10-11','AB','2147483647',NULL,'007@fake.com','c7fcf6103b4d1b4c5f1436041da53b03',NULL,'512 south able street ,milpitas','CA',1234,'',NULL,NULL,'','Inactive'),(99,'','0000-00-00','AB','0',NULL,'demo1234@fake.com','6e9bece1914809fb8493146417e722f6',NULL,'','',0,'1,2',NULL,NULL,'','Inactive'),(100,'nicholas','1988-12-05','B-','5597097238',NULL,'nicholas@fake.com','532ab4d2bbcc461398d494905db10c95',NULL,'H-15,clovis','clovis1',8789,'2,4,65,67,87',NULL,'532ab4d2bbcc461398d494905db10c95','','Active'),(101,'nimmi','0000-00-00','AB','1234',NULL,'nimmi@fake.com','1c4afc7d7aad72d61d96f32e65ddf0dd',NULL,'123 south street','CA',93726,'2',NULL,NULL,'','Inactive'),(102,'Nikita','0000-00-00','AB','2147483647','@txt.att.net','Nikita@fake.com','81dc9bdb52d04dc20036dbd8313ed055',NULL,'4908 N Ninth street app 211, fresno','CA',93726,'2',NULL,NULL,'','Inactive'),(111,'sdf','0000-00-00','AB','435','@txt.att.net','fds','818f9c45cfa30eeff277ef38bcbe9910',NULL,'dgf','rr',4,'2',NULL,'12eccbdd9b32918131341f38907cbbb5','','Inactive'),(112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'36a85ddc24eed5f4d40314366a64739d','','Inactive'),(113,'Neru','0000-00-00','AB','2147483647','@txt.att.net','Neru@fake.com','2c6d5c899c3ca5312be880af3266c4c0',NULL,'clovis','Fresno',93726,'2',NULL,'2c6d5c899c3ca5312be880af3266c4c0','','Inactive'),(114,'solanki','0000-00-00','AB','123','@txt.att.net','samiksha11@mail.fresnostate.edu','60fd5215a6bc1e13f1ae813877045fdf',NULL,'sads','dsf',453,'84',NULL,'60fd5215a6bc1e13f1ae813877045fdf','','Inactive'),(117,'sam','0000-00-00','AB','45654','@txt.att.net','samiksha.solanki11@gmail.com','8ee41555486ef053f9edf44243b45e87',NULL,'','cxv',0,'87',NULL,'d41d8cd98f00b204e9800998ecf8427e','','Inactive'),(118,'nishasol','0000-00-00','AB','2147483647','@tmomail.net','nisha.solanki08@gmail.com','c459e0c88b966abcadaa6d881b1a3f58',NULL,'hello','ca',213,'87,88',NULL,'c459e0c88b966abcadaa6d881b1a3f58','','Inactive'),(119,'healthtest','1970-01-01','AB','0','@txt.att.net','healthcare818@gmail.com','051f1bd55d3fe58a2ab064bebed6d6bf',NULL,'','',0,'1',NULL,'d41d8cd98f00b204e9800998ecf8427e','','Inactive'),(120,'samsol','1970-01-01','AB','0','@txt.att.net','sam@gmail','6c754251eb43444a430bbc8fafb0f3dd',NULL,'','',0,'87',NULL,'d41d8cd98f00b204e9800998ecf8427e','$8ImcUc5xi1426828129','Inactive'),(121,'johny','1970-01-01','AB','0','@txt.att.net','johnynew25@gmail.com','fc5371c7ea2077eafa84e0052d3d42de',NULL,'','',0,'87',NULL,'d41d8cd98f00b204e9800998ecf8427e','!p8QQGAlh61426828410','Inactive'),(122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$arrdoctors',NULL,'','Inactive'),(123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$arrdoctors',NULL,'','Inactive'),(124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$arrdoctors',NULL,'','Inactive'),(125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$arrdoctors',NULL,'','Inactive'),(126,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$arrdoctors',NULL,'','Inactive'),(127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$arrdoctors',NULL,'','Inactive'),(128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$arrdoctors',NULL,'','Inactive'),(129,'nitesh','2015-03-01','AB','567890','@tmomail.net','nik@nik.com','388c6df5ce99c934d9c5f0bf29d758e4',NULL,'gfrbjghdfkj','khdf j',76345,'87',NULL,'d41d8cd98f00b204e9800998ecf8427e','KRReG@lQh$1427695683','Inactive'),(130,'nik','1989-02-07','B','234567','@txt.att.net','nitesh.g@parangat.com','388c6df5ce99c934d9c5f0bf29d758e4',NULL,'ndfdgn','haryana',45678,'2',NULL,'d41d8cd98f00b204e9800998ecf8427e','','Active'),(131,'bijender','1970-06-06','0','2147483647','@vtext.com','bijend.com','a707bab076ed9c74c5dd9e47f1e59507',NULL,'matiala','delhi',110059,'90',NULL,'d41d8cd98f00b204e9800998ecf8427e','','Active'),(132,'biju','2015-04-12','A','9811171182','@vtext.com','bijender513@l.com','845193b3b365af2374fba5269b02d707',NULL,'matiala','delhi',110059,'1,2,3,4,5',NULL,'177e7577bccf71b5b8e8535a8b6f2c6f','','Active'),(133,'biju1','2015-04-12','A','458594','@tmomail.net','bij5113@gmail.com','174e5c040140369e95a67c308d2587d0',NULL,'nvfj','ds',324324,'1,2,3',NULL,'d41d8cd98f00b204e9800998ecf8427e','ikrFjYEqQB1429081721','Inactive'),(134,'bhhhh','2015-04-05','A','78798','@tmomail.net','bijender5113.com','a707bab076ed9c74c5dd9e47f1e59507',NULL,'vhjvhjb','df',6454645,'1,2,3',NULL,'d41d8cd98f00b204e9800998ecf8427e','QsjeMUHTx81429083008','Inactive'),(135,'demo123','2015-04-13','A','43759438','@txt.att.net','bijender51@gmacom','62cc2d8b4bf2d8728120d052163a77df',NULL,'dfjbdj','dkh',45684,'1,2',NULL,'d229204b88971c94c5d62a5e785ad8cf','','Active'),(136,'hfjdf','1970-01-01','AB','','@txt.att.net','mcnv ','a707bab076ed9c74c5dd9e47f1e59507',NULL,'','',0,'',NULL,'6d9e403d05e4d1e08dc0d67c92002dc8','','Active'),(137,'biju','2015-04-05','A','5467845','@txt.att.net','bijender5kjdsckj113@gmail.com','a707bab076ed9c74c5dd9e47f1e59507',NULL,'fghf','uvhdfj',854748,'1,2,3',NULL,'d41d8cd98f00b204e9800998ecf8427e','qcorkKVViT1429084327','Inactive'),(138,'B.solanki','1970-04-05','AB+','9811171182','@tmomail.net','bijendermail.com','a707bab076ed9c74c5dd9e47f1e59507',NULL,'matiala','delhi',110059,'2,3',NULL,'6c4e2f1b4019b8cd05126e81d028342c','','Active'),(139,'vishnu','2015-04-19','B','456789','','vishnu@mail.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'fresno','fresno',93726,'2',NULL,'d41d8cd98f00b204e9800998ecf8427e','O49OTFBwVu1429248475','Inactive'),(140,'neksh','2015-04-19','B','24234','','neksh@gmail.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'dsfsfsd','dsfs',435,'2',NULL,'d41d8cd98f00b204e9800998ecf8427e','8SdZPHswwS1429251088','Inactive'),(141,'solsami804','1991-04-01','AB','5597097238','@tmomail.net','solsami804@gmail.com','d2f91018401a8c5f00f11ad0dba202fe',NULL,'clovis','fresno',123456,'1,2,3',NULL,'d41d8cd98f00b204e9800998ecf8427e','HisvqfCwUh1430172037','Inactive'),(142,'Bijender','1970-05-06','AB+','9811171182','@txt.att.net','bijender5113@gmail.com','a707bab076ed9c74c5dd9e47f1e59507',NULL,'H-53','DELHI',110059,'1,2,93',NULL,'d41d8cd98f00b204e9800998ecf8427e','7NcI5#ESIA1430516437','Inactive'),(143,'akhil','1991-01-01','AB+','9999916876','@txt.att.net','verma.akhil01@gmail.com','b7af98b3e90e656ed605c23577116862',NULL,'vikas puri','DELHI',110089,'2,93',NULL,'d41d8cd98f00b204e9800998ecf8427e','oocpRwEWHS1430548711','Active'),(144,'Ashok','1998-05-24','A+','56789734','@txt.att.net','ashok.mac3@gmail.com','bb2d1a99fc70551dab323d042deb6843',NULL,'Los Angeles','LA',1233,'93',NULL,'2bb624c37dfe7ce34a8ccd18ddfee413','','Active');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_bp`
--

DROP TABLE IF EXISTS `patient_bp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_bp` (
  `patient_bp_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `bp_date` date NOT NULL,
  `bp_time` varchar(255) DEFAULT NULL,
  `bp_certi` varchar(255) DEFAULT NULL,
  `systolic` varchar(255) DEFAULT NULL,
  `diastolic` varchar(255) DEFAULT NULL,
  `status` enum('read','unread') DEFAULT NULL,
  PRIMARY KEY (`patient_bp_id`),
  KEY `fk__patient_bp_patient` (`patient_id`),
  KEY `fk__patient_bp_doctor` (`doctor_id`),
  CONSTRAINT `fk__patient_bp_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`Doctors_id`),
  CONSTRAINT `fk__patient_bp_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`Patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_bp`
--

LOCK TABLES `patient_bp` WRITE;
/*!40000 ALTER TABLE `patient_bp` DISABLE KEYS */;
INSERT INTO `patient_bp` VALUES (1,100,2,'2015-04-11','Evening','','43','76',NULL),(2,100,2,'2015-05-12','Evening ','','43','76',NULL),(11,100,NULL,'2015-02-05','Evening','','99','100',NULL),(12,100,NULL,'2015-01-06','Evening','','99','130',NULL),(13,100,NULL,'2015-01-06','Evening','','99','130',NULL),(14,100,NULL,'2015-01-01','Evening','','121','82',NULL),(15,100,NULL,'2015-01-01','Evening','','121','82',NULL),(16,100,NULL,'2015-01-05','Evening','','141','92',NULL),(17,100,NULL,'2015-01-05','Evening','','141','92',NULL),(18,100,NULL,'2015-01-05','Evening','','141','92',NULL),(19,100,NULL,'0000-00-00','Morning','','181','111',NULL),(20,100,NULL,'0000-00-00','Morning','','181','111',NULL),(21,100,NULL,'2015-04-13','Morning','','122','89',NULL),(22,100,NULL,'2015-04-13','Morning','','122','89',NULL),(23,100,NULL,'2015-04-13','Morning','','122','89',NULL),(24,100,NULL,'2015-05-01','Morning','','160','100',NULL),(25,142,NULL,'2015-05-01','Evening','','181','111',NULL),(26,142,NULL,'2015-05-01','Evening','','80','77',NULL),(27,142,NULL,'2015-05-01','Evening','','80','77',NULL),(28,143,NULL,'2015-05-10','Evening','','181','120',NULL);
/*!40000 ALTER TABLE `patient_bp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_bp1`
--

DROP TABLE IF EXISTS `patient_bp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_bp1` (
  `patient_bp1_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` varchar(255) DEFAULT NULL,
  `bp_date` date DEFAULT NULL,
  `bp_time` varchar(255) DEFAULT NULL,
  `bp_certi` varchar(255) DEFAULT NULL,
  `systolic` varchar(255) DEFAULT NULL,
  `diastolic` varchar(255) DEFAULT NULL,
  `status` enum('read','unread') DEFAULT NULL,
  PRIMARY KEY (`patient_bp1_id`),
  KEY `fk__patient_bp1_patient` (`patient_id`),
  CONSTRAINT `fk__patient_bp1_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`Patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_bp1`
--

LOCK TABLES `patient_bp1` WRITE;
/*!40000 ALTER TABLE `patient_bp1` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_bp1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_history`
--

DROP TABLE IF EXISTS `patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_history` (
  `patient_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `medicine` varchar(255) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `medcine_color` varchar(255) DEFAULT NULL,
  `alleregy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patient_history_id`),
  KEY `fk__patient_history_disease` (`disease_id`),
  KEY `fk__patient_history_patient` (`patient_id`),
  CONSTRAINT `fk__patient_history` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`disease_id`),
  CONSTRAINT `fk__patient_history_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`Patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_history`
--

LOCK TABLES `patient_history` WRITE;
/*!40000 ALTER TABLE `patient_history` DISABLE KEYS */;
INSERT INTO `patient_history` VALUES (1,NULL,NULL,'',NULL,'',''),(2,NULL,NULL,'',NULL,'',''),(3,NULL,NULL,'',NULL,'',''),(4,NULL,NULL,'',NULL,'',''),(5,100,1,'cmvncxmvn',NULL,'ED4940','jvnxkcvn'),(6,100,1,'cmvncxmvn',NULL,'ED4940','jvnxkcvn'),(9,100,1,'jdfvnjdf',NULL,'ED4940','fdvdfv'),(10,100,1,'sdvdsv',NULL,'ED4940','dsvfcsdfv'),(11,100,2,'vfv',NULL,'EDE72B','dsvdfv'),(12,100,2,'vfv',NULL,'EDE72B','dsvdfv'),(13,138,1,'disprin',NULL,'ED4940','755'),(14,138,1,'disprin',NULL,'ED4940','755'),(15,100,3,'thyronorm',NULL,'EDED02','flowers'),(16,100,3,'thyronorm',NULL,'EDED02','flowers'),(19,100,2,'sdds',NULL,'ED4940','ret'),(20,100,2,'sdds',NULL,'ED4940','ret'),(21,142,5,'zentil',NULL,'FCFCFC','Dust'),(22,142,5,'zentil',NULL,'FCFCFC','Dust'),(23,142,4,'combiflame',NULL,'FFF70F','Red Rose'),(24,142,4,'combiflame',NULL,'FFF70F','Red Rose'),(25,143,5,'Trylon',NULL,'FFFBF5','Dust'),(26,143,3,'Thyronorm 100mcg',NULL,'FFFF14','Red Rose');
/*!40000 ALTER TABLE `patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_insurance_acceptance`
--

DROP TABLE IF EXISTS `patient_insurance_acceptance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_insurance_acceptance` (
  `patient_insurance_acceptance_id` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_id` int(11) DEFAULT NULL,
  `Insurance_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_insurance_acceptance_id`),
  KEY `fk__patient_insurance_acceptance__patient` (`Patient_id`),
  KEY `fk__patient_insurance_acceptance__Insurance` (`Insurance_id`),
  CONSTRAINT `fk__patient_insurance_acceptance__Insurance` FOREIGN KEY (`Insurance_id`) REFERENCES `insurance` (`Insurance_id`),
  CONSTRAINT `fk__patient_insurance_acceptance__patient` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`Patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_insurance_acceptance`
--

LOCK TABLES `patient_insurance_acceptance` WRITE;
/*!40000 ALTER TABLE `patient_insurance_acceptance` DISABLE KEYS */;
INSERT INTO `patient_insurance_acceptance` VALUES (3,15,3),(4,16,2),(5,17,4),(6,18,5),(7,19,6),(8,20,7),(9,21,8),(10,22,9),(11,23,1),(14,15,1),(15,16,1),(16,17,4),(17,17,5),(18,18,8),(19,19,9),(29,13,1),(30,13,2),(31,57,2),(32,58,3),(33,61,2),(34,66,1),(35,66,2),(36,66,3),(39,14,1),(40,14,2),(41,73,1),(42,73,2),(43,76,1),(44,76,2),(45,76,3),(46,77,2),(47,77,3),(48,78,1),(49,78,2),(50,78,3),(51,79,3),(52,95,1),(53,95,2),(54,95,3),(55,96,1),(56,96,2),(57,97,1),(58,97,2),(59,97,3),(60,98,2),(61,98,3),(62,98,4),(69,99,1),(70,99,2),(71,99,3),(76,101,1),(77,101,2),(78,101,3),(79,102,1),(80,102,2),(81,102,3),(82,111,1),(83,113,1),(84,113,2),(85,113,3),(86,114,1),(87,114,2),(88,114,3),(89,117,1),(98,118,1),(99,118,2),(100,118,3),(101,121,2),(102,129,1),(103,129,2),(104,129,3),(128,130,1),(129,130,2),(130,130,3),(134,131,1),(135,131,2),(136,131,3),(145,132,1),(146,132,2),(147,132,3),(148,133,1),(149,133,2),(150,133,3),(151,134,1),(152,134,2),(153,134,3),(154,135,1),(155,135,2),(156,135,3),(157,137,1),(158,137,2),(159,137,3),(163,138,1),(164,138,2),(165,138,3),(166,139,1),(167,139,2),(168,139,3),(169,140,1),(170,140,2),(197,141,1),(198,141,2),(199,141,3),(200,141,4),(201,141,5),(202,141,6),(203,141,7),(204,141,8),(286,100,1),(287,100,2),(288,100,3),(289,100,4),(290,100,5),(291,100,6),(292,100,7),(293,100,8),(294,100,9),(296,142,1),(297,142,2),(298,142,3),(299,142,4),(300,142,5),(301,142,6),(302,142,7),(303,142,8),(304,142,9),(313,143,1),(314,143,2),(315,143,3),(316,143,4),(317,143,5),(318,143,6),(319,143,7),(320,143,8),(321,143,9),(336,144,1),(337,144,2),(338,144,3),(339,144,4),(340,144,5),(341,144,6),(342,144,7);
/*!40000 ALTER TABLE `patient_insurance_acceptance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_meas`
--

DROP TABLE IF EXISTS `patient_meas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_meas` (
  `patient_meas_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `bp_id` int(11) DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  PRIMARY KEY (`patient_meas_id`),
  KEY `fk_patient` (`patient_id`),
  KEY `fk_doctor` (`doctor_id`),
  KEY `fk_bp_id` (`bp_id`),
  CONSTRAINT `fk_bp_id` FOREIGN KEY (`bp_id`) REFERENCES `patient_bp` (`patient_bp_id`),
  CONSTRAINT `fk_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`Doctors_id`),
  CONSTRAINT `fk_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`Patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_meas`
--

LOCK TABLES `patient_meas` WRITE;
/*!40000 ALTER TABLE `patient_meas` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_meas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_message`
--

DROP TABLE IF EXISTS `patient_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_message` (
  `patient_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `message` text,
  `nda_form` varchar(255) DEFAULT NULL,
  `date_form` datetime DEFAULT NULL,
  `status` enum('read','unread') DEFAULT NULL,
  `schedule_date` datetime DEFAULT NULL,
  `schedule_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patient_message_id`),
  KEY `fk__patient_message_patient` (`patient_id`),
  KEY `fk__patient_message_doctor` (`doctor_id`),
  KEY `fk__patient_message_appointment_id` (`appointment_id`),
  CONSTRAINT `fk__patient_message_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  CONSTRAINT `fk__patient_message_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`Doctors_id`),
  CONSTRAINT `fk__patient_message_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`Patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_message`
--

LOCK TABLES `patient_message` WRITE;
/*!40000 ALTER TABLE `patient_message` DISABLE KEYS */;
INSERT INTO `patient_message` VALUES (1,100,2,51,'jfjdsfndsjfnds','_nda_form_p100_a51.jpg','2015-04-07 00:00:00','read',NULL,NULL),(2,138,2,127,'see me on 7th april','_nda_form_p138_a127.doc','2015-04-15 00:00:00','unread',NULL,NULL),(3,100,2,85,'your appointment date is 2nd april','','2015-04-18 00:00:00','unread',NULL,NULL),(4,100,2,73,'czxczcx','','2015-04-18 00:00:00','read',NULL,NULL),(5,100,2,85,'bring your reports with you','_nda_form_p100_a85.doc','2015-04-18 00:00:00','read','2014-04-19 04:52:00',NULL),(6,130,2,125,'bring old reports','','2015-04-18 00:00:00','unread','2015-04-19 05:25:00',NULL),(7,100,2,83,'see me','','2015-04-19 00:00:00','read','2015-04-19 06:16:00',NULL),(8,100,2,85,'','','2015-04-19 00:00:00','read','2014-04-19 06:19:00',NULL),(9,100,2,72,'','','2015-04-19 00:00:00','unread','2015-04-19 06:21:00',NULL),(10,100,2,83,'','','2015-04-19 00:00:00','read','2015-04-19 06:30:00',NULL),(11,138,2,127,'','','2015-04-19 00:00:00','unread','2015-04-19 06:32:00',NULL),(12,100,2,80,'','','2015-04-19 00:00:00','unread','2015-04-19 06:34:00',NULL),(13,100,2,85,'','','2015-04-19 00:00:00','read','2015-04-19 07:55:00',NULL),(14,100,2,73,'','','2015-04-19 00:00:00','read','2015-04-19 08:15:00',NULL),(15,100,2,85,'','','2015-04-19 00:00:00','unread','2015-04-19 11:30:00',NULL),(16,100,2,80,'bnbn','','2015-04-19 00:00:00','unread','2015-04-19 11:46:00',NULL),(17,100,2,51,'','','2015-04-19 00:00:00','unread','2015-04-19 12:25:00',NULL),(18,100,2,52,'','','2015-04-20 00:00:00','unread','2015-04-20 11:20:00',NULL),(19,100,2,51,'jdhfjdfhdkjghdfkj','','2015-04-21 00:00:00','read','2015-04-21 10:54:00',NULL),(20,138,2,127,'','','2015-04-21 00:00:00','unread','2015-04-21 10:55:00',NULL),(21,130,2,131,'see me after some days','','2015-04-21 00:00:00','unread','2015-04-21 10:57:00',NULL),(22,130,2,125,'','','2015-04-21 00:00:00','unread','2015-04-21 12:36:00',NULL),(23,100,2,82,'','','2015-04-21 00:00:00','read','2015-04-21 12:37:00',NULL),(24,100,2,81,'','','2015-04-21 00:00:00','read','2015-04-21 12:38:00',NULL),(25,142,93,133,'See me on 12 may\'2015','','2015-05-01 00:00:00','read','2015-05-12 07:38:00',NULL),(26,142,93,133,'I have forget to provide you NDA form here is your NDA form','_nda_form_p142_a133.doc','2015-05-01 00:00:00','unread','0000-00-00 00:00:00',NULL),(27,143,93,134,'PLEASE SEE ME ON 10TH JULY,2015','_nda_form_p143_a134.doc','2015-05-03 00:00:00','read','2015-07-10 10:11:00',NULL),(28,142,93,133,'dg fg dfgdf','_nda_form_p142_a133.doc','2015-05-03 00:00:00','unread','2015-05-03 10:30:00',NULL),(29,143,93,134,'forget','_nda_form_p143_a134.doc','2015-05-03 00:00:00','read','0000-00-00 00:00:00',NULL),(30,138,2,127,'This is your appointment time','_nda_form_p138_a127.docx','2015-05-05 00:00:00','unread','2015-08-06 01:15:00',NULL),(31,142,93,133,'This is your appointment date please see me with your lab results','_nda_form_p142_a133.docx','2015-05-05 00:00:00','unread','2015-05-06 01:16:00',NULL),(32,143,93,134,'This should be schedule','_nda_form_p143_a134.docx','2015-05-05 00:00:00','unread','2012-05-06 00:00:00',NULL),(33,143,93,136,'','','2015-05-05 00:00:00','unread','2015-05-06 00:00:00',NULL),(34,143,93,136,'','','2015-05-05 00:00:00','unread','2015-05-06 01:59:00',NULL),(35,143,93,136,'','','2015-05-05 00:00:00','unread','1970-01-01 00:00:00',NULL),(36,143,93,136,'','_nda_form_p143_a136.docx','2015-05-05 00:00:00','unread','2015-05-11 11:08:00',NULL),(37,143,93,135,'','','2015-05-05 00:00:00','unread','0000-00-00 00:00:00',NULL),(38,143,93,135,'this is your schedule','','2015-05-05 00:00:00','read','2015-05-11 11:25:00',NULL),(39,143,93,136,'','','2015-05-05 00:00:00','unread','2015-01-11 23:15:00',NULL),(40,143,93,138,'','','2015-05-05 00:00:00','unread','2015-01-01 23:24:00',NULL),(41,143,93,138,'','','2015-05-05 00:00:00','unread','2015-01-01 23:24:00',NULL),(42,143,93,138,'','','2015-05-05 00:00:00','unread','2015-01-01 23:24:00',NULL),(43,143,93,138,'','','2015-05-05 00:00:00','unread','2015-01-01 23:24:00',NULL),(44,143,93,139,'','','2015-05-05 00:00:00','unread','2015-05-11 15:15:00',NULL),(45,143,93,139,'','','2015-05-05 00:00:00','unread','2015-05-05 23:20:44',NULL),(46,143,93,140,'','_nda_form_p143_a140.docx','2015-05-06 00:00:00','unread','2015-06-06 09:06:00',NULL);
/*!40000 ALTER TABLE `patient_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_report`
--

DROP TABLE IF EXISTS `patient_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_report` (
  `patient_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `report_type_id` int(11) DEFAULT NULL,
  `report_information` varchar(255) DEFAULT NULL,
  `doctors_id` int(11) DEFAULT NULL,
  `status` enum('1','2') NOT NULL COMMENT '1 for patient_upload,2 for doctor_upload',
  `share_report_to` varchar(255) DEFAULT NULL,
  `share_reason` text NOT NULL,
  PRIMARY KEY (`patient_report_id`),
  KEY `fk__patient_report__patient` (`patient_id`),
  KEY `fk__patient_report__reports` (`report_type_id`),
  KEY `fk__patient_report__doctor` (`doctors_id`),
  CONSTRAINT `fk__patient_report_doctor` FOREIGN KEY (`doctors_id`) REFERENCES `doctors` (`Doctors_id`),
  CONSTRAINT `fk__patient_report_report_type` FOREIGN KEY (`report_type_id`) REFERENCES `reports` (`reports_id`),
  CONSTRAINT `fk__patient_report__patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`Patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_report`
--

LOCK TABLES `patient_report` WRITE;
/*!40000 ALTER TABLE `patient_report` DISABLE KEYS */;
INSERT INTO `patient_report` VALUES (4,64,1,'_report2193290374.png',2,'1',NULL,''),(5,64,3,'_report1149958145.png',2,'1',NULL,''),(6,64,3,'_report3632803146.png',2,'1',NULL,''),(7,64,1,'_report4217747617.png',2,'1',NULL,''),(8,64,1,'_report2305753376.png',2,'1',NULL,''),(9,64,1,'_report1406770189.png',2,'2',NULL,''),(11,64,1,'_report1800636329.png',2,'2',NULL,''),(12,101,1,'_report1817731841.png',2,'2',NULL,''),(15,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(16,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(17,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(18,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(22,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(23,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(24,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(25,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(26,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(27,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(28,13,1,'_report1820851456.png',2,'2',NULL,''),(29,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(30,100,1,'_report1165306855.jpg',NULL,'1',NULL,''),(31,100,3,'_report2501761832.png',NULL,'1',NULL,''),(34,100,6,'_report5785051397.png',NULL,'1',NULL,''),(35,100,1,'\'_report5785051397.png\'',2,'2','3',''),(36,100,2,'_report5785051397.png',2,'2','4',''),(37,100,2,NULL,4,'2','4',''),(38,100,1,'_report2745440937.doc',2,'2',NULL,''),(39,100,1,'_report2494204660.doc',2,'2',NULL,''),(40,100,1,'_report1630820637.doc',2,'2',NULL,''),(41,100,1,'_report1942971608.doc',2,'2',NULL,''),(42,100,1,'_report2248830925.docx',2,'2',NULL,''),(43,100,1,'_report2319348821.JPG',NULL,'1',NULL,''),(44,100,1,'_report3363155923.JPG',NULL,'1',NULL,''),(45,100,1,'_report2811141177.JPG',NULL,'1',NULL,''),(46,100,1,'_report3925328205.JPG',NULL,'1',NULL,''),(47,100,1,'_report3715622657.JPG',NULL,'1',NULL,''),(48,100,1,'_report7395483814.JPG',NULL,'1',NULL,''),(49,100,1,'_report3506203192.JPG',NULL,'1',NULL,''),(50,100,1,'_report6584412530.JPG',NULL,'1',NULL,''),(52,100,1,'_report4602924415.JPG',2,'2',NULL,''),(53,100,1,'_report1202479639.JPG',NULL,'1',NULL,''),(54,142,1,'_report5995298666.JPG',NULL,'1',NULL,''),(55,142,3,'_report2966893224.JPG',NULL,'1',NULL,''),(56,142,6,'_report3923480273.JPG',NULL,'1',NULL,''),(57,143,1,'_report3306144583.JPG',NULL,'1',NULL,''),(58,143,1,'_report2433652012.JPG',NULL,'1',NULL,''),(59,143,3,'_report5504763007.jpg',NULL,'1',NULL,''),(60,143,1,'_report1245043511.JPG',93,'2',NULL,''),(61,143,3,'_report1765982401.JPG',93,'2',NULL,''),(62,143,3,'_report2547890687.JPG',93,'2',NULL,''),(63,143,2,'_report3701665954.jpg',93,'2',NULL,''),(64,144,1,'_report9107528400.JPG',NULL,'1',NULL,''),(65,144,2,'_report2543525988.JPG',NULL,'1',NULL,''),(66,144,2,'_report3549861399.JPG',NULL,'1',NULL,'');
/*!40000 ALTER TABLE `patient_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prescription` (
  `Prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `Doctors_id` int(11) DEFAULT NULL,
  `Patient_id` int(11) DEFAULT NULL,
  `prescription_dts` datetime DEFAULT NULL,
  `prescription_Info` text,
  PRIMARY KEY (`Prescription_id`),
  KEY `fk__Prescription__Doctors` (`Doctors_id`),
  KEY `fk__Prescription__Patient` (`Patient_id`),
  CONSTRAINT `fk__Prescription__Patient` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`Patient_id`),
  CONSTRAINT `fk___Prescription_Doctors` FOREIGN KEY (`Doctors_id`) REFERENCES `doctors` (`Doctors_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (1,2,100,'2015-04-15 22:07:55','<p>\\r\\n	jgkfgfkgmkghkfgnm</p>\\r\\n'),(2,2,100,'2015-04-15 22:18:15','<p>\\r\\n	dnfv dmfv md</p>\\r\\n'),(3,2,100,'2015-04-15 22:34:38',''),(4,2,100,'2015-04-15 22:46:34',''),(5,2,100,'2015-04-15 22:48:10',''),(6,2,100,'2015-04-15 22:48:48',''),(7,2,100,'2015-04-15 23:08:30',''),(8,2,100,'2015-04-15 23:08:35',''),(9,2,100,'2015-04-15 23:08:48',''),(10,2,100,'2015-04-16 02:28:41','<p>\\r\\n	dsfddfgdf</p>\\r\\n'),(11,2,100,'2015-04-16 05:17:16',''),(12,2,100,'2015-04-16 05:17:41',''),(13,2,100,'2015-04-16 05:18:29',''),(14,2,100,'2015-04-16 05:21:11',''),(15,2,100,'2015-04-16 05:39:18','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(16,2,100,'2015-04-16 05:39:22','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(17,2,100,'2015-04-16 06:11:47','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(18,2,100,'2015-04-16 06:12:05','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(19,2,100,'2015-04-16 06:12:31','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(20,2,100,'2015-04-16 06:32:24','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(21,2,100,'2015-04-16 06:32:44','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(22,2,100,'2015-04-16 06:34:31','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(23,2,100,'2015-04-16 06:34:52','<p>\\r\\n	kjdfgndfgkdfg</p>\\r\\n'),(24,2,100,'2015-04-16 06:35:20',''),(25,2,100,'2015-04-16 06:36:43',''),(26,2,100,'2015-04-16 06:36:54',''),(27,2,100,'2015-04-16 06:37:27',''),(28,2,100,'2015-04-16 06:43:33',''),(29,2,100,'2015-04-16 06:44:16','<p>\\r\\n	hello</p>\\r\\n'),(30,2,100,'2015-04-16 06:47:58','<p>\\r\\n	hello</p>\\r\\n'),(31,2,100,'2015-04-16 06:48:13','<p>\\r\\n	hello</p>\\r\\n'),(32,2,100,'2015-04-16 06:49:52','<p>\\r\\n	hello</p>\\r\\n'),(33,2,100,'2015-04-16 06:50:07','<p>\\r\\n	hello</p>\\r\\n'),(34,2,100,'2015-04-16 06:50:40','<p>\\r\\n	hello</p>\\r\\n'),(35,2,100,'2015-04-16 06:51:28','<p>\\r\\n	hello</p>\\r\\n'),(36,2,100,'2015-04-16 06:51:42','<p>\\r\\n	hello</p>\\r\\n'),(37,2,100,'2015-04-16 06:54:08','<p>\\r\\n	hello</p>\\r\\n'),(38,2,100,'2015-04-16 06:54:21','<p>\\r\\n	hello</p>\\r\\n'),(39,2,100,'2015-04-16 06:54:59','<p>\\r\\n	hello</p>\\r\\n'),(40,2,100,'2015-04-16 06:55:55','<p>\\r\\n	hello</p>\\r\\n'),(41,2,100,'2015-04-16 06:57:46','<p>\\r\\n	hello</p>\\r\\n'),(42,2,100,'2015-04-16 06:57:52','<p>\\r\\n	hello</p>\\r\\n'),(43,2,100,'2015-04-16 06:58:02',''),(44,2,100,'2015-04-16 06:58:31',''),(45,2,100,'2015-04-16 08:01:41',''),(46,2,100,'2015-04-16 08:02:42',''),(47,2,100,'2015-04-16 08:03:06',''),(48,2,100,'2015-04-16 08:03:19','<p>\\r\\n	see later</p>\\r\\n'),(49,2,100,'2015-04-16 08:04:18','<p>\\r\\n	see later</p>\\r\\n'),(50,2,100,'2015-04-16 08:07:43','<p>\\r\\n	see later</p>\\r\\n'),(51,2,100,'2015-04-16 08:07:47','<p>\\r\\n	see later</p>\\r\\n'),(52,2,100,'2015-04-16 08:07:52','<p>\\r\\n	see later</p>\\r\\n'),(53,2,100,'2015-04-16 08:08:38','<p>\\r\\n	see later</p>\\r\\n'),(54,2,100,'2015-04-16 08:08:52',''),(55,2,100,'2015-04-16 08:11:12',''),(56,2,100,'2015-04-16 08:11:27',''),(57,2,100,'2015-04-16 08:12:40',''),(58,2,100,'2015-04-16 08:14:48',''),(59,2,100,'2015-04-16 08:24:07',''),(60,2,100,'2015-04-16 08:24:20',''),(61,2,100,'2015-04-16 08:27:04',''),(62,2,100,'2015-04-16 08:27:18',''),(63,2,100,'2015-04-16 08:52:32',''),(64,2,100,'2015-04-16 17:17:10',''),(65,2,100,'2015-04-16 17:17:44',''),(66,2,100,'2015-04-16 17:17:54',''),(67,2,100,'2015-04-16 17:19:03',''),(68,2,100,'2015-04-16 17:40:06',''),(69,2,100,'2015-04-16 17:40:46',''),(70,2,100,'2015-04-16 17:42:16',''),(71,2,100,'2015-04-16 17:45:08',''),(72,2,100,'2015-04-16 18:16:03',''),(73,2,100,'2015-04-16 18:16:29',''),(74,2,100,'2015-04-16 18:22:31',''),(75,2,100,'2015-04-16 18:24:20',''),(76,2,100,'2015-04-16 18:25:35',''),(77,2,100,'2015-04-16 18:27:12',''),(78,2,100,'2015-04-16 18:28:00',''),(79,2,100,'2015-04-16 18:33:59',''),(80,2,100,'2015-04-16 18:36:38',''),(81,2,100,'2015-04-16 18:36:52',''),(82,2,100,'2015-04-16 20:36:34',''),(83,2,100,'2015-04-16 20:39:23',''),(84,2,100,'2015-04-16 20:42:08',''),(85,2,100,'2015-04-16 20:43:13',''),(86,2,100,'2015-04-16 20:44:43',''),(87,2,100,'2015-04-16 20:45:43',''),(88,2,100,'2015-04-16 20:48:22',''),(89,2,100,'2015-04-16 20:48:58',''),(90,2,100,'2015-04-16 20:49:41',''),(91,2,100,'2015-04-16 20:51:48',''),(92,2,100,'2015-04-16 20:53:42',''),(93,2,100,'2015-04-16 20:56:43',''),(94,2,100,'2015-04-16 20:57:54',''),(95,2,100,'2015-04-16 20:57:58',''),(96,2,100,'2015-04-16 20:58:06',''),(97,2,100,'2015-04-16 20:58:44',''),(98,2,100,'2015-04-16 21:03:18',''),(99,2,100,'2015-04-16 21:05:10',''),(100,2,100,'2015-04-16 21:05:14',''),(101,2,100,'2015-04-16 21:06:06',''),(102,2,100,'2015-04-16 21:07:17',''),(103,2,100,'2015-04-16 21:08:09',''),(104,2,100,'2015-04-16 21:09:58',''),(105,2,100,'2015-04-16 21:10:35',''),(106,2,100,'2015-04-16 21:11:47','<p>\\r\\n	see me this time</p>\\r\\n'),(107,2,100,'2015-04-16 21:13:05','<p>\\r\\n	see me this time</p>\\r\\n'),(108,2,100,'2015-04-16 21:13:15','<p>\\r\\n	see me this time</p>\\r\\n'),(109,2,100,'2015-04-16 21:13:29','<p>\\r\\n	see me this time</p>\\r\\n'),(110,2,100,'2015-04-16 21:14:24','<p>\\r\\n	see me this time</p>\\r\\n'),(111,2,100,'2015-04-16 21:14:28','<p>\\r\\n	see me this time</p>\\r\\n'),(112,2,100,'2015-04-16 21:14:46','<p>\\r\\n	see me this time</p>\\r\\n'),(113,2,100,'2015-04-16 21:15:02','<p>\\r\\n	see me this time</p>\\r\\n'),(114,2,100,'2015-04-16 21:15:34','<p>\\r\\n	see me this time</p>\\r\\n'),(115,2,100,'2015-04-16 21:16:51','<p>\\r\\n	see me this time</p>\\r\\n'),(116,2,100,'2015-04-16 21:18:04','<p>\\r\\n	see me this time</p>\\r\\n'),(117,2,100,'2015-04-16 21:18:34','<p>\\r\\n	see me this time</p>\\r\\n'),(118,2,100,'2015-04-16 21:18:39','<p>\\r\\n	see me this time</p>\\r\\n'),(119,2,135,'2015-04-18 02:11:54',''),(120,2,135,'2015-04-18 02:12:01',''),(121,2,138,'2015-04-18 02:22:19','<p>\\r\\n	see me after following days</p>\\r\\n'),(122,2,138,'2015-04-21 04:26:05','<p>\\r\\n	hdfkjhdfkjghdfkj</p>\\r\\n'),(123,2,138,'2015-04-21 04:28:38','<p>\\r\\n	hdfkjhdfkjghdfkj</p>\\r\\n'),(124,2,100,'2015-04-30 06:29:37','<p>\\r\\n	Please see me after few days</p>\\r\\n'),(125,2,100,'2015-04-30 06:30:58','<p>\\r\\n	Please see me after few days</p>\\r\\n'),(126,2,100,'2015-04-30 06:31:31','<p>\\r\\n	Please see me after few days</p>\\r\\n'),(127,93,142,'2015-05-01 22:25:57','<p>\\r\\n	Avoid eating fast food for 20 days to 30 days</p>\\r\\n'),(128,93,142,'2015-05-01 22:26:52','<p>\\r\\n	Avoid eating fast food for 20 days to 30 days</p>\\r\\n'),(129,93,142,'2015-05-01 22:45:09','<p>\\r\\n	Do excerice daily .</p>\\r\\n<p>\\r\\n	No spieces in Food</p>\\r\\n<p>\\r\\n	Schedule your next appointment after 30 days</p>\\r\\n'),(130,93,143,'2015-05-05 18:33:39',''),(131,93,143,'2015-05-05 23:22:30','<p>\\r\\n	please see me after some days</p>\\r\\n');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription_medi`
--

DROP TABLE IF EXISTS `prescription_medi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prescription_medi` (
  `prescription_medi` int(11) NOT NULL AUTO_INCREMENT,
  `prescription_id` int(11) DEFAULT NULL,
  `medicine` varchar(255) DEFAULT NULL,
  `medicine_schedule` varchar(255) DEFAULT NULL,
  `medicine_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`prescription_medi`),
  KEY `fk__prescription_medi__presc` (`prescription_id`),
  CONSTRAINT `fk__prescription_medi__presc` FOREIGN KEY (`prescription_id`) REFERENCES `prescription` (`Prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_medi`
--

LOCK TABLES `prescription_medi` WRITE;
/*!40000 ALTER TABLE `prescription_medi` DISABLE KEYS */;
INSERT INTO `prescription_medi` VALUES (1,1,'','',''),(2,2,'','',''),(3,3,'vxcvxcv,xvxccx','thrice a week,once a day','before food,before food'),(4,4,'vxcvxcv,xcvnxcmvmcxnm','thrice a week,once a day','before food,before food'),(5,5,'vxcvxcv,sdcdsc','thrice a week,once a day','before food,before food'),(6,6,'','',''),(7,10,'','thrice a week,once a day','before food,before food'),(8,NULL,'san1','once a day','before food'),(9,NULL,'san2','once a day','before food'),(10,NULL,'san1','once a day','before food'),(11,NULL,'san2','once a day','before food'),(12,41,'disprin','once a day','before food'),(13,41,'san1','once a day','before food'),(14,42,'disprin','once a day','before food'),(15,42,'san1','once a day','before food'),(16,43,'sd','once a day','before food'),(17,43,'ewr','once a day','before food'),(18,44,'disprin','thrice a week','after food'),(19,44,'sdvc','once a day','before food'),(20,45,'disprin','once a day','before food'),(21,45,'dfvd','once a day','before food'),(22,46,'disprin','once a day','before food'),(23,46,'dfvd','once a day','before food'),(24,47,'disprin','thrice a week','after food'),(25,47,'sdvc','once a day','before food'),(26,48,'disprin','once a day','before food'),(27,49,'disprin','once a day','before food'),(28,50,'disprin','once a day','before food'),(29,51,'disprin','once a day','before food'),(30,52,'disprin','once a day','before food'),(31,53,'disprin','once a day','before food'),(32,54,'cvc','thrice a week','after food'),(33,55,'cvc','thrice a week','after food'),(34,56,'cvc','thrice a week','after food'),(35,56,'fvcvc','once a day','before food'),(36,57,'cvc','thrice a week','after food'),(37,57,'fvcvc','once a day','before food'),(38,58,'cvc','thrice a week','after food'),(39,58,'fvcvc','once a day','before food'),(40,59,'cvc','thrice a week','after food'),(41,59,'fvcvc','once a day','before food'),(42,60,'c xc ','once a day','before food'),(43,60,'cxvcx','once a day','before food'),(44,61,'c xc ','once a day','before food'),(45,61,'cxvcx','once a day','before food'),(46,62,'cxvxvx','once a day','before food'),(47,62,'assas','once a day','before food'),(48,63,'cxvxvx','once a day','before food'),(49,63,'assas','once a day','before food'),(50,64,'cxvxvx','once a day','before food'),(51,64,'assas','once a day','before food'),(52,65,'cxvxvx','once a day','before food'),(53,66,'cxvxvx','once a day','before food'),(54,66,'zxc','once a day','before food'),(55,67,'cxvxvx','once a day','before food'),(56,67,'zxc','once a day','before food'),(57,68,'cxvxvx','once a day','before food'),(58,68,'zxc','once a day','before food'),(59,69,'cxvxvx','once a day','before food'),(60,69,'zxc','once a day','before food'),(61,70,'cxvxvx','once a day','before food'),(62,70,'zxc','once a day','before food'),(63,71,'hello','once a day','before food'),(64,71,'hello2','once a day','before food'),(65,72,'hello','once a day','before food'),(66,72,'hello2','once a day','before food'),(67,73,'hello','once a day','before food'),(68,73,'hello2','once a day','before food'),(69,74,'hello','once a day','before food'),(70,74,'hello2','once a day','before food'),(71,75,'hello','once a day','before food'),(72,75,'hello2','once a day','before food'),(73,76,'hello','once a day','before food'),(74,76,'hello2','once a day','before food'),(75,77,'hello','once a day','before food'),(76,77,'hello2','once a day','before food'),(77,78,'hello','once a day','before food'),(78,78,'hello2','once a day','before food'),(79,79,'hello','once a day','before food'),(80,79,'hello2','once a day','before food'),(81,80,'hello','once a day','before food'),(82,80,'hello2','once a day','before food'),(83,81,'hello','once a day','before food'),(84,81,'hello2','once a day','before food'),(85,82,'hello','once a day','before food'),(86,82,'hello2','once a day','before food'),(87,83,'hello','once a day','before food'),(88,83,'hello2','once a day','before food'),(89,84,'hello','once a day','before food'),(90,84,'hello2','once a day','before food'),(91,85,'hello','once a day','before food'),(92,85,'hello2','once a day','before food'),(93,86,'hello','once a day','before food'),(94,86,'hello2','once a day','before food'),(95,87,'hello','once a day','before food'),(96,87,'hello2','once a day','before food'),(97,88,'hello','once a day','before food'),(98,88,'hello2','once a day','before food'),(99,89,'hello','once a day','before food'),(100,89,'hello2','once a day','before food'),(101,90,'hello','once a day','before food'),(102,90,'hello2','once a day','before food'),(103,91,'hello','once a day','before food'),(104,91,'hello2','once a day','before food'),(105,92,'hello','once a day','before food'),(106,92,'hello2','once a day','before food'),(107,93,'hello','once a day','before food'),(108,93,'hello2','once a day','before food'),(109,94,'hello','once a day','before food'),(110,94,'hello2','once a day','before food'),(111,95,'hello','once a day','before food'),(112,95,'hello2','once a day','before food'),(113,96,'dvfxcvxcfv','once a day','before food'),(114,97,'dvfxcvxcfv','once a day','before food'),(115,98,'dvfxcvxcfv','once a day','before food'),(116,99,'dvfxcvxcfv','once a day','before food'),(117,100,'dvfxcvxcfv','once a day','before food'),(118,101,'dvfxcvxcfv','once a day','before food'),(119,102,'dvfxcvxcfv','once a day','before food'),(120,103,'dvfxcvxcfv','once a day','before food'),(121,103,'hello','thrice a week','after food'),(122,103,'sam2','once in 6 month','after food'),(123,104,'dvfxcvxcfv','once a day','before food'),(124,104,'hello','thrice a week','after food'),(125,104,'sam2','once in 6 month','after food'),(126,105,'dvfxcvxcfv','once a day','before food'),(127,105,'hello','thrice a week','after food'),(128,105,'sam2','once in 6 month','after food'),(129,106,'dvfxcvxcfv','once a day','before food'),(130,106,'sam1','once a day','before food'),(131,106,'sam14','once a day','before food'),(132,107,'dvfxcvxcfv','once a day','before food'),(133,107,'sam1','once a day','before food'),(134,107,'sam14','once a day','before food'),(135,108,'dvfxcvxcfv','once a day','before food'),(136,108,'sam1','once a day','before food'),(137,108,'sam14','once a day','before food'),(138,109,'dvfxcvxcfv','once a day','before food'),(139,109,'sam1','once a day','before food'),(140,109,'sam14','once a day','before food'),(141,110,'dvfxcvxcfv','once a day','before food'),(142,110,'sam1','once a day','before food'),(143,110,'sam14','once a day','before food'),(144,111,'dvfxcvxcfv','once a day','before food'),(145,111,'sam1','once a day','before food'),(146,111,'sam14','once a day','before food'),(147,112,'dvfxcvxcfv','once a day','before food'),(148,112,'sam1','once a day','before food'),(149,112,'sam14','once a day','before food'),(150,113,'dvfxcvxcfv','once a day','before food'),(151,113,'sam1','once a day','before food'),(152,113,'sam14','once a day','before food'),(153,114,'dvfxcvxcfv','once a day','before food'),(154,114,'sam1','once a day','before food'),(155,114,'sam14','once a day','before food'),(156,115,'dvfxcvxcfv','once a day','before food'),(157,115,'sam1','once a day','before food'),(158,115,'sam14','once a day','before food'),(159,116,'dvfxcvxcfv','once a day','before food'),(160,116,'sam1','once a day','before food'),(161,116,'sam14','once a day','before food'),(162,117,'dvfxcvxcfv','once a day','before food'),(163,117,'sam1','once a day','before food'),(164,117,'sam14','once a day','before food'),(165,118,'dvfxcvxcfv','once a day','before food'),(166,118,'sam1','once a day','before food'),(167,118,'sam14','once a day','before food'),(168,119,'jnjnknknkn','once a day','before food'),(169,119,'','once a day','before food'),(170,119,'','once a day','before food'),(171,120,'jnjnknknkn','once a day','before food'),(172,120,'','once a day','before food'),(173,120,'','once a day','before food'),(174,121,'disprin','once in 6 month','after food'),(175,122,'cvcv','once a day','before food'),(176,122,'cvvcv','once a day','before food'),(177,123,'cvcv','once a day','before food'),(178,123,'cvvcv','once a day','before food'),(179,124,'zentil','thrice a day','before food'),(180,124,'combiflame','once a week','after food'),(181,125,'zentil','thrice a day','before food'),(182,125,'combiflame','once a week','after food'),(183,126,'zentil','thrice a day','before food'),(184,126,'combiflame','once a day','before food'),(185,127,'Axid','once a day','before food'),(186,127,'Cytotec','twice a day','after food'),(187,128,'Axid','once a day','before food'),(188,128,'Cytotec','twice a day','after food'),(189,129,'Carafate','twice a day','after food'),(190,129,'Axid','thrice a day','before food'),(191,130,'medicine1','once a day','before food'),(192,131,'trylon','once a day','after food'),(193,131,'combiflame','twice a day','after food');
/*!40000 ALTER TABLE `prescription_medi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `relation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
INSERT INTO `relation` VALUES (1,'parent'),(2,'siblings'),(3,'spouse'),(4,'grandparent'),(5,'child'),(6,'other');
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `reports_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_type` char(255) DEFAULT NULL,
  `report_type_status` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`reports_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'Blood','1'),(2,'X-rays','1'),(3,'MRI','1'),(4,'CT-scans',NULL),(5,'Ultrasound',NULL),(6,'Urology','1');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_report`
--

DROP TABLE IF EXISTS `share_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_report` (
  `share_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `report_id` varchar(255) DEFAULT NULL,
  `share_to` varchar(255) DEFAULT NULL,
  `share_date` date DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`share_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_report`
--

LOCK TABLES `share_report` WRITE;
/*!40000 ALTER TABLE `share_report` DISABLE KEYS */;
INSERT INTO `share_report` VALUES (1,'','143','','62','2015-05-04',NULL),(2,'','143','','62','2015-05-04',NULL),(3,'93','143','62','','2015-05-04',NULL),(4,'93','143','','2,3,93','2015-05-04',NULL),(5,'93','143','57,58,59,60,61,62','','2015-05-04',NULL),(6,'93','143','57,58,59,60,61,62','','2015-05-04',NULL),(7,'93','143','57,58,59,60,61,62','','2015-05-04',NULL),(8,'93','143','57,58,59,62','1','2015-05-04',NULL),(9,'93','143','57,58,59,62','2','2015-05-04',NULL),(10,'93','143','57,58,59,62','1','2015-05-04',NULL),(11,'93','143','57,58,59,62','2','2015-05-04',NULL),(12,'93','143','57,58,59,62','3','2015-05-04',NULL),(13,'93','143','57,58,59,62','88','2015-05-04',NULL),(14,'93','143','57,58,59,62','93','2015-05-04',NULL),(15,'93','143','57,58,59,62','1','2015-05-04',NULL),(16,'93','143','57,58,59,62','2','2015-05-04',NULL),(17,'93','143','57,58,59,62','3','2015-05-04',NULL),(18,'93','143','57,58,59,62','88','2015-05-04',NULL),(19,'93','143','57,58,59,62','93','2015-05-04',NULL),(20,'93','143','57,58,59,60,62','0','2015-05-04',NULL),(21,'93','143','57,58,59,60,62','1','2015-05-04',NULL),(22,'93','143','57,58,59,60,62','2','2015-05-04',NULL),(23,'93','143','57,58,59,60,62','3','2015-05-04',NULL),(24,'93','143','57,58,59,60,62','48','2015-05-04',NULL),(25,'93','143','57,58,59,60,62','49','2015-05-04',NULL),(26,'93','143','57,58,59,60,62','90','2015-05-04',NULL),(27,'93','143','57,58,59,60,62','93','2015-05-04',NULL),(28,'93','143','57,58,59,60,62','0','2015-05-04',NULL),(29,'93','143','57,58,59,60,62','1','2015-05-04',NULL),(30,'93','143','57,58,59,60,62','2','2015-05-04',NULL),(31,'93','143','57,58,59,60,62','3','2015-05-04',NULL),(32,'93','143','57,58,59,60,62','48','2015-05-04',NULL),(33,'93','143','57,58,59,60,62','49','2015-05-04',NULL),(34,'93','143','57,58,59,60,62','90','2015-05-04',NULL),(35,'93','143','57,58,59,60,62','93','2015-05-04',NULL),(36,'2','100','53','1','2015-05-05',NULL),(37,'2','100','15,53,31','1','2015-05-05',NULL),(38,'2','100','15,53,31','90','2015-05-05',NULL),(39,'2','100','15,53,31','93','2015-05-05',NULL),(40,'93','143','60,61,63','85','2015-05-06',NULL);
/*!40000 ALTER TABLE `share_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(32) NOT NULL,
  `email` varchar(264) NOT NULL,
  `verified` int(11) NOT NULL COMMENT '0=no, 1=yes',
  `verification_code` varchar(264) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'health_care_db'
--
/*!50003 DROP FUNCTION IF EXISTS `Doctor_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Doctor_rating`(Doctors_id int(11)) RETURNS int(11)
begin
			declare temp2 int(11);
			set temp2 = (SELECT count(insurance_acceptance.Insurance_id) AS cnt FROM  insurance_acceptance where insurance_acceptance.Doctors_id = Doctors_id
                         group by insurance_acceptance.Doctors_id);
			
			if temp2 = 5 then return '5';
			elseif  temp2 = 4 then return '4';
			elseif  temp2 = 3 then return '3'; 
			elseif  temp2 = 2 then return '2';  
			elseif temp2 = 1 then return '1';
            else return 0; 
			end if;
		end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dec_countpatient2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dec_countpatient2`(in patientcount int(10))
BEGIN
     #declare countpatient =  count(Patient_id);
        DECLARE patientcount INT;
    set patientcount  = ( select count(*) from dec_countpatient2 where Patient_id = new.Patient_id group by Doctors_name );
  UPDATE countpatient SET Patient_id = Patient_id + 1 ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_patient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_patient`(in doctor_str int(10))
begin
		if doctor_str = 0 then
			
      SELECT Doctors_id, COUNT(*) as sp_patient1 FROM prescription GROUP BY Doctors_id;
		else
			
         SELECT Doctors_id, COUNT('') as sp_patient1 FROM prescription where doctor_str = Doctors_id group by Doctors_id;
			
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-06 10:46:54
