-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Current Database: `hbnb_dev_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbnb_dev_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbnb_dev_db`;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amenities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES ('821a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Wifi'),('821a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Pets friendly'),('821a55f4-7d82-47d9-b54c-a76916479553','2017-03-25 19:44:42','2017-03-25 19:44:42','Elevator in building'),('821a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','Doorman'),('821a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42','Cable TV'),('821a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Dryer'),('821a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42','Hair dryer'),('821a55f4-7d82-47d9-b54c-a76916479558','2017-03-25 19:44:42','2017-03-25 19:44:42','Iron'),('821a55f4-7d82-47d9-b54c-a76916479559','2017-03-25 19:44:42','2017-03-25 19:44:42','Washer'),('821a55f4-7d82-47d9-b54c-a76916479560','2017-03-25 19:44:42','2017-03-25 19:44:42','Laundry room'),('821a55f4-7d82-47d9-b54c-a76916479561','2017-03-25 19:44:42','2017-03-25 19:44:42','Air conditioning'),('821a55f4-7d82-47d9-b54c-a76916479562','2017-03-25 19:44:42','2017-03-25 19:44:42','Hot tub'),('821a55f4-7d82-47d9-b54c-a76916479563','2017-03-25 19:44:42','2017-03-25 19:44:42','Smoking allowed');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  `state_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('521a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Akron','421a55f4-7d82-47d9-b54c-a76916479545'),('521a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42','Douglas','421a55f4-7d82-47d9-b54c-a76916479546'),('521a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','San Francisco','421a55f4-7d82-47d9-b54c-a76916479547'),('521a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:44:42','2017-03-25 19:44:42','Denver','421a55f4-7d82-47d9-b54c-a76916479548'),('521a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42','Miami','421a55f4-7d82-47d9-b54c-a76916479549'),('521a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Honolulu','421a55f4-7d82-47d9-b54c-a76916479551'),('521a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Chicago','421a55f4-7d82-47d9-b54c-a76916479552'),('521a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','New Orleans','421a55f4-7d82-47d9-b54c-a76916479554'),('521a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42','Saint Paul','421a55f4-7d82-47d9-b54c-a76916479555'),('521a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Jackson','421a55f4-7d82-47d9-b54c-a76916479556'),('521a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42','Portland','421a55f4-7d82-47d9-b54c-a76916479557'),('531a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Babbie','421a55f4-7d82-47d9-b54c-a76916479545'),('531a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42','Kearny','421a55f4-7d82-47d9-b54c-a76916479546'),('531a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','San Jose','421a55f4-7d82-47d9-b54c-a76916479547'),('531a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42','Orlando','421a55f4-7d82-47d9-b54c-a76916479549'),('531a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Kailua','421a55f4-7d82-47d9-b54c-a76916479551'),('531a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Peoria','421a55f4-7d82-47d9-b54c-a76916479552'),('531a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','Baton rouge','421a55f4-7d82-47d9-b54c-a76916479554'),('531a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Tupelo','421a55f4-7d82-47d9-b54c-a76916479556'),('531a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42','Eugene','421a55f4-7d82-47d9-b54c-a76916479557'),('541a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Calera','421a55f4-7d82-47d9-b54c-a76916479545'),('541a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42','Tempe','421a55f4-7d82-47d9-b54c-a76916479546'),('541a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','Fremont','421a55f4-7d82-47d9-b54c-a76916479547'),('541a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Pearl city','421a55f4-7d82-47d9-b54c-a76916479551'),('541a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Naperville','421a55f4-7d82-47d9-b54c-a76916479552'),('541a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','Lafayette','421a55f4-7d82-47d9-b54c-a76916479554'),('541a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Meridian','421a55f4-7d82-47d9-b54c-a76916479556'),('551a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Fairfield','421a55f4-7d82-47d9-b54c-a76916479545'),('551a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','Napa','421a55f4-7d82-47d9-b54c-a76916479547'),('551a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Urbana','421a55f4-7d82-47d9-b54c-a76916479552'),('561a55f4-7d82-47d9-b54c-a7691647
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_amenity`
--

DROP TABLE IF EXISTS `place_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `place_amenity_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `place_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_amenity`
--

LOCK TABLES `place_amenity` WRITE;
/*!40000 ALTER TABLE `place_amenity` DISABLE KEYS */;
INSERT INTO `place_amenity` VALUES ('45101fab-c6a2-4f63-9fa9-64d9687e6ee4','821a55f4-7d82-47d9-b54c-a76916479551'),('45101fab-c6a2-4f63-9fa9-64d9687e6ee4','821a55f4-7d82-47d9-b54c-a76916479552');
/*!40000 ALTER TABLE `place_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `number_rooms` int(11) NOT NULL,
  `number_bathrooms` int(11) NOT NULL,
  `max_guest` int(11) NOT NULL,
  `price_by_night` int(11) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('45101fab-c6a2-4f63-9fa9-64d9687e6ee4','2020-05-16 12:06:27','2020-05-16 12:06:27','561a55f4-7d82-47d9-b54c-a76916479547','76a8b1df-47bf-498e-81f0-3aca87b7f3f9','Lovely place',NULL,3,1,6,120,37.774,-122.431);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('421a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Alabama'),('421a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42','Arizona'),('421a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','California'),('421a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:44:42','2017-03-25 19:44:42','Colorado'),('421a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42','Florida'),('421a55f4-7d82-47d9-b54c-a76916479550','2017-03-25 19:44:42','2017-03-25 19:44:42','Georgia'),('421a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Hawaii'),('421a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Illinois'),('421a55f4-7d82-47d9-b54c-a76916479553','2017-03-25 19:44:42','2017-03-25 19:44:42','Indiana'),('421a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','Louisiana'),('421a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42','Minnesota'),('421a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Mississippi'),('421a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42','Oregon');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('76a8b1df-47bf-498e-81f0-3aca87b7f3f9','2020-05-16 12:03:13','2020-05-16 12:03:13','gui@hbtn.io','f4ce007d8e84e0910fbdd7a06fa1692d','Guillaume','Snow');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbnb_test_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbnb_test_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbnb_test_db`;

--
-- Current Database: `hbtn_0c_0`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0c_0` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0c_0`;

--
-- Table structure for table `first_table`
--

DROP TABLE IF EXISTS `first_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_table` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_table`
--

LOCK TABLES `first_table` WRITE;
/*!40000 ALTER TABLE `first_table` DISABLE KEYS */;
INSERT INTO `first_table` VALUES (89,'Holberton School');
/*!40000 ALTER TABLE `first_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `second_table`
--

DROP TABLE IF EXISTS `second_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `second_table` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `second_table`
--

LOCK TABLES `second_table` WRITE;
/*!40000 ALTER TABLE `second_table` DISABLE KEYS */;
INSERT INTO `second_table` VALUES (1,'John',10),(3,'Bob',10),(4,'George',8);
/*!40000 ALTER TABLE `second_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temperatures`
--

DROP TABLE IF EXISTS `temperatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temperatures` (
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temperatures`
--

LOCK TABLES `temperatures` WRITE;
/*!40000 ALTER TABLE `temperatures` DISABLE KEYS */;
INSERT INTO `temperatures` VALUES ('San Francisco','CA',2000,1,45),('San Francisco','CA',2000,2,94),('San Francisco','CA',2000,3,60),('San Francisco','CA',2000,4,95),('San Francisco','CA',2000,5,72),('San Francisco','CA',2000,6,70),('San Francisco','CA',2000,7,88),('San Francisco','CA',2000,8,58),('San Francisco','CA',2000,9,90),('San Francisco','CA',2000,10,80),('San Francisco','CA',2000,11,52),('San Francisco','CA',2000,12,93),('San Francisco','CA',2001,1,64),('San Francisco','CA',2001,2,91),('San Francisco','CA',2001,3,55),('San Francisco','CA',2001,4,107),('San Francisco','CA',2001,5,54),('San Francisco','CA',2001,6,51),('San Francisco','CA',2001,7,53),('San Francisco','CA',2001,8,41),('San Francisco','CA',2001,9,44),('San Francisco','CA',2001,10,93),('San Francisco','CA',2001,11,70),('San Francisco','CA',2001,12,46),('San Francisco','CA',2002,1,102),('San Francisco','CA',2002,2,70),('San Francisco','CA',2002,3,39),('San Francisco','CA',2002,4,90),('San Francisco','CA',2002,5,100),('San Francisco','CA',2002,6,77),('San Francisco','CA',2002,7,54),('San Francisco','CA',2002,8,53),('San Francisco','CA',2002,9,42),('San Francisco','CA',2002,10,61),('San Francisco','CA',2002,11,78),('San Francisco','CA',2002,12,87),('San Francisco','CA',2003,1,94),('San Francisco','CA',2003,2,110),('San Francisco','CA',2003,3,104),('San Francisco','CA',2003,4,98),('San Francisco','CA',2003,5,73),('San Francisco','CA',2003,6,53),('San Francisco','CA',2003,7,49),('San Francisco','CA',2003,8,39),('San Francisco','CA',2003,9,107),('San Francisco','CA',2003,10,65),('San Francisco','CA',2003,11,40),('San Francisco','CA',2003,12,82),('San Francisco','CA',2004,1,89),('San Francisco','CA',2004,2,58),('San Francisco','CA',2004,3,73),('San Francisco','CA',2004,4,30),('San Francisco','CA',2004,5,110),('San Francisco','CA',2004,6,109),('San Francisco','CA',2004,7,91),('San Francisco','CA',2004,8,65),('San Francisco','CA',2004,9,57),('San Francisco','CA',2004,10,95),('San Francisco','CA',2004,11,68),('San Francisco','CA',2004,12,105),('San Francisco','CA',2005,1,84),('San Francisco','CA',2005,2,52),('San Francisco','CA',2005,3,76),('San Francisco','CA',2005,4,33),('San Francisco','CA',2005,5,82),('San Francisco','CA',2005,6,61),('San Francisco','CA',2005,7,108),('San Francisco','CA',2005,8,110),('San Francisco','CA',2005,9,106),('San Francisco','CA',2005,10,101),('San Francisco','CA',2005,11,87),('San Francisco','CA',2005,12,59),('San Francisco','CA',2006,1,57),('San Francisco','CA',2006,2,44),('San Francisco','CA',2006,3,55),('San Francisco','CA',2006,4,38),('San Francisco','CA',2006,5,95),('San Francisco','CA',2006,6,58),('San Francisco','CA',2006,7,89),('San Francisco','CA',2006,8,32),('San Francisco','CA',2006,9,46),('San Francisco','CA',2006,10,78),('San Francisco','CA',2006,11,85),('San Francisco','CA',2006,12,38),('San Francisco','CA',2007,1,64),('San Francisco','CA',2007,2,47),('San Francisco','CA',2007,3,88),('San Francisco','CA',2007,4,78),('San Francisco','CA',2007,5,34),('San Francisco','CA',2007,6,89),('San Francisco','CA',2007,7,79),('San Francisco','CA',2007,8,60),('San Francisco','CA',2007,9,33),('San Francisco','CA',2007,10,53),('San Francisco','CA',2007,11,60),('San Francisco','CA',2007,12,84),('San Francisco','CA',2008,1,94),('San Francisco','CA',2008,2,41),('San Francisco','CA',2008,3,85),('San Francisco','CA',2008,4,93),('San Francisco','CA',2008,5,51),('San Francisco','CA',2008,6,109),('San Francisco','CA',2008,7,100),('San Francisco','CA',2008,8,78),('San Francisco','CA',2008,9,73),('San Francisco','CA',2008,10,69),('San Francisco','CA',2008,11,55),('San Francisco','CA',2008,12,84),('San Francisco','CA',2009,1,54),('San Francisco','CA',2009,2,108),('San Francisco','CA',2009,3,96),('San Francisco','CA',2009,4,31),('San Francisco','CA',2009,5,82),('San Francisco','CA',2009,6,41),('San Francisco','CA',2009,7,84),('San Francisco','CA',2009,8,53),('San Francisco','CA',2009,9,54),('San Francisco','CA',2009,10,62),('San Francisco','CA',2009,11,64),('San Francisco','CA',2009,12,91),('San Francisco','CA',2010,1,73),('San Francisco','CA',
/*!40000 ALTER TABLE `temperatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0d_2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0d_2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0d_2`;

--
-- Table structure for table `force_name`
--

DROP TABLE IF EXISTS `force_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `force_name` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `force_name`
--

LOCK TABLES `force_name` WRITE;
/*!40000 ALTER TABLE `force_name` DISABLE KEYS */;
INSERT INTO `force_name` VALUES (89,'Holberton School');
/*!40000 ALTER TABLE `force_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_not_null`
--

DROP TABLE IF EXISTS `id_not_null`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_not_null` (
  `id` int(11) DEFAULT '1',
  `name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_not_null`
--

LOCK TABLES `id_not_null` WRITE;
/*!40000 ALTER TABLE `id_not_null` DISABLE KEYS */;
/*!40000 ALTER TABLE `id_not_null` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0d_tvshows`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0d_tvshows` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0d_tvshows`;

--
-- Table structure for table `tv_genres`
--

DROP TABLE IF EXISTS `tv_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_genres`
--

LOCK TABLES `tv_genres` WRITE;
/*!40000 ALTER TABLE `tv_genres` DISABLE KEYS */;
INSERT INTO `tv_genres` VALUES (1,'Drama'),(2,'Mystery'),(3,'Adventure'),(4,'Fantasy'),(5,'Comedy'),(6,'Crime'),(7,'Suspense'),(8,'Thriller');
/*!40000 ALTER TABLE `tv_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_genres`
--

DROP TABLE IF EXISTS `tv_show_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_show_genres` (
  `show_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `tv_show_genres_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `tv_shows` (`id`),
  CONSTRAINT `tv_show_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `tv_genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_genres`
--

LOCK TABLES `tv_show_genres` WRITE;
/*!40000 ALTER TABLE `tv_show_genres` DISABLE KEYS */;
INSERT INTO `tv_show_genres` VALUES (1,1),(1,2),(2,3),(2,1),(2,4),(3,5),(4,5),(5,5),(6,6),(6,1),(6,7),(6,8),(8,6),(8,1),(8,2),(8,7),(8,8),(10,5),(10,1);
/*!40000 ALTER TABLE `tv_show_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_shows`
--

DROP TABLE IF EXISTS `tv_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_shows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_shows`
--

LOCK TABLES `tv_shows` WRITE;
/*!40000 ALTER TABLE `tv_shows` DISABLE KEYS */;
INSERT INTO `tv_shows` VALUES (1,'House'),(2,'Game of Thrones'),(3,'The Big Bang Theory'),(4,'New Girl'),(5,'Silicon Valley'),(6,'Breaking Bad'),(7,'Better Call Saul'),(8,'Dexter'),(9,'Homeland'),(10,'The Last Man on Earth');
/*!40000 ALTER TABLE `tv_shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0d_tvshows_rate`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0d_tvshows_rate` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0d_tvshows_rate`;

--
-- Table structure for table `tv_genres`
--

DROP TABLE IF EXISTS `tv_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_genres`
--

LOCK TABLES `tv_genres` WRITE;
/*!40000 ALTER TABLE `tv_genres` DISABLE KEYS */;
INSERT INTO `tv_genres` VALUES (1,'Drama'),(2,'Mystery'),(3,'Adventure'),(4,'Fantasy'),(5,'Comedy'),(6,'Crime'),(7,'Suspense'),(8,'Thriller');
/*!40000 ALTER TABLE `tv_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_genres`
--

DROP TABLE IF EXISTS `tv_show_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_show_genres` (
  `show_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `tv_show_genres_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `tv_shows` (`id`),
  CONSTRAINT `tv_show_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `tv_genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_genres`
--

LOCK TABLES `tv_show_genres` WRITE;
/*!40000 ALTER TABLE `tv_show_genres` DISABLE KEYS */;
INSERT INTO `tv_show_genres` VALUES (2,1),(2,2),(3,3),(3,1),(3,4),(4,5),(5,5),(6,5),(7,6),(7,1),(7,7),(7,8),(9,6),(9,1),(9,2),(9,7),(9,8),(11,5),(11,1);
/*!40000 ALTER TABLE `tv_show_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_ratings`
--

DROP TABLE IF EXISTS `tv_show_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_show_ratings` (
  `show_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL DEFAULT '0',
  KEY `show_id` (`show_id`),
  CONSTRAINT `tv_show_ratings_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `tv_shows` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_ratings`
--

LOCK TABLES `tv_show_ratings` WRITE;
/*!40000 ALTER TABLE `tv_show_ratings` DISABLE KEYS */;
INSERT INTO `tv_show_ratings` VALUES (2,0),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,0),(3,1),(3,2),(3,0),(3,0),(3,1),(3,2),(3,0),(3,0),(3,1),(3,2),(3,3),(3,4),(3,0),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,0),(3,1),(3,2),(3,0),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,0),(3,1),(3,2),(4,0),(5,0),(6,0),(6,0),(6,1),(6,2),(6,3),(6,4),(6,0),(6,0),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,0),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(7,0),(7,1),(7,2),(7,0),(7,1),(7,2),(7,3),(7,4),(7,0),(7,1),(7,2),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,0),(8,1),(8,2),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,0),(8,1),(8,2),(8,3),(8,4),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(9,0),(9,1),(9,2),(9,0),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,0),(10,0),(10,0),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,0),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,0),(10,0),(10,1),(10,2),(10,0),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,0),(10,1),(10,2),(10,3),(10,4),(10,0),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,0),(10,1),(10,2),(11,0),(11,1),(11,2),(11,3),(11,4);
/*!40000 ALTER TABLE `tv_show_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_shows`
--

DROP TABLE IF EXISTS `tv_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_shows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_shows`
--

LOCK TABLES `tv_shows` WRITE;
/*!40000 ALTER TABLE `tv_shows` DISABLE KEYS */;
INSERT INTO `tv_shows` VALUES (2,'House'),(3,'Game of Thrones'),(4,'The Big Bang Theory'),(5,'New Girl'),(6,'Silicon Valley'),(7,'Breaking Bad'),(8,'Better Call Saul'),(9,'Dexter'),(10,'Homeland'),(11,'The Last Man on Earth');
/*!40000 ALTER TABLE `tv_shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0d_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0d_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0d_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(4,2,'Page'),(6,3,'Paris'),(7,3,'Houston'),(8,3,'Dallas');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'Utah');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_0_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_0_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_0_usa`;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada'),(6,'California'),(7,'Arizona'),(8,'Texas'),(9,'New York'),(10,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_100_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_100_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_100_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'San Francisco',1);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_101_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_101_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_101_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_14_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_14_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_14_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_4_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_4_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_4_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_6_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_6_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_6_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (2,'New Mexico'),(4,'New York');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y'),('localhost','hbnb_dev_db','hbnb_dev','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','performance_schema','hbnb_dev','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','hbnb_test_db','hbnb_test','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','performance_schema','hbnb_test','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int(11) NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` VALUES ('default',0,'io_block_read_cost',NULL,'2020-03-02 17:11:41',NULL),('default',0,'memory_block_read_cost',NULL,'2020-03-02 17:11:41',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(93) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint(20) NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint(20) NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Procedures',0,''),(5,'Language Structure',0,''),(6,'Geographic Features',0,''),(7,'MBR',6,''),(8,'WKT',6,''),(9,'Functions',0,''),(10,'Comparison Operators',9,''),(11,'Logical Operators',9,''),(12,'Control Flow Functions',9,''),(13,'String Functions',9,''),(14,'Numeric Functions',9,''),(15,'Date and Time Functions',9,''),(16,'Bit Functions',9,''),(17,'Encryption Functions',9,''),(18,'Locking Functions',9,''),(19,'Information Functions',9,''),(20,'Spatial Functions',9,''),(21,'WKT Functions',20,''),(22,'WKB Functions',20,''),(23,'Geometry Constructors',20,''),(24,'Geometry Property Functions',20,''),(25,'Point Property Functions',20,''),(26,'LineString Property Functions',20,''),(27,'Polygon Property Functions',20,''),(28,'GeometryCollection Property Functions',20,''),(29,'Geometry Relation Functions',20,''),(30,'MBR Functions',20,''),(31,'GROUP BY Functions and Modifiers',9,''),(32,'Miscellaneous Functions',9,''),(33,'Data Definition',0,''),(34,'Data Manipulation',0,''),(35,'Transactions',0,''),(36,'Compound Statements',0,''),(37,'Account Management',0,''),(38,'Table Maintenance',0,''),(39,'User-Defined Functions',0,''),(40,'Plugins',0,''),(41,'Utility',0,''),(42,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (282,'(JSON'),(283,'->'),(285,'->>'),(52,'<>'),(620,'ACCOUNT'),(415,'ACTION'),(46,'ADD'),(108,'AES_DECRYPT'),(109,'AES_ENCRYPT'),(347,'AFTER'),(97,'AGAINST'),(652,'AGGREGATE'),(348,'ALGORITHM'),(482,'ALL'),(47,'ALTER'),(6,'ANALYSE'),(349,'ANALYZE'),(53,'AND'),(319,'ANY_VALUE'),(416,'ARCHIVE'),(216,'AREA'),(483,'AS'),(181,'ASBINARY'),(310,'ASC'),(183,'ASTEXT'),(182,'ASWKB'),(184,'ASWKT'),(404,'AT'),(508,'AUTOCOMMIT'),(440,'AUTOEXTEND_SIZE'),(350,'AUTO_INCREMENT'),(351,'AVG_ROW_LENGTH'),(536,'BEFORE'),(509,'BEGIN'),(54,'BETWEEN'),(74,'BIGINT'),(104,'BINARY'),(677,'BINLOG'),(14,'BOOL'),(15,'BOOLEAN'),(68,'BOTH'),(408,'BTREE'),(231,'BUFFER'),(311,'BY'),(39,'BYTE'),(8,'CACHE'),(448,'CALL'),(417,'CASCADE'),(59,'CASE'),(600,'CATALOG_NAME'),(77,'CEIL'),(78,'CEILING'),(217,'CENTROID'),(510,'CHAIN'),(352,'CHANGE'),(541,'CHANNEL'),(40,'CHAR'),(36,'CHARACTER'),(660,'CHARSET'),(353,'CHECK'),(354,'CHECKSUM'),(621,'CIPHER'),(601,'CLASS_ORIGIN'),(633,'CLIENT'),(454,'CLOSE'),(355,'COALESCE'),(680,'CODE'),(320,'COLLATE'),(662,'COLLATION'),(356,'COLUMN'),(357,'COLUMNS'),(602,'COLUMN_NAME'),(328,'COMMENT'),(511,'COMMIT'),(525,'COMMITTED'),(418,'COMPACT'),(329,'COMPLETION'),(419,'COMPRESSED'),(358,'COMPRESSION'),(468,'CONCURRENT'),(596,'CONDITION'),(359,'CONNECTION'),(512,'CONSISTENT'),(360,'CONSTRAINT'),(603,'CONSTRAINT_CATALOG'),(604,'CONSTRAINT_NAME'),(605,'CONSTRAINT_SCHEMA'),(259,'CONTAINS'),(597,'CONTINUE'),(103,'CONVERT'),(232,'CONVEXHULL'),(309,'COUNT'),(48,'CREATE'),(307,'CREATE_DH_PARAMETERS'),(501,'CROSS'),(240,'CROSSES'),(420,'CSV'),(330,'CURRENT_USER'),(594,'CURSOR'),(606,'CURSOR_NAME'),(321,'DATA'),(322,'DATABASE'),(663,'DATABASES'),(399,'DATAFILE'),(33,'DATE'),(105,'DATETIME'),(81,'DATE_ADD'),(82,'DATE_SUB'),(83,'DAY'),(84,'DAY_HOUR'),(85,'DAY_MINUTE'),(86,'DAY_SECOND'),(584,'DEALLOCATE'),(25,'DEC'),(28,'DECIMAL'),(585,'DECLARE'),(2,'DEFAULT'),(575,'DEFAULT_AUTH'),(331,'DEFINER'),(461,'DELAYED'),(361,'DELAY_KEY_WRITE'),(421,'DELETE'),(312,'DESC'),(695,'DESCRIBE'),(685,'DES_KEY_FILE'),(607,'DIAGNOSTICS'),(189,'DIMENSION'),(323,'DIRECTORY'),(332,'DISABLE'),(362,'DISCARD'),(260,'DISJOINT'),(241,'DISTANCE'),(308,'DISTINCT'),(484,'DISTINCTROW'),(333,'DO'),(363,'DROP'),(500,'DUAL'),(485,'DUMPFILE'),(462,'DUPLICATE'),(422,'DYNAMIC'),(60,'ELSE'),(586,'ELSEIF'),(334,'ENABLE'),(469,'ENCLOSED'),(364,'ENCRYPTION'),(61,'END'),(205,'ENDPOINT'),(405,'ENDS'),(365,'ENGINE'),(664,'ENGINES'),(190,'ENVELOPE'),(261,'EQUALS'),(686,'ERROR'),(665,'ERRORS'),(72,'ESCAPE'),(470,'ESCAPED'),(335,'EVENT'),(678,'EVENTS'),(406,'EVERY'),(366,'EXCHANGE'),(583,'EXECUTE'),(403,'EXISTS'),(598,'EXIT'),(98,'EXPANSION'),(622,'EXPIRE'),(696,'EXPLAIN'),(687,'EXPORT'),(650,'EXTENDED'),(441,'EXTENT_SIZE'),(218,'EXTERIORRING'),(284,'EXTRACTION)'),(12,'FALSE'),(648,'FAST'),(423,'FEDERATED'),(595,'FETCH'),(471,'FIELDS'),(634,'FILE'),(442,'FILE_BLOCK_SIZE'),(565,'FILTER'),(367,'FIRST'),(26,'FIXED'),(29,'FLOAT4'),(30,'FLOAT8'),(75,'FLOOR'),(9,'FLUSH'),(486,'FOR'),(502,'FORCE'),(368,'FOREIGN'),(697,'FORMAT'),(69,'FROM'),(424,'FULL'),(369,'FULLTEXT'),(341,'FUNCTION'),(688,'GENERAL'),(114,'GEOMCOLLFROMTEXT'),(144,'GEOMCOLLFROMWKB'),(174,'GEOMETRYCOLLECTION'),(115,'GEOMETRYCOLLECTIONFROMTEXT'),(145,'GEOMETRYCOLLECTIONFROMWKB'),(116,'GEOMETRYFROMTEXT'),(146,'GEOMETRYFROMWKB'),(227,'GEOMETRYN'),(191,'GEOMETRYTYPE'),(117,'GEOMFROMTEXT'),(147,'GEOMFROMWKB'),(608,'GET'),(206,'GLENGTH'),(526,'GLOBAL'),(635,'GRANT'),(666,'GRANTS'),(343,'GROUP'),(455,'HANDLER'),(487,'HAVING'),(425,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(463,'HIGH_PRIORITY'),(409,'HOST'),(667,'HOSTS'),(87,'HOUR'),(88,'HOUR_MINUTE'),(89,'HOUR_SECOND'),(480,'IDENTIFIED'),(64,'IF'),(464,'IGNORE'),(542,'IGNORE_SERVER_IDS'),(370,'IMPORT'),(99,'IN'),(49,'INDEX'),(668,'INDEXES'),(472,'INFILE'),(400,'INITIAL_SIZE'),(286,'INLINE'),(503,'INNER'),(426,'INNODB'),(65,'INSERT'),(371,'INSERT_METHOD'),(656,'INSTALL'),(342,'INSTANCE'),(16,'INT1'),(19,'INT2'),(20,'INT3'),(22,'INT4'),(24,'INT8'),(23,'INTEGER'),(219,'INTERIORRINGN'),(262,'INTERSECTS'),(90,'INTERVAL'),(465,'INTO'),(576,'IO_TH
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(487,2),(488,2),(495,2),(498,2),(499,2),(506,2),(507,2),(528,2),(533,2),(565,2),(583,2),(584,2),(2,3),(506,3),(2,4),(528,4),(533,4),(581,4),(582,4),(3,5),(658,5),(4,6),(4,7),(493,7),(503,7),(504,7),(515,7),(516,7),(534,7),(603,7),(615,7),(634,7),(635,7),(5,8),(649,8),(650,8),(652,8),(653,8),(5,9),(650,9),(5,10),(229,10),(650,10),(651,10),(653,10),(5,11),(551,11),(555,11),(653,11),(6,12),(7,12),(6,13),(7,13),(9,14),(10,14),(9,15),(229,15),(9,16),(9,17),(13,17),(15,17),(16,17),(18,17),(19,17),(232,17),(9,18),(13,18),(15,18),(16,18),(18,18),(19,18),(11,19),(12,20),(12,21),(13,22),(13,23),(232,23),(595,23),(15,24),(16,25),(16,26),(506,26),(16,27),(17,28),(232,28),(595,28),(18,29),(19,30),(19,31),(19,32),(595,32),(21,33),(177,33),(179,33),(232,33),(23,34),(213,34),(24,35),(211,35),(232,35),(26,36),(28,36),(487,36),(488,36),(495,36),(498,36),(499,36),(506,36),(531,36),(532,36),(534,36),(600,36),(601,36),(603,36),(607,36),(26,37),(28,37),(26,38),(27,39),(27,40),(232,40),(28,41),(28,42),(28,43),(37,44),(37,45),(46,46),(495,46),(496,46),(508,46),(46,47),(487,47),(488,47),(489,47),(490,47),(491,47),(492,47),(493,47),(494,47),(495,47),(496,47),(497,47),(583,47),(586,47),(46,48),(498,48),(499,48),(500,48),(501,48),(502,48),(503,48),(504,48),(505,48),(506,48),(508,48),(509,48),(510,48),(584,48),(595,48),(603,48),(611,48),(612,48),(613,48),(614,48),(615,48),(616,48),(618,48),(46,49),(495,49),(501,49),(506,49),(514,49),(536,49),(603,49),(629,49),(649,49),(652,49),(46,50),(495,50),(506,50),(507,50),(528,50),(46,51),(495,51),(506,51),(518,51),(522,51),(523,51),(590,51),(591,51),(592,51),(593,51),(594,51),(603,51),(616,51),(643,51),(49,52),(54,53),(68,53),(54,54),(61,55),(62,55),(63,55),(64,55),(62,56),(64,56),(67,56),(498,56),(499,56),(500,56),(584,56),(63,57),(64,57),(507,57),(69,58),(73,59),(566,59),(73,60),(566,60),(73,61),(548,61),(563,61),(566,61),(567,61),(570,61),(571,61),(573,61),(73,62),(566,62),(567,62),(73,63),(566,63),(74,64),(498,64),(499,64),(500,64),(511,64),(512,64),(513,64),(517,64),(518,64),(521,64),(567,64),(583,64),(584,64),(585,64),(92,65),(528,65),(529,65),(530,65),(116,66),(603,66),(609,66),(610,66),(116,67),(122,68),(122,69),(525,69),(534,69),(603,69),(606,69),(609,69),(610,69),(629,69),(639,69),(122,70),(122,71),(127,72),(131,73),(137,74),(137,75),(138,76),(157,76),(144,77),(145,78),(159,79),(160,80),(179,81),(179,82),(179,83),(179,84),(179,85),(179,86),(179,87),(179,88),(179,89),(179,90),(500,90),(583,90),(584,90),(179,91),(179,92),(179,93),(179,94),(179,95),(179,96),(229,97),(229,98),(229,99),(534,99),(606,99),(609,99),(610,99),(629,99),(639,99),(229,100),(229,101),(534,101),(229,102),(495,102),(501,102),(506,102),(583,102),(584,102),(586,102),(650,102),(231,103),(232,103),(232,104),(549,104),(550,104),(604,104),(605,104),(650,104),(232,105),(232,106),(655,106),(656,106),(657,106),(232,107),(242,108),(243,109),(253,110),(254,111),(254,112),(255,113),(279,114),(279,115),(280,116),(280,117),(281,118),(281,119),(282,120),(282,121),(283,122),(283,123),(284,124),(284,125),(285,126),(286,127),(286,128),(287,129),(287,130),(288,131),(288,132),(289,133),(289,134),(290,135),(290,136),(291,137),(291,138),(292,139),(292,140),(293,141),(294,142),(294,143),(295,144),(295,145),(296,146),(296,147),(297,148),(297,149),(298,150),(298,151),(299,152),(299,153),(300,154),(300,155),(301,156),(302,157),(302,158),(303,159),(303,160),(304,161),(304,162),(305,163),(305,164),(306,165),(306,166),(307,167),(307,168),(308,169),(308,170),(309,171),(310,172),(310,173),(311,174),(312,175),(313,176),(314,177),(315,178),(316,179),(317,180),(318,181),(318,182),(319,183),(319,184),(320,185),(320,186),(321,187),(321,188),(322,189),(323,190),(324,191),(325,192),(326,193),(327,194),(328,195),(329,196),(330,197),(331,198),(332,199),(333,200),(334,201),(335,202),(336,203),(337,204),(338,205),(339,206),(340,207),(341,208),(342,209),(343,210),(344,211),(346,212),(347,213),(348,214),(349,215),(350,216),(351,217),(352,218),(353,219),(354,220),(355,221),(356,222),(357,223),(358,224),(359,225),(359,226),
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (0,'HELP_DATE',1,'This help information was generated from the MySQL 5.7 Reference Manual\non: 2019-12-17\n','',''),(1,'HELP_VERSION',1,'This help information was generated from the MySQL 5.7 Reference Manual\non: 2019-12-17 (revision: 64567)\n\nThis information applies to MySQL 5.7 through 5.7.30.\n','',''),(2,'AUTO_INCREMENT',2,'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: https://dev.mysql.com/doc/refman/5.7/en/example-auto-increment.html\n\n','CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n);\n\nINSERT INTO animals (name) VALUES\n    (\'dog\'),(\'cat\'),(\'penguin\'),\n    (\'lax\'),(\'whale\'),(\'ostrich\');\n\nSELECT * FROM animals;\n','https://dev.mysql.com/doc/refman/5.7/en/example-auto-increment.html'),(3,'HELP COMMAND',3,'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttps://dev.mysql.com/doc/refman/5.7/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run \'help contents\' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: \"Contents\"\nFor more information, type \'help <item>\', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Plugins\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: \'SHOW BINARY LOGS\'\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-binary-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP rep% returns a list of topics that\nbegin with rep:\n\nmysql> HELP rep%\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following\ntopics:\n   REPAIR TABLE\n   REPEAT FUNCTION\n   REPEAT LOOP\n   REPLACE\n   REPLACE FUNCTION\n\nURL: https://dev.mysql.com/doc/refman/5.7/en/mysql-server-side-help.html\n\n','','https://dev.mysql.com/doc/refman/5.7/en/mysql-server-side-help.html'),(4,'PROCEDURE ANALYSE',4,'Syntax:\nANALYSE([max_elements[,max_memory]])\n\n*Note*:\n\nPROCEDURE ANALYSE() is deprecated as of MySQL 5.7.18, and is removed in\nMySQL 8.0.\n\nANALYSE() examines the result from a query and returns an analysis of\nthe results that suggests optimal data types for each column that may\nhelp reduce table sizes. To obtain this analysis, append PROCEDURE\nANALYSE to the end of a SELECT statement:\n\nSELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])\n\nFor exa
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_index_stats`
--

DROP TABLE IF EXISTS `innodb_index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_index_stats`
--

LOCK TABLES `innodb_index_stats` WRITE;
/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT INTO `innodb_index_stats` VALUES ('hbnb_dev_db','amenities','PRIMARY','2020-05-08 15:27:11','n_diff_pfx01',13,1,'id'),('hbnb_dev_db','amenities','PRIMARY','2020-05-08 15:27:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','amenities','PRIMARY','2020-05-08 15:27:11','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','cities','PRIMARY','2020-05-08 15:27:01','n_diff_pfx01',32,1,'id'),('hbnb_dev_db','cities','PRIMARY','2020-05-08 15:27:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','cities','PRIMARY','2020-05-08 15:27:01','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','cities','state_id','2020-05-08 15:27:01','n_diff_pfx01',11,1,'state_id'),('hbnb_dev_db','cities','state_id','2020-05-08 15:27:01','n_diff_pfx02',32,1,'state_id,id'),('hbnb_dev_db','cities','state_id','2020-05-08 15:27:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','cities','state_id','2020-05-08 15:27:01','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','place_amenity','PRIMARY','2020-05-17 16:57:40','n_diff_pfx01',1,1,'place_id'),('hbnb_dev_db','place_amenity','PRIMARY','2020-05-17 16:57:40','n_diff_pfx02',2,1,'place_id,amenity_id'),('hbnb_dev_db','place_amenity','PRIMARY','2020-05-17 16:57:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','place_amenity','PRIMARY','2020-05-17 16:57:40','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','place_amenity','amenity_id','2020-05-17 16:57:40','n_diff_pfx01',2,1,'amenity_id'),('hbnb_dev_db','place_amenity','amenity_id','2020-05-17 16:57:40','n_diff_pfx02',2,1,'amenity_id,place_id'),('hbnb_dev_db','place_amenity','amenity_id','2020-05-17 16:57:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','place_amenity','amenity_id','2020-05-17 16:57:40','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','places','PRIMARY','2020-05-08 15:27:27','n_diff_pfx01',0,1,'id'),('hbnb_dev_db','places','PRIMARY','2020-05-08 15:27:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','places','PRIMARY','2020-05-08 15:27:27','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','places','city_id','2020-05-08 15:27:27','n_diff_pfx01',0,1,'city_id'),('hbnb_dev_db','places','city_id','2020-05-08 15:27:27','n_diff_pfx02',0,1,'city_id,id'),('hbnb_dev_db','places','city_id','2020-05-08 15:27:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','places','city_id','2020-05-08 15:27:27','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','places','id','2020-05-08 15:27:27','n_diff_pfx01',0,1,'id'),('hbnb_dev_db','places','id','2020-05-08 15:27:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','places','id','2020-05-08 15:27:27','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','places','user_id','2020-05-08 15:27:27','n_diff_pfx01',0,1,'user_id'),('hbnb_dev_db','places','user_id','2020-05-08 15:27:27','n_diff_pfx02',0,1,'user_id,id'),('hbnb_dev_db','places','user_id','2020-05-08 15:27:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','places','user_id','2020-05-08 15:27:27','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','reviews','PRIMARY','2020-05-08 15:27:27','n_diff_pfx01',0,1,'id'),('hbnb_dev_db','reviews','PRIMARY','2020-05-08 15:27:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','reviews','PRIMARY','2020-05-08 15:27:27','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','reviews','id','2020-05-08 15:27:27','n_diff_pfx01',0,1,'id'),('hbnb_dev_db','reviews','id','2020-05-08 15:27:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('hbnb_dev_db','reviews','id','2020-05-08 15:27:27','size',1,NULL,'Number of pages in the index'),('hbnb_dev_db','reviews','place_id','2020-05-08 15:27:27','n_diff_pfx01',0,1,'place_id'),('hbnb_dev_db','reviews','place_id','2020-05-08 15:27:27','n_diff_pfx02',0,1,'place_id,id'),('hbnb_dev_db','reviews','place_id','2020
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_table_stats`
--

DROP TABLE IF EXISTS `innodb_table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_table_stats`
--

LOCK TABLES `innodb_table_stats` WRITE;
/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT INTO `innodb_table_stats` VALUES ('hbnb_dev_db','amenities','2020-05-08 15:27:11',13,1,0),('hbnb_dev_db','cities','2020-05-08 15:27:01',32,1,1),('hbnb_dev_db','place_amenity','2020-05-17 16:57:40',2,1,1),('hbnb_dev_db','places','2020-05-08 15:27:27',0,1,3),('hbnb_dev_db','reviews','2020-05-08 15:27:27',0,1,3),('hbnb_dev_db','states','2020-05-08 15:27:21',13,1,0),('hbnb_dev_db','users','2020-05-08 15:27:27',0,1,1),('hbtn_0c_0','first_table','2020-03-02 19:00:15',0,1,0),('hbtn_0c_0','second_table','2020-03-02 20:19:17',4,1,0),('hbtn_0c_0','temperatures','2020-03-16 21:25:24',3876,14,0),('hbtn_0d_2','force_name','2020-03-05 20:14:49',1,1,0),('hbtn_0d_2','id_not_null','2020-03-05 20:16:00',0,1,0),('hbtn_0d_tvshows','tv_genres','2020-03-06 00:50:27',8,1,0),('hbtn_0d_tvshows','tv_show_genres','2020-03-06 00:50:48',19,1,2),('hbtn_0d_tvshows','tv_shows','2020-03-06 00:50:38',10,1,0),('hbtn_0d_tvshows_rate','tv_genres','2020-03-18 14:51:01',8,1,0),('hbtn_0d_tvshows_rate','tv_show_genres','2020-03-18 14:51:11',19,1,2),('hbtn_0d_tvshows_rate','tv_show_ratings','2020-03-18 14:51:01',192,1,1),('hbtn_0d_tvshows_rate','tv_shows','2020-03-18 14:51:21',10,1,0),('hbtn_0d_usa','cities','2020-03-05 20:26:21',6,1,2),('hbtn_0d_usa','states','2020-03-05 20:17:00',3,1,1),('hbtn_0e_0_usa','states','2020-03-28 20:45:40',10,1,0),('hbtn_0e_100_usa','cities','2020-03-29 22:26:49',0,1,2),('hbtn_0e_100_usa','states','2020-03-29 22:26:49',0,1,1),('hbtn_0e_101_usa','cities','2020-03-29 23:08:45',15,1,1),('hbtn_0e_101_usa','states','2020-03-29 23:08:35',5,1,0),('hbtn_0e_14_usa','cities','2020-03-29 20:27:09',15,1,1),('hbtn_0e_14_usa','states','2020-03-29 20:26:59',5,1,0),('hbtn_0e_4_usa','cities','2020-03-28 20:46:20',15,1,1),('hbtn_0e_4_usa','states','2020-03-28 20:46:10',5,1,0),('hbtn_0e_6_usa','cities','2020-03-29 20:50:23',0,1,2),('hbtn_0e_6_usa','states','2020-03-29 19:53:24',3,1,1),('mysql','gtid_executed','2020-03-02 17:11:40',0,1,0),('sys','sys_config','2020-03-02 17:11:49',6,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ndb_binlog_index`
--

DROP TABLE IF EXISTS `ndb_binlog_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` int(10) unsigned NOT NULL,
  `updates` int(10) unsigned NOT NULL,
  `deletes` int(10) unsigned NOT NULL,
  `schemaops` int(10) unsigned NOT NULL,
  `orig_server_id` int(10) unsigned NOT NULL,
  `orig_epoch` bigint(20) unsigned NOT NULL,
  `gci` int(10) unsigned NOT NULL,
  `next_position` bigint(20) unsigned NOT NULL,
  `next_file` varchar(255) NOT NULL,
  PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndb_binlog_index`
--

LOCK TABLES `ndb_binlog_index` WRITE;
/*!40000 ALTER TABLE `ndb_binlog_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndb_binlog_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES ('auth_socket','auth_socket.so');
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proc`
--

DROP TABLE IF EXISTS `proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(93) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proc`
--

LOCK TABLES `proc` WRITE;
/*!40000 ALTER TABLE `proc` DISABLE KEYS */;
/*!40000 ALTER TABLE `proc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proxies_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@connecting host','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`cost_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` VALUES ('disk_temptable_create_cost',NULL,'2020-03-02 17:11:41',NULL),('disk_temptable_row_cost',NULL,'2020-03-02 17:11:41',NULL),('key_compare_cost',NULL,'2020-03-02 17:11:41',NULL),('memory_temptable_create_cost',NULL,'2020-03-02 17:11:41',NULL),('memory_temptable_row_cost',NULL,'2020-03-02 17:11:41',NULL),('row_evaluate_cost',NULL,'2020-03-02 17:11:41',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int(10) unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int(10) unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint(20) unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  PRIMARY KEY (`Channel_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int(11) NOT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int(10) unsigned NOT NULL,
  `Id` int(10) unsigned NOT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slave_worker_info` (
  `Id` int(10) unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint(20) unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_seqno` int(10) unsigned NOT NULL,
  `Checkpoint_group_size` int(10) unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@connecting host','0000-00-00 00:00:00','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2020-03-02 17:11:49','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'mysql_native_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint(5) unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'auth_socket','','N','2020-03-02 17:11:42',NULL,'N'),('localhost','mysql.session','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE','N','2020-03-02 17:11:49',NULL,'Y'),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE','N','2020-03-02 17:11:49',NULL,'Y'),('localhost','debian-sys-maint','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','*11D57480DA42ADD2D1AF0FBB4056CC8F4AF3630B','N','2020-03-02 17:11:52',NULL,'N'),('localhost','user_0d_1','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','','N','2020-03-04 15:24:10',NULL,'N'),('localhost','user_0d_2','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*07FB48C150E7CCB7A65E5AF3FF47DD97EFFF94D6','N','2020-03-04 21:54:08',NULL,'N'),('localhost','hbnb_dev','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*DEC27881DD0FE35EEA707EB022B3EF183B0C594C','N','2020-05-08 15:27:01',NULL,'N'),('localhost','hbnb_test','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*15AC132C3E6AE5B36BA5BF9D00A16E0CE869BE26','N','2020-03-30 18:54:10',NULL,'N');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01 19:05:58
