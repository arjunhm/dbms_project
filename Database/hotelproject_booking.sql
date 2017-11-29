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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `CustID` varchar(45) DEFAULT NULL,
  `HotelID` varchar(45) DEFAULT NULL,
  `CheckIn` varchar(45) DEFAULT NULL,
  `CheckOut` varchar(45) DEFAULT NULL,
  `Basic` varchar(45) DEFAULT '0',
  `Deluxe` varchar(45) DEFAULT '0',
  `Executive` varchar(45) DEFAULT '0',
  `Bill` varchar(45) DEFAULT NULL,
  `ID` char(45) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `bookingcustlfk_idx` (`CustID`),
  KEY `bookinghotelfk_idx` (`HotelID`),
  CONSTRAINT `bookinghotelfk` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('C01','H02','14-DEC-2017','20-DEC-2017','0','2','0','30000','C01H02020'),('C02','H03','01-DEC-2017','07-DEC-2017','2','3','4','165000','C02H03234'),('C04','H06','08-DEC-2017','28-DEC-2017','2','2','3','380000','C04H06223'),('C05','H02','01-DEC-2017','02-DEC-2017','2','0','0','2000','C05H0220012'),('C05','H04','11-DEC-2017','13-DEC-2017','1','0','2','20000','C05H04102'),('C05','H05','15-DEC-2017','17-DEC-2017','1','0','2','19600','C05H05102'),('C07','H01','04-DEC-2017','08-DEC-2017','1','2','0','24000','C07H01120'),('C07','H01','11-DEC-2017','14-DEC-2017','1','2','3','58500','C07H01123');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 21:34:59
