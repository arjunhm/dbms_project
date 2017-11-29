-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelproject
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `managerlogin`
--

DROP TABLE IF EXISTS `managerlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managerlogin` (
  `ID` varchar(45) DEFAULT NULL,
  `HotelID` varchar(45) DEFAULT NULL,
  `EmailID` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  KEY `mgrloginemployeefk_idx` (`ID`),
  KEY `mgrloginhotelfk_idx` (`HotelID`),
  CONSTRAINT `mgrloginhotelfk` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managerlogin`
--

LOCK TABLES `managerlogin` WRITE;
/*!40000 ALTER TABLE `managerlogin` DISABLE KEYS */;
INSERT INTO `managerlogin` VALUES ('E01','H01','abed.nadir@gmail.com','abednadir'),('E02','H02','pierce.hawthorne@gmail.com','piercehawthorne'),('E03','H03','craig.pelton@gmail.com','craigpelton'),('E04','H04','troy.barnes.com','troybarnes'),('E05','H05','jeff.winger@gmail.com','jeffwinger'),('E06','H06','annie.edison@gmail.com','annieedison');
/*!40000 ALTER TABLE `managerlogin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 21:34:58
