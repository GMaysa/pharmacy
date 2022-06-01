-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: batin_pharmacy
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `category_drugs`
--

DROP TABLE IF EXISTS `category_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_drugs`
--

LOCK TABLES `category_drugs` WRITE;
/*!40000 ALTER TABLE `category_drugs` DISABLE KEYS */;
INSERT INTO `category_drugs` VALUES (1,'Obat Sirup','2022-05-28 15:24:30','2022-06-01 11:54:38'),(2,'Obat Tablet','2022-05-28 15:24:30','2022-05-28 15:24:30'),(3,'Obat Kapsul','2022-05-28 15:24:30','2022-05-28 15:24:30'),(4,'Obat Oles','2022-05-28 15:24:30','2022-05-28 15:24:30'),(5,'Obat Suppositoria','2022-05-28 15:24:30','2022-05-28 15:24:30'),(6,'Obat Tetes','2022-05-28 15:24:30','2022-05-28 15:24:30'),(7,'Obat Inhaler','2022-05-28 15:24:30','2022-05-28 15:24:30'),(8,'Obat Suntik','2022-05-28 15:24:30','2022-05-28 15:24:30'),(9,'Obat Implan','2022-05-28 15:24:30','2022-05-28 15:24:30');
/*!40000 ALTER TABLE `category_drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cs_catergory` (`category_id`),
  CONSTRAINT `cs_catergory` FOREIGN KEY (`category_id`) REFERENCES `category_drugs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs`
--

LOCK TABLES `drugs` WRITE;
/*!40000 ALTER TABLE `drugs` DISABLE KEYS */;
INSERT INTO `drugs` VALUES (1,'Paracetamol 500Mg','2023-05-28',370,100,'2022-05-28 20:07:30','2022-05-28 20:07:30',2),(2,'Antangin 500Mg\r\n','2023-05-28',500,120,'2022-05-28 20:07:30','2022-06-01 17:50:20',2),(3,'Furosemide 40Mg','2023-05-29',210,122,'2022-05-28 20:07:30','2022-05-28 20:07:30',2),(4,'Metronidazole 500Mg','2023-05-31',545,133,'2022-05-28 20:07:30','2022-05-28 20:31:44',2),(5,'Metoclopramide 10Mg','2023-06-01',200,144,'2022-05-28 20:07:30','2022-05-28 20:32:09',2),(6,'Griseofulvin 125Mg','2023-06-03',588,255,'2022-05-28 20:07:30','2022-05-28 20:07:30',2),(7,'Pyrazinamide 500Mg','2023-06-05',584,202,'2022-05-28 20:07:30','2022-05-28 20:07:30',2),(8,'Tetracycline 500Mg','2023-07-13',1507,223,'2022-05-28 20:07:30','2022-05-28 20:07:30',3),(9,'Mucera Sirup 60Ml','2023-08-25',40656,98,'2022-05-28 20:07:30','2022-05-28 20:07:30',1),(10,'Fluconazole 150Mg','2023-09-09',26462,55,'2022-05-28 20:07:30','2022-05-28 20:07:30',3);
/*!40000 ALTER TABLE `drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_sales`
--

DROP TABLE IF EXISTS `history_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username_staff` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `cs_staff` (`username_staff`),
  CONSTRAINT `cs_staff` FOREIGN KEY (`username_staff`) REFERENCES `staff` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_sales`
--

LOCK TABLES `history_sales` WRITE;
/*!40000 ALTER TABLE `history_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_sales_drugs`
--

DROP TABLE IF EXISTS `history_sales_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_sales_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_history_sale` int(11) DEFAULT NULL,
  `id_drugs` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `price` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_history_sale` (`id_history_sale`),
  KEY `fk_drug` (`id_drugs`),
  CONSTRAINT `fk_drug` FOREIGN KEY (`id_drugs`) REFERENCES `drugs` (`id`),
  CONSTRAINT `fk_history_sale` FOREIGN KEY (`id_history_sale`) REFERENCES `history_sales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_sales_drugs`
--

LOCK TABLES `history_sales_drugs` WRITE;
/*!40000 ALTER TABLE `history_sales_drugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_sales_drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation`
--

LOCK TABLES `occupation` WRITE;
/*!40000 ALTER TABLE `occupation` DISABLE KEYS */;
INSERT INTO `occupation` VALUES (1,'admin','2022-05-28 14:51:08','2022-05-28 14:51:08'),(2,'staff warehouse','2022-05-28 14:51:08','2022-05-28 14:51:08'),(3,'staff frontline','2022-05-28 14:51:08','2022-05-28 14:51:08');
/*!40000 ALTER TABLE `occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `gender` enum('P','L') DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `occupation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cs_username` (`username`),
  KEY `fk_occ` (`occupation_id`),
  CONSTRAINT `fk_occ` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'agung adipurwa','https://ik.imagekit.io/j8loglunjkf/Twibbon_PrvnXfWeW.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1652426894362','L','adiagung707@gmail.com','22032002','2022-05-28 14:51:08','2022-05-28 14:51:08',1),(2,'maysa putra','asfafdgdafgfdggagfgadf.jpg','L','maysaputrwa@gmail.com','23052002','2022-05-28 14:52:37','2022-05-28 14:52:37',2),(3,'prami apsari','https://ik.imagekit.io/j8loglunjkf/lena_yU9gSleAb.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1647764841545','P','pramiapsari@gmail.com','19012002','2022-05-28 14:52:37','2022-05-28 14:52:37',3);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'batin_pharmacy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-02  2:59:00
