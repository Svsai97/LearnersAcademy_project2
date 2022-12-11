-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Username` varchar(10) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Irshad','1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allsubjects`
--

DROP TABLE IF EXISTS `allsubjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allsubjects` (
  `Subjects` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allsubjects`
--

LOCK TABLES `allsubjects` WRITE;
/*!40000 ALTER TABLE `allsubjects` DISABLE KEYS */;
INSERT INTO `allsubjects` VALUES ('Hindi','Regular'),('English','Regular'),('Maths','Regular'),('Science','Regular'),('SST','Regular'),('Computer Basics','Elective');
/*!40000 ALTER TABLE `allsubjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classreport`
--

DROP TABLE IF EXISTS `classreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classreport` (
  `StudentId` int DEFAULT NULL,
  `StudentName` varchar(20) DEFAULT NULL,
  `Subject` varchar(20) DEFAULT NULL,
  `Class` int DEFAULT NULL,
  `TeacherAssign` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classreport`
--

LOCK TABLES `classreport` WRITE;
/*!40000 ALTER TABLE `classreport` DISABLE KEYS */;
INSERT INTO `classreport` VALUES (11,'Piyush Agarwal','Hindi',8,'Isha Gupta'),(12,'Jhanvi gada','Hindi',8,'Isha Gupta'),(13,'Vaibhav Bhardwaj','Hindi',8,'Isha Gupta'),(31,'Ankush Kushwaha','Computer Basics',10,'Kishore Kumar'),(32,'Deepak kumar','Computer Basics',10,'Kishore Kumar'),(33,'Akanksha Rawat','Computer Basics',10,'Kishore Kumar'),(11,'Piyush Agarwal','Maths',8,'Adityaram Rao'),(12,'Jhanvi gada','Maths',8,'Adityaram Rao'),(13,'Vaibhav Bhardwaj','Maths',8,'Adityaram Rao'),(11,'Piyush Agarwal','Hindi',8,'Ishika Gupt'),(12,'Jhanvi gada','Hindi',8,'Ishika Gupt'),(13,'Vaibhav Bhardwaj','Hindi',8,'Ishika Gupt'),(31,'Ankush Kushwaha','Hindi',10,'Ishika Gupt'),(32,'Deepak kumar','Hindi',10,'Ishika Gupt'),(33,'Akanksha Rawat','Hindi',10,'Ishika Gupt'),(11,'Piyush Agarwal','SST',8,'Shilish Kumar'),(12,'Jhanvi gada','SST',8,'Shilish Kumar'),(13,'Vaibhav Bhardwaj','SST',8,'Shilish Kumar'),(22,'Akash kumar','Science',9,'Shivangini Pillay'),(23,'NishiKant','Science',9,'Shivangini Pillay'),(24,'Pooja Bhatt','Science',9,'Shivangini Pillay');
/*!40000 ALTER TABLE `classreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liststudents`
--

DROP TABLE IF EXISTS `liststudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liststudents` (
  `ID` int DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Class` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liststudents`
--

LOCK TABLES `liststudents` WRITE;
/*!40000 ALTER TABLE `liststudents` DISABLE KEYS */;
INSERT INTO `liststudents` VALUES (11,'Piyush Agarwal',8),(12,'Jhanvi gada',8),(13,'Vaibhav Bhardwaj',8),(22,'Akash kumar',9),(23,'NishiKant',9),(24,'Pooja Bhatt',9),(31,'Ankush Kushwaha',10),(32,'Deepak kumar',10),(33,'Akanksha Rawat',10);
/*!40000 ALTER TABLE `liststudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listteachers`
--

DROP TABLE IF EXISTS `listteachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listteachers` (
  `Name` varchar(20) DEFAULT NULL,
  `Subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listteachers`
--

LOCK TABLES `listteachers` WRITE;
/*!40000 ALTER TABLE `listteachers` DISABLE KEYS */;
INSERT INTO `listteachers` VALUES ('Sayeda Tahseen','English'),('Ishika Gupt','Hindi'),('Adityaram Rao','Maths'),('Shilish Kumar','SST'),('Shivangini Pillay','Science'),('Kaif Kaur','Computer Basics');
/*!40000 ALTER TABLE `listteachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `Username` varchar(10) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('Irshad','1234'),('a','1'),('a','1');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mystudent`
--

DROP TABLE IF EXISTS `mystudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mystudent` (
  `id` int NOT NULL,
  `Place` varchar(255) DEFAULT NULL,
  `StName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mystudent`
--

LOCK TABLES `mystudent` WRITE;
/*!40000 ALTER TABLE `mystudent` DISABLE KEYS */;
INSERT INTO `mystudent` VALUES (21,'Delhi','Ashuma'),(22,'Mumbai','Mercy da'),(24,'Bangalore','Payal'),(100,'Goa','Mortal');
/*!40000 ALTER TABLE `mystudent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-28 17:59:18
