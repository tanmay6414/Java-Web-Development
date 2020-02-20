-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: asdl
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `email` varchar(50) NOT NULL,
  `adharcardno` varchar(12) DEFAULT NULL,
  `adharpic` varchar(255) DEFAULT NULL,
  `adharflag` varchar(10) DEFAULT 'false',
  `voteridno` varchar(12) DEFAULT NULL,
  `voterpic` varchar(255) DEFAULT NULL,
  `voterflag` varchar(10) DEFAULT 'false',
  `panno` varchar(16) DEFAULT NULL,
  `panpic` varchar(255) DEFAULT NULL,
  `panflag` varchar(10) DEFAULT 'false',
  `drivinglicenceno` varchar(20) DEFAULT NULL,
  `drivinglicencepic` varchar(255) DEFAULT NULL,
  `licenceflag` varchar(10) DEFAULT 'false',
  `drivinglicenceupto` date DEFAULT NULL,
  KEY `email` (`email`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`email`) REFERENCES `reg` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES ('ketansingh@gmail.com','444455556666','a1.jpg','false','GDNO225185','v2.jpg','false','ANRPN2537J','pan2.jpg','false','MH03 2008659875462','lice2.jpg','false','2019-12-29'),('rajanikant@gmail.com','XXXXXXXXXXX','adhar1.png','false','ABCO225185','voter2.jpeg','false','ABCDE2537J','pan1.jpg','false','CH03 20086598745632','lice1.jpg','false','2019-12-28');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `email` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `distric` varchar(20) NOT NULL,
  `pincode` int(6) NOT NULL,
  `propic` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  KEY `email` (`email`),
  CONSTRAINT `info_ibfk_1` FOREIGN KEY (`email`) REFERENCES `reg` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES ('ketansingh@gmail.com','102, Ostria Height Moshi Road, Alandi(Devachi)','Pune','Maharashtra','Pune',412105,'a.jpg','Ketan Singh'),('rajanikant@gmail.com','508, National Society Tiruanantpuram, Chennai','Tiruanantpuram','Chennai','Tiruanantpuram',469875,'propic1.jpg','Rajanikanta Dada');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg`
--

DROP TABLE IF EXISTS `reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg` (
  `email` varchar(50) NOT NULL,
  `number` varchar(12) DEFAULT NULL,
  `password` varchar(12) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg`
--

LOCK TABLES `reg` WRITE;
/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
INSERT INTO `reg` VALUES ('ketansingh@gmail.com','8600322379','ketan@123','user'),('rajanikant@gmail.com','8459005138','rajani@123','police');
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vechile`
--

DROP TABLE IF EXISTS `vechile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vechile` (
  `email` varchar(50) NOT NULL,
  `vname` varchar(30) NOT NULL,
  `vpic` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cno` varchar(16) NOT NULL,
  `cflag` varchar(10) DEFAULT 'false',
  `vno` varchar(14) DEFAULT NULL,
  `vflag` varchar(10) DEFAULT 'false',
  `insurance` varchar(50) NOT NULL,
  `insoupto` date NOT NULL,
  `insuflag` varchar(10) DEFAULT 'false',
  `noc` varchar(50) NOT NULL,
  `nocupto` date NOT NULL,
  `nocflag` varchar(10) DEFAULT 'false',
  `rcbook` varchar(50) NOT NULL,
  `rcflag` varchar(10) DEFAULT 'false',
  `nocpic` varchar(255) DEFAULT NULL,
  `insupic` varchar(255) DEFAULT NULL,
  `rcbookpic` varchar(255) DEFAULT NULL,
  KEY `email` (`email`),
  CONSTRAINT `vechile_ibfk_1` FOREIGN KEY (`email`) REFERENCES `reg` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vechile`
--

LOCK TABLES `vechile` WRITE;
/*!40000 ALTER TABLE `vechile` DISABLE KEYS */;
INSERT INTO `vechile` VALUES ('ketansingh@gmail.com','Duke KTM','b4.jpg','Two Wheeler Without Gear','CX12345W12','false','MH 12 CX 1234','false','1234SS877AZ','2019-11-30','false','3792649','2019-12-15','false','78AWER5478','false','puc1.jpg','insu1.jpg','rc1.jpg'),('rajanikant@gmail.com','Pulser 150','bike2.jpg','Two Wheeler Without Gear','HI154895LA','false','CH 20 AN 1254','false','5678SS900AZ','2019-12-22','false','1234567','2019-12-29','false','87WER654789','false','puc2.png','insu1.jpg','rc1.jpg');
/*!40000 ALTER TABLE `vechile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-20 12:30:51
