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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Salary` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `HotelID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `employeehotelfk_idx` (`HotelID`),
  CONSTRAINT `employeehotelfk` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E01','Abed Nadir','50000','9611277443','H01'),('E02','Pierce Hawthorne','40000','7760416798','H02'),('E03','Craig Pelton','55000','9901111551','H03'),('E04','Troy Barnes','45000','9663963928','H04'),('E05','Jeff Winger','40000','9874563210','H05'),('E06','Annie Edison','55000','9886655232','H06'),('E07','Sam Smith','22000','2546987654','H01'),('E08','Harvey Specter','24000','7760416798','H01'),('E09','Kendrick Lamar','25000','7755884496','H02'),('E10','Jon Smith','25000','7755884441','H02'),('E11','Kiera Knightley','29000','8861965380','H03'),('E12','Phil Dunphy','24000','8861687654','H03'),('E13','Roberto Carlos','24000','8876549861','H04'),('E14','James Rodriguez','22000','8876548735','H04'),('E15','Mike Ross','26500','2542658781','H05'),('E16','Jessica Pearson','29500','2542658722','H05'),('E17','Louis Vitt','12000','9845682132','H06'),('E18','Russel Peters','22000','9845682492','H06');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
