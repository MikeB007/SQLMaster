-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `commodities_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `commodities_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `commodities_db`;

--
-- Table structure for table `commodities_daily`
--

DROP TABLE IF EXISTS `commodities_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commodities_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `change_value` decimal(15,4) DEFAULT NULL,
  `daily_pct` decimal(10,2) DEFAULT NULL,
  `weekly_pct` decimal(10,2) DEFAULT NULL,
  `monthly_pct` decimal(10,2) DEFAULT NULL,
  `yearly_pct` decimal(10,2) DEFAULT NULL,
  `three_year_pct` decimal(10,2) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_date` (`date`),
  KEY `idx_asset_name` (`asset`,`name`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `investment_opportunities_daily`
--

DROP TABLE IF EXISTS `investment_opportunities_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_opportunities_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `timeframe` varchar(20) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `rank_asset` int(11) DEFAULT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `daily_pct` decimal(10,2) DEFAULT NULL,
  `weekly_pct` decimal(10,2) DEFAULT NULL,
  `monthly_pct` decimal(10,2) DEFAULT NULL,
  `yearly_pct` decimal(10,2) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_date` (`date`),
  KEY `idx_timeframe` (`timeframe`),
  KEY `idx_asset_name` (`asset`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `strong_leads_daily`
--

DROP TABLE IF EXISTS `strong_leads_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strong_leads_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  `rank_asset` int(11) DEFAULT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `daily_pct` decimal(10,2) DEFAULT NULL,
  `weekly_pct` decimal(10,2) DEFAULT NULL,
  `monthly_pct` decimal(10,2) DEFAULT NULL,
  `yearly_pct` decimal(10,2) DEFAULT NULL,
  `match_info` varchar(50) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_date` (`date`),
  KEY `idx_ranking` (`ranking`),
  KEY `idx_asset_name` (`asset`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `effigy`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `effigy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `effigy`;

--
-- Table structure for table `attrib`
--

DROP TABLE IF EXISTS `attrib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attrib` (
  `ATTRIB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `CAMERA` varchar(70) DEFAULT NULL,
  `MODEL` varchar(70) DEFAULT NULL,
  `DTTAKEN` datetime DEFAULT NULL,
  `DTMODIFY` datetime DEFAULT NULL,
  `FSTOP` varchar(40) DEFAULT NULL,
  `EXPOSURE` varchar(20) DEFAULT NULL,
  `ORIENTATION` varchar(20) DEFAULT NULL,
  `FLASH` varchar(20) DEFAULT NULL,
  `SHUTTER` varchar(20) DEFAULT NULL,
  `APERTURE` varchar(20) DEFAULT NULL,
  `ISOSPEED` varchar(20) DEFAULT NULL,
  `DIGIZOOM` varchar(20) DEFAULT NULL,
  `EXIF` varchar(5000) DEFAULT NULL,
  `MEDIA_ID` int(11) NOT NULL,
  `MEDIA_KEY` varchar(200) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`ATTRIB_ID`),
  UNIQUE KEY `ATTRIB_ID_UNIQUE` (`ATTRIB_ID`),
  UNIQUE KEY `MEDIA_ID_UNIQUE` (`MEDIA_ID`),
  UNIQUE KEY `MEDIA_KEY_UNIQUE` (`MEDIA_KEY`),
  CONSTRAINT `FK_MEDIA2_ID` FOREIGN KEY (`MEDIA_ID`) REFERENCES `media` (`MEDIA_ID`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=30253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collection_year`
--

DROP TABLE IF EXISTS `collection_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_year` (
  `COLLECTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FOLDER_ID` int(11) NOT NULL,
  `YEAR` date DEFAULT NULL,
  `PERCENTAGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`COLLECTION_ID`),
  UNIQUE KEY `COLLECTION_ID_UNIQUE` (`COLLECTION_ID`),
  KEY `FK_FOLDER_ID_idx` (`FOLDER_ID`),
  CONSTRAINT `FK_FOLDER_ID` FOREIGN KEY (`FOLDER_ID`) REFERENCES `loc_folder` (`FOLDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEDIA_ID` int(100) NOT NULL,
  `COMMENTS` varchar(1000) NOT NULL,
  `INSERT_DT` int(11) NOT NULL,
  `INSERT_BY` varchar(45) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `PATH` varchar(500) NOT NULL,
  PRIMARY KEY (`COMMENT_ID`),
  UNIQUE KEY `comment_id_UNIQUE` (`COMMENT_ID`),
  KEY `FP_MEDIA_ID_idx` (`MEDIA_ID`),
  CONSTRAINT `FP_MEDIA_ID` FOREIGN KEY (`MEDIA_ID`) REFERENCES `media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments_root`
--

DROP TABLE IF EXISTS `comments_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_root` (
  `COMMENTS_ROOT_ID` int(1) NOT NULL AUTO_INCREMENT,
  `COMMENTS_SRC` varchar(4) DEFAULT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`COMMENTS_ROOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments_thread`
--

DROP TABLE IF EXISTS `comments_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_thread` (
  `COMMENTS_THREAD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENTS` varchar(1000) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  `INSERTBY_BY` varchar(45) NOT NULL,
  `COMMENTS_ROOT_ID` int(11) NOT NULL,
  PRIMARY KEY (`COMMENTS_THREAD_ID`),
  UNIQUE KEY `comment_id_UNIQUE` (`COMMENTS_THREAD_ID`),
  CONSTRAINT `FP_COMMENT_THREAD_ID` FOREIGN KEY (`COMMENTS_THREAD_ID`) REFERENCES `comments_root` (`COMMENTS_ROOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `default_locations`
--

DROP TABLE IF EXISTS `default_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_locations` (
  `DEF_LOC_ID` int(11) NOT NULL,
  `LOCATION` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`DEF_LOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `excluded_ext`
--

DROP TABLE IF EXISTS `excluded_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excluded_ext` (
  `EXTENSION` varchar(10) NOT NULL,
  PRIMARY KEY (`EXTENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `face`
--

DROP TABLE IF EXISTS `face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `face` (
  `FACE_ID` int(11) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `HANDLE` varchar(45) NOT NULL,
  `FACE_TYPE_FAMILY_FRIEND` int(11) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`FACE_ID`),
  UNIQUE KEY `FACE_ID_UNIQUE` (`FACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fav_type`
--

DROP TABLE IF EXISTS `fav_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fav_type` (
  `FAV_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENTS` varchar(45) NOT NULL,
  `SRC` varchar(45) NOT NULL,
  PRIMARY KEY (`FAV_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourites` (
  `FAVOURITE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FAV_TYPE_ID` int(11) NOT NULL,
  `MEDIA_ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `PATH` varchar(500) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  `INSERTED_BY` varchar(45) NOT NULL,
  PRIMARY KEY (`FAVOURITE_ID`),
  KEY `FK_MEDIA_ID_idx` (`MEDIA_ID`),
  KEY `FK_FAV_TYPE_ID_idx` (`FAV_TYPE_ID`),
  CONSTRAINT `FK_FAV_TYPE_ID` FOREIGN KEY (`FAV_TYPE_ID`) REFERENCES `fav_type` (`FAV_TYPE_ID`),
  CONSTRAINT `FK_MEDIA_ID` FOREIGN KEY (`MEDIA_ID`) REFERENCES `media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `LIKE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(11) NOT NULL,
  `PARENT_SRC` varchar(4) NOT NULL,
  `LIKE_TYPE` varchar(45) NOT NULL,
  `INSERTED_BY` varchar(45) DEFAULT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`LIKE_ID`),
  UNIQUE KEY `LIKE_ID_UNIQUE` (`LIKE_ID`),
  KEY `FP_LIKE_PARENT_ID_idx` (`PARENT_ID`),
  CONSTRAINT `FP_LIKE_PARENT_ID` FOREIGN KEY (`PARENT_ID`) REFERENCES `media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loc_folder`
--

DROP TABLE IF EXISTS `loc_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc_folder` (
  `FOLDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROOT_ID` int(11) NOT NULL,
  `ROOT` varchar(500) NOT NULL,
  `FOLDER` varchar(100) NOT NULL,
  `FOLDER_PATH` varchar(600) NOT NULL,
  `FOLDER_STORY` varchar(1000) DEFAULT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`FOLDER_ID`),
  UNIQUE KEY `LOC_FID_UNIQUE` (`FOLDER_ID`),
  UNIQUE KEY `FOLDER_PATH_UNIQUE` (`FOLDER_PATH`(255)),
  KEY `FK_ROOT_ID_idx` (`ROOT_ID`),
  CONSTRAINT `FK_ROOT_ID` FOREIGN KEY (`ROOT_ID`) REFERENCES `loc_root` (`ROOT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loc_root`
--

DROP TABLE IF EXISTS `loc_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc_root` (
  `ROOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROOT` varchar(500) NOT NULL,
  `ROOT_STORY` varchar(10000) DEFAULT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`ROOT_ID`),
  UNIQUE KEY `LOC_ID_UNIQUE` (`ROOT_ID`),
  UNIQUE KEY `ROOT_UNIQUE` (`ROOT`(255))
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `PARENT_SRC` varchar(4) DEFAULT NULL,
  `LOCATION` varchar(500) DEFAULT NULL,
  `LOCATION COMMENTS` varchar(1000) DEFAULT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `MEDIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEDIA_KEY` varchar(200) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `MEDIA_TYPE_ID` varchar(1) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `PATH` varchar(500) NOT NULL,
  `PARENT_FOLDER_ID` int(11) NOT NULL,
  `PARENT_FOLDER` varchar(500) NOT NULL,
  `SHORT_DESC` varchar(100) DEFAULT NULL,
  `DESC` varchar(300) DEFAULT NULL,
  `FAV_COUNT` int(11) DEFAULT NULL,
  `EXTENSION` varchar(10) NOT NULL,
  `SIZE` int(11) DEFAULT NULL,
  `DTTAKEN` datetime DEFAULT NULL,
  `DTMODIFY` datetime DEFAULT NULL,
  `UPDATE_DT` datetime DEFAULT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`MEDIA_ID`),
  UNIQUE KEY `ID_UNIQUE` (`MEDIA_ID`),
  UNIQUE KEY `MEDIA_KEY_UNIQUE` (`MEDIA_KEY`),
  KEY `FP_EXTENSION_idx` (`EXTENSION`),
  KEY `FK_MEDIA_TYPE_ID_idx` (`MEDIA_TYPE_ID`),
  KEY `FK_FOLDER1_ID_idx` (`PARENT_FOLDER_ID`),
  KEY `FK_PARENT_FOLDER_ID` (`FOLDER_ID`),
  CONSTRAINT `FK_FOLDER1_ID` FOREIGN KEY (`PARENT_FOLDER_ID`) REFERENCES `loc_folder` (`ROOT_ID`),
  CONSTRAINT `FK_MEDIA_TYPE_ID` FOREIGN KEY (`MEDIA_TYPE_ID`) REFERENCES `media_type` (`MEDIA_TYPE_ID`),
  CONSTRAINT `FK_PARENT_FOLDER_ID` FOREIGN KEY (`FOLDER_ID`) REFERENCES `loc_folder` (`FOLDER_ID`),
  CONSTRAINT `FP_EXTENSION` FOREIGN KEY (`EXTENSION`) REFERENCES `supported_ext` (`EXTENSION`)
) ENGINE=InnoDB AUTO_INCREMENT=22903 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_face`
--

DROP TABLE IF EXISTS `media_face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_face` (
  `MEDIA_FACE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEDIA_ID` int(11) NOT NULL,
  `FACE_ID` int(11) NOT NULL,
  PRIMARY KEY (`MEDIA_FACE_ID`),
  UNIQUE KEY `MEDIA_FACE_ID_UNIQUE` (`MEDIA_FACE_ID`),
  UNIQUE KEY `INX_FACE_MEDIA` (`MEDIA_ID`,`FACE_ID`),
  KEY `FK_FACE_idx` (`FACE_ID`),
  KEY `FK_MEDIA_idx` (`MEDIA_ID`),
  CONSTRAINT `FK_FACE` FOREIGN KEY (`FACE_ID`) REFERENCES `face` (`FACE_ID`),
  CONSTRAINT `FK_MEDIA` FOREIGN KEY (`MEDIA_ID`) REFERENCES `media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_type`
--

DROP TABLE IF EXISTS `media_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_type` (
  `MEDIA_TYPE_ID` varchar(1) NOT NULL,
  `MEDIA DESC` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MEDIA_TYPE_ID`),
  UNIQUE KEY `ID_UNIQUE` (`MEDIA_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_type_ext`
--

DROP TABLE IF EXISTS `media_type_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_type_ext` (
  `MEDIA_TYPE_EXT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEDIA_TYPE_ID` varchar(1) NOT NULL,
  `EXTENSION` varchar(11) NOT NULL,
  PRIMARY KEY (`MEDIA_TYPE_EXT_ID`),
  UNIQUE KEY `MEDIA_TYPE_EXT_ID_UNIQUE` (`MEDIA_TYPE_EXT_ID`),
  KEY `FK_MEDIA_TYPE_idx` (`MEDIA_TYPE_ID`),
  KEY `FK_EXTENSION_idx` (`EXTENSION`),
  CONSTRAINT `FK_EXTENSION` FOREIGN KEY (`EXTENSION`) REFERENCES `supported_ext` (`EXTENSION`),
  CONSTRAINT `FK_MEDIA_TYPE` FOREIGN KEY (`MEDIA_TYPE_ID`) REFERENCES `media_type` (`MEDIA_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search` (
  `SEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `KEYWORD` varchar(100) NOT NULL,
  `MEDIA_TYPE` varchar(1) DEFAULT NULL,
  `SEARCH_SCOPE` varchar(45) DEFAULT NULL,
  `SEARCHED_BY` varchar(45) NOT NULL,
  `SEARCH_DT` date DEFAULT NULL,
  PRIMARY KEY (`SEARCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skip_root`
--

DROP TABLE IF EXISTS `skip_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skip_root` (
  `SKIP_ROOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SKIP_ROOT` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`SKIP_ROOT_ID`),
  UNIQUE KEY `SKIP_ROOT_ID_UNIQUE` (`SKIP_ROOT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supported_ext`
--

DROP TABLE IF EXISTS `supported_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supported_ext` (
  `EXTENSION` varchar(10) NOT NULL,
  `DESC` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EXTENSION`),
  UNIQUE KEY `SUPPORTED_TYPE_ID_UNIQUE` (`EXTENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `HANDLE` varchar(45) NOT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USER_ID_UNIQUE` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `effigy3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `effigy3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `effigy3`;

--
-- Table structure for table `attrib`
--

DROP TABLE IF EXISTS `attrib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attrib` (
  `ATTRIB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `CAMERA` varchar(70) DEFAULT NULL,
  `MODEL` varchar(70) DEFAULT NULL,
  `DTTAKEN` datetime DEFAULT NULL,
  `DTMODIFY` datetime DEFAULT NULL,
  `FSTOP` varchar(40) DEFAULT NULL,
  `EXPOSURE` varchar(20) DEFAULT NULL,
  `ORIENTATION` varchar(20) DEFAULT NULL,
  `FLASH` varchar(20) DEFAULT NULL,
  `SHUTTER` varchar(20) DEFAULT NULL,
  `APERTURE` varchar(20) DEFAULT NULL,
  `ISOSPEED` varchar(20) DEFAULT NULL,
  `DIGIZOOM` varchar(20) DEFAULT NULL,
  `EXIF` varchar(5000) DEFAULT NULL,
  `MEDIA_ID` int(11) NOT NULL,
  `MEDIA_KEY` varchar(200) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`ATTRIB_ID`),
  UNIQUE KEY `ATTRIB_ID_UNIQUE` (`ATTRIB_ID`),
  UNIQUE KEY `MEDIA_ID_UNIQUE` (`MEDIA_ID`),
  UNIQUE KEY `MEDIA_KEY_UNIQUE` (`MEDIA_KEY`),
  CONSTRAINT `FK_MEDIA2_ID` FOREIGN KEY (`MEDIA_ID`) REFERENCES `media` (`MEDIA_ID`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=82832 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collection_year`
--

DROP TABLE IF EXISTS `collection_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_year` (
  `COLLECTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FOLDER_ID` int(11) NOT NULL,
  `YEAR` date DEFAULT NULL,
  `PERCENTAGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`COLLECTION_ID`),
  UNIQUE KEY `COLLECTION_ID_UNIQUE` (`COLLECTION_ID`),
  KEY `FK_FOLDER_ID_idx` (`FOLDER_ID`),
  CONSTRAINT `FK_FOLDER_ID` FOREIGN KEY (`FOLDER_ID`) REFERENCES `loc_folder` (`FOLDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments_root`
--

DROP TABLE IF EXISTS `comments_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_root` (
  `COMMENTS_ROOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENTS_SRC_ID` int(11) NOT NULL,
  `COMMENTS_SRC` varchar(4) DEFAULT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`COMMENTS_ROOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments_thread`
--

DROP TABLE IF EXISTS `comments_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_thread` (
  `COMMENTS_THREAD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENTS` varchar(1000) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  `INSERTBY_BY` varchar(45) NOT NULL,
  `COMMENTS_ROOT_ID` int(11) NOT NULL,
  PRIMARY KEY (`COMMENTS_THREAD_ID`),
  UNIQUE KEY `comment_id_UNIQUE` (`COMMENTS_THREAD_ID`),
  CONSTRAINT `FP_COMMENT_THREAD_ID` FOREIGN KEY (`COMMENTS_THREAD_ID`) REFERENCES `comments_root` (`COMMENTS_ROOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `default_locations`
--

DROP TABLE IF EXISTS `default_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_locations` (
  `DEF_LOC_ID` int(11) NOT NULL,
  `LOCATION` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`DEF_LOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `excluded_ext`
--

DROP TABLE IF EXISTS `excluded_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excluded_ext` (
  `EXTENSION` varchar(10) NOT NULL,
  PRIMARY KEY (`EXTENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `face`
--

DROP TABLE IF EXISTS `face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `face` (
  `FACE_ID` int(11) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `HANDLE` varchar(45) NOT NULL,
  `FACE_TYPE_FAMILY_FRIEND` int(11) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`FACE_ID`),
  UNIQUE KEY `FACE_ID_UNIQUE` (`FACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fav_type`
--

DROP TABLE IF EXISTS `fav_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fav_type` (
  `FAV_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENTS` varchar(45) NOT NULL,
  `SRC` varchar(45) NOT NULL,
  PRIMARY KEY (`FAV_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourites` (
  `FAVOURITE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FAV_TYPE_ID` int(11) NOT NULL,
  `MEDIA_ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `PATH` varchar(500) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  `INSERTED_BY` varchar(45) NOT NULL,
  PRIMARY KEY (`FAVOURITE_ID`),
  KEY `FK_MEDIA_ID_idx` (`MEDIA_ID`),
  KEY `FK_FAV_TYPE_ID_idx` (`FAV_TYPE_ID`),
  CONSTRAINT `FK_FAV_TYPE_ID` FOREIGN KEY (`FAV_TYPE_ID`) REFERENCES `fav_type` (`FAV_TYPE_ID`),
  CONSTRAINT `FK_MEDIA_ID` FOREIGN KEY (`MEDIA_ID`) REFERENCES `media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `LIKE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(11) NOT NULL,
  `PARENT_SRC` varchar(4) NOT NULL,
  `LIKE_TYPE` varchar(45) NOT NULL,
  `INSERTED_BY` varchar(45) DEFAULT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`LIKE_ID`),
  UNIQUE KEY `LIKE_ID_UNIQUE` (`LIKE_ID`),
  KEY `FP_LIKE_PARENT_ID_idx` (`PARENT_ID`),
  CONSTRAINT `FP_LIKE_PARENT_ID` FOREIGN KEY (`PARENT_ID`) REFERENCES `media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loc_folder`
--

DROP TABLE IF EXISTS `loc_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc_folder` (
  `FOLDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROOT_ID` int(11) NOT NULL,
  `ROOT` varchar(500) NOT NULL,
  `FOLDER` varchar(100) NOT NULL,
  `FOLDER_PATH` varchar(600) NOT NULL,
  `FOLDER_STORY` varchar(1000) DEFAULT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`FOLDER_ID`),
  UNIQUE KEY `LOC_FID_UNIQUE` (`FOLDER_ID`),
  UNIQUE KEY `FOLDER_PATH_UNIQUE` (`FOLDER_PATH`),
  KEY `FK_ROOT_ID_idx` (`ROOT_ID`),
  CONSTRAINT `FK_ROOT_ID` FOREIGN KEY (`ROOT_ID`) REFERENCES `loc_root` (`ROOT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1894 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loc_root`
--

DROP TABLE IF EXISTS `loc_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc_root` (
  `ROOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROOT` varchar(500) NOT NULL,
  `ROOT_STORY` varchar(10000) DEFAULT NULL,
  `COLLECTION_ID` int(11) NOT NULL,
  `COLLECTION_DESC` varchar(200) NOT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`ROOT_ID`),
  UNIQUE KEY `LOC_ID_UNIQUE` (`ROOT_ID`),
  UNIQUE KEY `ROOT_UNIQUE` (`ROOT`)
) ENGINE=InnoDB AUTO_INCREMENT=635 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `PARENT_SRC` varchar(4) DEFAULT NULL,
  `LOCATION` varchar(500) DEFAULT NULL,
  `LOCATION COMMENTS` varchar(1000) DEFAULT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `MEDIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEDIA_KEY` varchar(200) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `MEDIA_TYPE_ID` varchar(1) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `PATH` varchar(500) NOT NULL,
  `PARENT_FOLDER_ID` int(11) NOT NULL,
  `PARENT_FOLDER` varchar(500) NOT NULL,
  `SHORT_DESC` varchar(100) DEFAULT NULL,
  `DESC` varchar(300) DEFAULT NULL,
  `FAV_COUNT` int(11) DEFAULT NULL,
  `EXTENSION` varchar(10) NOT NULL,
  `SIZE` int(11) DEFAULT NULL,
  `DTTAKEN` datetime DEFAULT NULL,
  `DTMODIFY` datetime DEFAULT NULL,
  `UPDATE_DT` datetime DEFAULT NULL,
  `INSERTED_DT` datetime NOT NULL,
  PRIMARY KEY (`MEDIA_ID`),
  UNIQUE KEY `ID_UNIQUE` (`MEDIA_ID`),
  UNIQUE KEY `MEDIA_KEY_UNIQUE` (`MEDIA_KEY`),
  KEY `FP_EXTENSION_idx` (`EXTENSION`),
  KEY `FK_MEDIA_TYPE_ID_idx` (`MEDIA_TYPE_ID`),
  KEY `FK_FOLDER1_ID_idx` (`PARENT_FOLDER_ID`),
  KEY `FK_PARENT_FOLDER_ID` (`FOLDER_ID`),
  CONSTRAINT `FK_FOLDER1_ID` FOREIGN KEY (`PARENT_FOLDER_ID`) REFERENCES `loc_folder` (`ROOT_ID`),
  CONSTRAINT `FK_MEDIA_TYPE_ID` FOREIGN KEY (`MEDIA_TYPE_ID`) REFERENCES `media_type` (`MEDIA_TYPE_ID`),
  CONSTRAINT `FK_PARENT_FOLDER_ID` FOREIGN KEY (`FOLDER_ID`) REFERENCES `loc_folder` (`FOLDER_ID`),
  CONSTRAINT `FP_EXTENSION` FOREIGN KEY (`EXTENSION`) REFERENCES `supported_ext` (`EXTENSION`)
) ENGINE=InnoDB AUTO_INCREMENT=87350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_face`
--

DROP TABLE IF EXISTS `media_face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_face` (
  `MEDIA_FACE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEDIA_ID` int(11) NOT NULL,
  `FACE_ID` int(11) NOT NULL,
  PRIMARY KEY (`MEDIA_FACE_ID`),
  UNIQUE KEY `MEDIA_FACE_ID_UNIQUE` (`MEDIA_FACE_ID`),
  UNIQUE KEY `INX_FACE_MEDIA` (`MEDIA_ID`,`FACE_ID`),
  KEY `FK_FACE_idx` (`FACE_ID`),
  KEY `FK_MEDIA_idx` (`MEDIA_ID`),
  CONSTRAINT `FK_FACE` FOREIGN KEY (`FACE_ID`) REFERENCES `face` (`FACE_ID`),
  CONSTRAINT `FK_MEDIA` FOREIGN KEY (`MEDIA_ID`) REFERENCES `media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_type`
--

DROP TABLE IF EXISTS `media_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_type` (
  `MEDIA_TYPE_ID` varchar(1) NOT NULL,
  `MEDIA DESC` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MEDIA_TYPE_ID`),
  UNIQUE KEY `ID_UNIQUE` (`MEDIA_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_type_ext`
--

DROP TABLE IF EXISTS `media_type_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_type_ext` (
  `MEDIA_TYPE_EXT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEDIA_TYPE_ID` varchar(1) NOT NULL,
  `EXTENSION` varchar(10) NOT NULL,
  PRIMARY KEY (`MEDIA_TYPE_EXT_ID`),
  UNIQUE KEY `MEDIA_TYPE_EXT_ID_UNIQUE` (`MEDIA_TYPE_EXT_ID`),
  KEY `FK_MEDIA_TYPE_idx` (`MEDIA_TYPE_ID`),
  KEY `FK_EXTENSION_idx` (`EXTENSION`) /*!80000 INVISIBLE */,
  CONSTRAINT `FK_EXTENSION` FOREIGN KEY (`EXTENSION`) REFERENCES `supported_ext` (`EXTENSION`),
  CONSTRAINT `FK_MEDIA_TYPE` FOREIGN KEY (`MEDIA_TYPE_ID`) REFERENCES `media_type` (`MEDIA_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search` (
  `SEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `KEYWORD` varchar(100) NOT NULL,
  `MEDIA_TYPE` varchar(1) DEFAULT NULL,
  `SEARCH_SCOPE` varchar(45) DEFAULT NULL,
  `SEARCHED_BY` varchar(45) NOT NULL,
  `SEARCH_DT` date DEFAULT NULL,
  PRIMARY KEY (`SEARCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skip_root`
--

DROP TABLE IF EXISTS `skip_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skip_root` (
  `SKIP_ROOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SKIP_ROOT` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`SKIP_ROOT_ID`),
  UNIQUE KEY `SKIP_ROOT_ID_UNIQUE` (`SKIP_ROOT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supported_ext`
--

DROP TABLE IF EXISTS `supported_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supported_ext` (
  `EXTENSION` varchar(10) NOT NULL,
  `DESC` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EXTENSION`),
  UNIQUE KEY `SUPPORTED_TYPE_ID_UNIQUE` (`EXTENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tag_list`
--

DROP TABLE IF EXISTS `tag_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_list` (
  `TAG_LIST_ID` int(11) NOT NULL,
  `TAG_ROOT_ID` int(11) NOT NULL,
  `TAG` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TAG_LIST_ID`),
  UNIQUE KEY `TAG_LIST_ID_UNIQUE` (`TAG_LIST_ID`),
  KEY `FK_TAG_ROOT_ID_idx` (`TAG_ROOT_ID`),
  CONSTRAINT `FK_TAG_ROOT_ID` FOREIGN KEY (`TAG_ROOT_ID`) REFERENCES `tag_root` (`TAG_ROOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tag_root`
--

DROP TABLE IF EXISTS `tag_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_root` (
  `TAG_ROOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TAG_SRC_ID` int(11) NOT NULL,
  `TAG_SRC` varchar(4) NOT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`TAG_ROOT_ID`),
  UNIQUE KEY `tag_root_id_UNIQUE` (`TAG_ROOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `HANDLE` varchar(45) NOT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USER_ID_UNIQUE` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `import`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `import` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `import`;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int(10) unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int(11) NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint(20) NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint(20) NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the master.',
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
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between master and slave.',
  `Master_zstd_compression_level` int(10) unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int(11) NOT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int(10) unsigned NOT NULL,
  `Id` int(10) unsigned NOT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint(5) unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint(5) unsigned DEFAULT NULL,
  `Password_reuse_time` smallint(5) unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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

--
-- Current Database: `sakila`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sakila` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sakila`;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `actor_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`actor_id`),
  KEY `idx_actor_last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `actor_info`
--

DROP TABLE IF EXISTS `actor_info`;
/*!50001 DROP VIEW IF EXISTS `actor_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `actor_info` AS SELECT 
 1 AS `actor_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `film_info`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `district` varchar(20) NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `location` geometry NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  KEY `idx_fk_city_id` (`city_id`),
  SPATIAL KEY `idx_location` (`location`),
  CONSTRAINT `fk_address_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  KEY `idx_fk_country_id` (`country_id`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` tinyint(3) unsigned NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  KEY `idx_fk_store_id` (`store_id`),
  KEY `idx_fk_address_id` (`address_id`),
  KEY `idx_last_name` (`last_name`),
  CONSTRAINT `fk_customer_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `customer_create_date` BEFORE INSERT ON `customer` FOR EACH ROW SET NEW.create_date = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `customer_list`
--

DROP TABLE IF EXISTS `customer_list`;
/*!50001 DROP VIEW IF EXISTS `customer_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_list` AS SELECT 
 1 AS `ID`,
 1 AS `name`,
 1 AS `address`,
 1 AS `zip code`,
 1 AS `phone`,
 1 AS `city`,
 1 AS `country`,
 1 AS `notes`,
 1 AS `SID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `rental_rate` decimal(4,2) NOT NULL DEFAULT '4.99',
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) NOT NULL DEFAULT '19.99',
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT 'G',
  `special_features` set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`film_id`),
  KEY `idx_title` (`title`),
  KEY `idx_fk_language_id` (`language_id`),
  KEY `idx_fk_original_language_id` (`original_language_id`),
  CONSTRAINT `fk_film_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_film_language_original` FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_film` AFTER INSERT ON `film` FOR EACH ROW BEGIN
    INSERT INTO film_text (film_id, title, description)
        VALUES (new.film_id, new.title, new.description);
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_film` AFTER UPDATE ON `film` FOR EACH ROW BEGIN
    IF (old.title != new.title) OR (old.description != new.description) OR (old.film_id != new.film_id)
    THEN
        UPDATE film_text
            SET title=new.title,
                description=new.description,
                film_id=new.film_id
        WHERE film_id=old.film_id;
    END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `del_film` AFTER DELETE ON `film` FOR EACH ROW BEGIN
    DELETE FROM film_text WHERE film_id = old.film_id;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_actor` (
  `actor_id` smallint(5) unsigned NOT NULL,
  `film_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`actor_id`,`film_id`),
  KEY `idx_fk_film_id` (`film_id`),
  CONSTRAINT `fk_film_actor_actor` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_film_actor_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `film_category`
--

DROP TABLE IF EXISTS `film_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_category` (
  `film_id` smallint(5) unsigned NOT NULL,
  `category_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`film_id`,`category_id`),
  KEY `fk_film_category_category` (`category_id`),
  CONSTRAINT `fk_film_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_film_category_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `film_list`
--

DROP TABLE IF EXISTS `film_list`;
/*!50001 DROP VIEW IF EXISTS `film_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `film_list` AS SELECT 
 1 AS `FID`,
 1 AS `title`,
 1 AS `description`,
 1 AS `category`,
 1 AS `price`,
 1 AS `length`,
 1 AS `rating`,
 1 AS `actors`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `film_text`
--

DROP TABLE IF EXISTS `film_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_text` (
  `film_id` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`film_id`),
  FULLTEXT KEY `idx_title_description` (`title`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` smallint(5) unsigned NOT NULL,
  `store_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`inventory_id`),
  KEY `idx_fk_film_id` (`film_id`),
  KEY `idx_store_id_film_id` (`store_id`,`film_id`),
  CONSTRAINT `fk_inventory_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_inventory_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4582 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `language_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `nicer_but_slower_film_list`
--

DROP TABLE IF EXISTS `nicer_but_slower_film_list`;
/*!50001 DROP VIEW IF EXISTS `nicer_but_slower_film_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nicer_but_slower_film_list` AS SELECT 
 1 AS `FID`,
 1 AS `title`,
 1 AS `description`,
 1 AS `category`,
 1 AS `price`,
 1 AS `length`,
 1 AS `rating`,
 1 AS `actors`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` smallint(5) unsigned NOT NULL,
  `staff_id` tinyint(3) unsigned NOT NULL,
  `rental_id` int(11) DEFAULT NULL,
  `amount` decimal(5,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  KEY `idx_fk_staff_id` (`staff_id`),
  KEY `idx_fk_customer_id` (`customer_id`),
  KEY `fk_payment_rental` (`rental_id`),
  CONSTRAINT `fk_payment_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_rental` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16050 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `payment_date` BEFORE INSERT ON `payment` FOR EACH ROW SET NEW.payment_date = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `rental_date` datetime NOT NULL,
  `inventory_id` mediumint(8) unsigned NOT NULL,
  `customer_id` smallint(5) unsigned NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `staff_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rental_id`),
  UNIQUE KEY `rental_date` (`rental_date`,`inventory_id`,`customer_id`),
  KEY `idx_fk_inventory_id` (`inventory_id`),
  KEY `idx_fk_customer_id` (`customer_id`),
  KEY `idx_fk_staff_id` (`staff_id`),
  CONSTRAINT `fk_rental_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_inventory` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16050 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rental_date` BEFORE INSERT ON `rental` FOR EACH ROW SET NEW.rental_date = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `sales_by_film_category`
--

DROP TABLE IF EXISTS `sales_by_film_category`;
/*!50001 DROP VIEW IF EXISTS `sales_by_film_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_by_film_category` AS SELECT 
 1 AS `category`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_by_store`
--

DROP TABLE IF EXISTS `sales_by_store`;
/*!50001 DROP VIEW IF EXISTS `sales_by_store`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_by_store` AS SELECT 
 1 AS `store`,
 1 AS `manager`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `picture` blob,
  `email` varchar(50) DEFAULT NULL,
  `store_id` tinyint(3) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `username` varchar(16) NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`staff_id`),
  KEY `idx_fk_store_id` (`store_id`),
  KEY `idx_fk_address_id` (`address_id`),
  CONSTRAINT `fk_staff_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_staff_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `staff_list`
--

DROP TABLE IF EXISTS `staff_list`;
/*!50001 DROP VIEW IF EXISTS `staff_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `staff_list` AS SELECT 
 1 AS `ID`,
 1 AS `name`,
 1 AS `address`,
 1 AS `zip code`,
 1 AS `phone`,
 1 AS `city`,
 1 AS `country`,
 1 AS `SID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `store_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `manager_staff_id` tinyint(3) unsigned NOT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `idx_unique_manager` (`manager_staff_id`),
  KEY `idx_fk_address_id` (`address_id`),
  CONSTRAINT `fk_store_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_store_staff` FOREIGN KEY (`manager_staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `tradeview`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tradeview` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `tradeview`;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `BatchID` varchar(10) NOT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(10) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(20) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(20) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(20) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL,
  UNIQUE KEY `idx_company1_BatchID_mykey` (`BatchID`,`mykey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company1`
--

DROP TABLE IF EXISTS `company1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company1` (
  `BatchID` varchar(10) NOT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(20) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(40) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(40) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(40) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `leveragescore` varchar(20) DEFAULT NULL,
  `valoutlier` varchar(20) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL,
  UNIQUE KEY `idx_company2_BatchID_mykey` (`BatchID`,`mykey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ids`
--

DROP TABLE IF EXISTS `ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ids` (
  `ID` int(11) NOT NULL,
  `Count` int(11) DEFAULT NULL,
  `savedDT` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import` (
  `Volume` double DEFAULT NULL,
  `InsertedDt` text,
  `Name` text,
  `Exchange` text,
  `Symbol` text,
  `High` double DEFAULT NULL,
  `Low` double DEFAULT NULL,
  `key` text,
  `ChangeV` double DEFAULT NULL,
  `Close` double DEFAULT NULL,
  `DT` text,
  `ID` int(11) DEFAULT NULL,
  `ChangeP` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketprices`
--

DROP TABLE IF EXISTS `marketprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketprices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` decimal(14,6) DEFAULT NULL,
  `Low` decimal(14,6) DEFAULT NULL,
  `Close` decimal(14,6) DEFAULT NULL,
  `Volume` decimal(14,2) DEFAULT NULL,
  `ChangeV` decimal(14,8) DEFAULT NULL,
  `ChangeP` decimal(15,7) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `idx_marketprices_Key` (`key`),
  UNIQUE KEY `idx_marketprices_Exchange_Symbol_DT` (`Exchange`,`Symbol`,`DT`)
) ENGINE=InnoDB AUTO_INCREMENT=5675589 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketprices2`
--

DROP TABLE IF EXISTS `marketprices2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketprices2` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Open` decimal(14,6) DEFAULT NULL,
  `High` decimal(14,6) DEFAULT NULL,
  `Low` decimal(14,6) DEFAULT NULL,
  `Close` decimal(14,6) DEFAULT NULL,
  `Volume` decimal(14,2) DEFAULT NULL,
  `ChangeV` decimal(14,8) DEFAULT NULL,
  `ChangeP` decimal(15,7) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `idx_marketprices2_Key` (`key`),
  UNIQUE KEY `idx_marketprices2_Exchange_Symbol_DT` (`Exchange`,`Symbol`,`DT`)
) ENGINE=InnoDB AUTO_INCREMENT=3943015 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketprices_buffer`
--

DROP TABLE IF EXISTS `marketprices_buffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketprices_buffer` (
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` varchar(10) DEFAULT NULL,
  `Low` varchar(10) DEFAULT NULL,
  `Close` varchar(10) DEFAULT NULL,
  `Volume` varchar(15) DEFAULT NULL,
  `ChangeV` varchar(10) DEFAULT NULL,
  `ChangeP` varchar(10) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `idx_marketprices_Exchange_Symbol_DT` (`Exchange`,`Symbol`,`DT`),
  UNIQUE KEY `idx_marketprices_Key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EXTRACTED_DT` datetime NOT NULL,
  `AS_OF` datetime NOT NULL,
  `ARTICLE_DT` datetime NOT NULL,
  `DT_FLAG` int(11) NOT NULL,
  `SRC` varchar(20) NOT NULL,
  `SRC_URL` varchar(200) NOT NULL,
  `LABEL` varchar(5000) NOT NULL,
  `ARTICLE_URL` varchar(1000) NOT NULL,
  `SECTION` varchar(2000) NOT NULL,
  `CONTENT` varchar(5000) NOT NULL,
  `FIELD3` varchar(1000) NOT NULL,
  `BATCH_ID` varchar(45) DEFAULT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `idx_news_ARTICLE_URL` (`ARTICLE_URL`(700)),
  KEY `idx_news_AS_OF` (`AS_OF`),
  KEY `idx_news_SRC` (`SRC`)
) ENGINE=InnoDB AUTO_INCREMENT=10857446 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_buffer`
--

DROP TABLE IF EXISTS `news_buffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_buffer` (
  `ID` int(11) NOT NULL,
  `EXTRACTED_DT` datetime NOT NULL,
  `AS_OF` datetime NOT NULL,
  `ARTICLE_DT` datetime NOT NULL,
  `DT_FLAG` int(11) NOT NULL,
  `SRC` varchar(20) NOT NULL,
  `SRC_URL` varchar(200) NOT NULL,
  `LABEL` varchar(5000) NOT NULL,
  `ARTICLE_URL` varchar(1000) NOT NULL,
  `SECTION` varchar(2000) NOT NULL,
  `CONTENT` varchar(5000) NOT NULL,
  `FIELD3` varchar(1000) NOT NULL,
  `BATCH_ID` varchar(45) DEFAULT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_favourites`
--

DROP TABLE IF EXISTS `news_favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_favourites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `added_dt` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_keywords`
--

DROP TABLE IF EXISTS `news_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_keywords` (
  `key_id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `search_dt` date NOT NULL,
  `favourite` int(11) DEFAULT NULL,
  `results` int(11) DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `key_id_UNIQUE` (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9541 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sec_master`
--

DROP TABLE IF EXISTS `sec_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_master` (
  `country` varchar(2) DEFAULT NULL,
  `ID` int(11) NOT NULL DEFAULT '0',
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` decimal(14,6) DEFAULT NULL,
  `Low` decimal(14,6) DEFAULT NULL,
  `Close` decimal(14,6) DEFAULT NULL,
  `Volume` decimal(14,2) DEFAULT NULL,
  `ChangeV` decimal(14,8) DEFAULT NULL,
  `ChangeP` decimal(15,7) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  `BatchID` varchar(10) DEFAULT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(20) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol1` varchar(20) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(40) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(40) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(40) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `leveragescore` varchar(20) DEFAULT NULL,
  `valoutlier` varchar(20) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sec_master1`
--

DROP TABLE IF EXISTS `sec_master1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_master1` (
  `country` varchar(2) DEFAULT NULL,
  `ID` int(11) NOT NULL DEFAULT '0',
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` decimal(14,6) DEFAULT NULL,
  `Low` decimal(14,6) DEFAULT NULL,
  `Close` decimal(14,6) DEFAULT NULL,
  `Volume` decimal(14,2) DEFAULT NULL,
  `ChangeV` decimal(14,8) DEFAULT NULL,
  `ChangeP` decimal(15,7) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  `BatchID` varchar(10) DEFAULT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(20) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol1` varchar(20) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(40) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(40) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(40) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `leveragescore` varchar(20) DEFAULT NULL,
  `valoutlier` varchar(20) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `sec_master_all`
--

DROP TABLE IF EXISTS `sec_master_all`;
/*!50001 DROP VIEW IF EXISTS `sec_master_all`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sec_master_all` AS SELECT 
 1 AS `country`,
 1 AS `ID`,
 1 AS `key`,
 1 AS `Exchange`,
 1 AS `Symbol`,
 1 AS `Name`,
 1 AS `High`,
 1 AS `Low`,
 1 AS `Close`,
 1 AS `Volume`,
 1 AS `ChangeV`,
 1 AS `ChangeP`,
 1 AS `DT`,
 1 AS `InsertedDt`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sec_master_can`
--

DROP TABLE IF EXISTS `sec_master_can`;
/*!50001 DROP VIEW IF EXISTS `sec_master_can`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sec_master_can` AS SELECT 
 1 AS `country`,
 1 AS `ID`,
 1 AS `key`,
 1 AS `Exchange`,
 1 AS `Symbol`,
 1 AS `Name`,
 1 AS `High`,
 1 AS `Low`,
 1 AS `Close`,
 1 AS `Volume`,
 1 AS `ChangeV`,
 1 AS `ChangeP`,
 1 AS `DT`,
 1 AS `InsertedDt`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sec_master_company`
--

DROP TABLE IF EXISTS `sec_master_company`;
/*!50001 DROP VIEW IF EXISTS `sec_master_company`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sec_master_company` AS SELECT 
 1 AS `BatchID`,
 1 AS `mykey`,
 1 AS `mycountry`,
 1 AS `myexchange`,
 1 AS `mysymbol`,
 1 AS `myasofDate`,
 1 AS `COMP_PERM_SEC_ID`,
 1 AS `totalSharesOutstanding`,
 1 AS `dataQualityFilter`,
 1 AS `industryFilter`,
 1 AS `company`,
 1 AS `symbol1`,
 1 AS `industryGroup`,
 1 AS `currency`,
 1 AS `closingPrice`,
 1 AS `fiftyTwoWeekLow`,
 1 AS `fiftyTwoWeekHigh`,
 1 AS `marketCap`,
 1 AS `latestAnnualFilingDate`,
 1 AS `latestSemiAnnualFilingDate`,
 1 AS `latestQuarterlyFilingDate`,
 1 AS `companyProfile`,
 1 AS `filingCurrency`,
 1 AS `listedExchange`,
 1 AS `asofdate`,
 1 AS `exchangecountry`,
 1 AS `listeddate`,
 1 AS `nextreleasedate`,
 1 AS `oneyearsharepriceperformance`,
 1 AS `onemonthsharepriceperformance`,
 1 AS `daysFromLastReleaseDate`,
 1 AS `scores`,
 1 AS `sectorgroup`,
 1 AS `onedaypricechange`,
 1 AS `enterpriseValueLatest`,
 1 AS `ytdsharepriceperformance`,
 1 AS `currentpricelevelannual`,
 1 AS `dividendyield`,
 1 AS `bullishcross50dmadate`,
 1 AS `bullishcross200dmadate`,
 1 AS `bearishcross50dmadate`,
 1 AS `bearishcross200dmadate`,
 1 AS `bullishrsicrossdate`,
 1 AS `bearishrsicrossdate`,
 1 AS `bullishmacdcrossdate`,
 1 AS `bearishmacdcrossdate`,
 1 AS `bullishgoldcrossdate`,
 1 AS `bearishgoldcrossdate`,
 1 AS `revenues`,
 1 AS `previousdayclosingprice`,
 1 AS `fiftydaymovingaverage`,
 1 AS `companyetfscount`,
 1 AS `sectoretfscount`,
 1 AS `industryanalysisclass`,
 1 AS `netincomeLTM`,
 1 AS `reportingcurrency`,
 1 AS `pricingcurrency`,
 1 AS `workingcapital`,
 1 AS `workingcapitalHY`,
 1 AS `workingcapitalQ`,
 1 AS `enterpriseQ`,
 1 AS `enterpriseY`,
 1 AS `revenuesLTM`,
 1 AS `enterpriseValueLatestBOB`,
 1 AS `dailyvolume`,
 1 AS `averagevolume`,
 1 AS `standardDeviationVolume`,
 1 AS `actualworkingcapital_q_minus0`,
 1 AS `actualworkingcapital_hy_minus0`,
 1 AS `closingprice_old`,
 1 AS `adjustedDividendForward`,
 1 AS `dividendfrequency`,
 1 AS `scresgscr_latest`,
 1 AS `scresgcombinedscr_latest`,
 1 AS `ruleof40_q`,
 1 AS `ruleof40_hy`,
 1 AS `companyetf`,
 1 AS `leveragescore`,
 1 AS `valoutlier`,
 1 AS `_links`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sec_master_usa`
--

DROP TABLE IF EXISTS `sec_master_usa`;
/*!50001 DROP VIEW IF EXISTS `sec_master_usa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sec_master_usa` AS SELECT 
 1 AS `country`,
 1 AS `ID`,
 1 AS `key`,
 1 AS `Exchange`,
 1 AS `Symbol`,
 1 AS `Name`,
 1 AS `High`,
 1 AS `Low`,
 1 AS `Close`,
 1 AS `Volume`,
 1 AS `ChangeV`,
 1 AS `ChangeP`,
 1 AS `DT`,
 1 AS `InsertedDt`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tradeview`
--

DROP TABLE IF EXISTS `tradeview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradeview` (
  `COUNTRY_` varchar(50) NOT NULL,
  `SYMBOL_` varchar(50) NOT NULL,
  `DT` varchar(50) NOT NULL,
  `REC` varchar(50) NOT NULL,
  `TICKER` varchar(50) NOT NULL,
  `CLOSE_` varchar(50) DEFAULT NULL,
  `CHANGE_` varchar(50) DEFAULT NULL,
  `CHANGE_ABS` varchar(50) DEFAULT NULL,
  `RECOMMEND_ALL` varchar(50) DEFAULT NULL,
  `VOLUME` varchar(50) DEFAULT NULL,
  `MARKET_CAP_BASIC` varchar(50) DEFAULT NULL,
  `PRICE_EARNINGS_TTM` varchar(50) DEFAULT NULL,
  `EARNINGS_PER_SHARE_BASIC_TTM` varchar(50) DEFAULT NULL,
  `NUMBER_OF_EMPLOYEES` varchar(50) DEFAULT NULL,
  `SECTOR` varchar(50) DEFAULT NULL,
  `LOW_1M` varchar(50) DEFAULT NULL,
  `HIGH_1M` varchar(50) DEFAULT NULL,
  `BB_LOWER` varchar(50) DEFAULT NULL,
  `BB_UPPER` varchar(50) DEFAULT NULL,
  `BASIC_EPS_NET_INCOME` varchar(50) DEFAULT NULL,
  `HIGH_3M` varchar(50) DEFAULT NULL,
  `LOW_3M` varchar(50) DEFAULT NULL,
  `PERF_3M` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_10D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_30D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_60D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_90D_CALC` varchar(50) DEFAULT NULL,
  `AO` varchar(50) DEFAULT NULL,
  `BBPOWER` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `DEBT_TO_EQUITY` varchar(50) DEFAULT NULL,
  `EXPECTED_ANNUAL_DIVIDENDS` varchar(50) DEFAULT NULL,
  `LAST_ANNUAL_EPS` varchar(50) DEFAULT NULL,
  `EXCHANGE` varchar(50) DEFAULT NULL,
  `EMA10` varchar(50) DEFAULT NULL,
  `EMA100` varchar(50) DEFAULT NULL,
  `EMA20` varchar(50) DEFAULT NULL,
  `EMA200` varchar(50) DEFAULT NULL,
  `EMA30` varchar(50) DEFAULT NULL,
  `EMA5` varchar(50) DEFAULT NULL,
  `EMA50` varchar(50) DEFAULT NULL,
  `GROSS_PROFIT` varchar(50) DEFAULT NULL,
  `INDUSTRY` varchar(50) DEFAULT NULL,
  `HIGH` varchar(50) DEFAULT NULL,
  `LOW` varchar(50) DEFAULT NULL,
  `MACD_MACD` varchar(50) DEFAULT NULL,
  `MACD_SIGNAL` varchar(50) DEFAULT NULL,
  `MOM` varchar(50) DEFAULT NULL,
  `NET_INCOME` varchar(50) DEFAULT NULL,
  `OPERATING_MARGIN` varchar(50) DEFAULT NULL,
  `OPEN` varchar(50) DEFAULT NULL,
  `NUMBER_OF_SHAREHOLDERS` varchar(50) DEFAULT NULL,
  `PRICE_BOOK_RATIO` varchar(50) DEFAULT NULL,
  `PRICE_REVENUE_TTM` varchar(50) DEFAULT NULL,
  `PRICE_SALES_RATIO` varchar(50) DEFAULT NULL,
  `ROC` varchar(50) DEFAULT NULL,
  `EARNINGS_RELEASE_DATE` varchar(50) DEFAULT NULL,
  `RSI` varchar(50) DEFAULT NULL,
  `RSI7` varchar(50) DEFAULT NULL,
  `RELATIVE_VOLUME_10D_CALC` varchar(50) DEFAULT NULL,
  `SMA10` varchar(50) DEFAULT NULL,
  `SMA100` varchar(50) DEFAULT NULL,
  `SMA20` varchar(50) DEFAULT NULL,
  `SMA200` varchar(50) DEFAULT NULL,
  `TOTAL_REVENUE` varchar(50) DEFAULT NULL,
  `TOTAL_SHARES_OUTSTANDING_FUNDAMENTAL` varchar(50) DEFAULT NULL,
  `VOLATILITY_D` varchar(50) DEFAULT NULL,
  `VOLATILITY_M` varchar(50) DEFAULT NULL,
  `VOLATILITY_W` varchar(50) DEFAULT NULL,
  `VWAP` varchar(50) DEFAULT NULL,
  `VALUE_TRADED` varchar(50) DEFAULT NULL,
  `PERF_W` varchar(50) DEFAULT NULL,
  `PERF_YTD` varchar(50) DEFAULT NULL,
  `PERF_Y` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `SUBTYPE` varchar(50) DEFAULT NULL,
  `UPDATE_MODE` varchar(50) DEFAULT NULL,
  `PRICESCALE` varchar(50) DEFAULT NULL,
  `MINMOV` varchar(50) DEFAULT NULL,
  `FRACTIONAL` varchar(50) DEFAULT NULL,
  `MINMOVE2` varchar(50) DEFAULT NULL,
  `REC_BBPOWER` varchar(50) DEFAULT NULL,
  `PROCESSED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INSERTED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BATCH_ID` varchar(45) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  KEY `idx_dt_ticker` (`DT`,`TICKER`),
  KEY `idx_ticker` (`TICKER`),
  KEY `idx_country_` (`COUNTRY_`),
  KEY `idx_tradeview_DT` (`DT`),
  KEY `idx_tradeview_BATCH_ID` (`BATCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=134543344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trd_commodities_daily`
--

DROP TABLE IF EXISTS `trd_commodities_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trd_commodities_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `change_value` decimal(15,4) DEFAULT NULL,
  `daily_pct` decimal(10,2) DEFAULT NULL,
  `weekly_pct` decimal(10,2) DEFAULT NULL,
  `monthly_pct` decimal(10,2) DEFAULT NULL,
  `yearly_pct` decimal(10,2) DEFAULT NULL,
  `three_year_pct` decimal(10,2) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_date` (`date`),
  KEY `idx_asset_name` (`asset`,`name`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trd_investment_opportunities_daily`
--

DROP TABLE IF EXISTS `trd_investment_opportunities_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trd_investment_opportunities_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `timeframe` varchar(20) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `rank_asset` int(11) DEFAULT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `daily_pct` decimal(10,2) DEFAULT NULL,
  `weekly_pct` decimal(10,2) DEFAULT NULL,
  `monthly_pct` decimal(10,2) DEFAULT NULL,
  `yearly_pct` decimal(10,2) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_date` (`date`),
  KEY `idx_timeframe` (`timeframe`),
  KEY `idx_asset_name` (`asset`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trd_strong_leads_daily`
--

DROP TABLE IF EXISTS `trd_strong_leads_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trd_strong_leads_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  `rank_asset` int(11) DEFAULT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `daily_pct` decimal(10,2) DEFAULT NULL,
  `weekly_pct` decimal(10,2) DEFAULT NULL,
  `monthly_pct` decimal(10,2) DEFAULT NULL,
  `yearly_pct` decimal(10,2) DEFAULT NULL,
  `match_info` varchar(50) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_date` (`date`),
  KEY `idx_ranking` (`ranking`),
  KEY `idx_asset_name` (`asset`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4953 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `v_news_buffer`
--

DROP TABLE IF EXISTS `v_news_buffer`;
/*!50001 DROP VIEW IF EXISTS `v_news_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_news_buffer` AS SELECT 
 1 AS `EXTRACTED_DT`,
 1 AS `AS_OF`,
 1 AS `ARTICLE_DT`,
 1 AS `DT_FLAG`,
 1 AS `SRC`,
 1 AS `SRC_URL`,
 1 AS `LABEL`,
 1 AS `ARTICLE_URL`,
 1 AS `SECTION`,
 1 AS `CONTENT`,
 1 AS `FIELD3`,
 1 AS `BATCH_ID`,
 1 AS `INSERTED_DT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_sec_master`
--

DROP TABLE IF EXISTS `v_sec_master`;
/*!50001 DROP VIEW IF EXISTS `v_sec_master`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_sec_master` AS SELECT 
 1 AS `country`,
 1 AS `ID`,
 1 AS `key`,
 1 AS `Exchange`,
 1 AS `Symbol`,
 1 AS `Name`,
 1 AS `High`,
 1 AS `Low`,
 1 AS `Close`,
 1 AS `Volume`,
 1 AS `ChangeV`,
 1 AS `ChangeP`,
 1 AS `DT`,
 1 AS `InsertedDt`,
 1 AS `BatchID`,
 1 AS `mykey`,
 1 AS `mycountry`,
 1 AS `myexchange`,
 1 AS `mysymbol`,
 1 AS `myasofDate`,
 1 AS `COMP_PERM_SEC_ID`,
 1 AS `totalSharesOutstanding`,
 1 AS `dataQualityFilter`,
 1 AS `industryFilter`,
 1 AS `company`,
 1 AS `symbol1`,
 1 AS `industryGroup`,
 1 AS `currency`,
 1 AS `closingPrice`,
 1 AS `fiftyTwoWeekLow`,
 1 AS `fiftyTwoWeekHigh`,
 1 AS `marketCap`,
 1 AS `latestAnnualFilingDate`,
 1 AS `latestSemiAnnualFilingDate`,
 1 AS `latestQuarterlyFilingDate`,
 1 AS `companyProfile`,
 1 AS `filingCurrency`,
 1 AS `listedExchange`,
 1 AS `asofdate`,
 1 AS `exchangecountry`,
 1 AS `listeddate`,
 1 AS `nextreleasedate`,
 1 AS `oneyearsharepriceperformance`,
 1 AS `onemonthsharepriceperformance`,
 1 AS `daysFromLastReleaseDate`,
 1 AS `scores`,
 1 AS `sectorgroup`,
 1 AS `onedaypricechange`,
 1 AS `enterpriseValueLatest`,
 1 AS `ytdsharepriceperformance`,
 1 AS `currentpricelevelannual`,
 1 AS `dividendyield`,
 1 AS `bullishcross50dmadate`,
 1 AS `bullishcross200dmadate`,
 1 AS `bearishcross50dmadate`,
 1 AS `bearishcross200dmadate`,
 1 AS `bullishrsicrossdate`,
 1 AS `bearishrsicrossdate`,
 1 AS `bullishmacdcrossdate`,
 1 AS `bearishmacdcrossdate`,
 1 AS `bullishgoldcrossdate`,
 1 AS `bearishgoldcrossdate`,
 1 AS `revenues`,
 1 AS `previousdayclosingprice`,
 1 AS `fiftydaymovingaverage`,
 1 AS `companyetfscount`,
 1 AS `sectoretfscount`,
 1 AS `industryanalysisclass`,
 1 AS `netincomeLTM`,
 1 AS `reportingcurrency`,
 1 AS `pricingcurrency`,
 1 AS `workingcapital`,
 1 AS `workingcapitalHY`,
 1 AS `workingcapitalQ`,
 1 AS `enterpriseQ`,
 1 AS `enterpriseY`,
 1 AS `revenuesLTM`,
 1 AS `enterpriseValueLatestBOB`,
 1 AS `dailyvolume`,
 1 AS `averagevolume`,
 1 AS `standardDeviationVolume`,
 1 AS `actualworkingcapital_q_minus0`,
 1 AS `actualworkingcapital_hy_minus0`,
 1 AS `closingprice_old`,
 1 AS `adjustedDividendForward`,
 1 AS `dividendfrequency`,
 1 AS `scresgscr_latest`,
 1 AS `scresgcombinedscr_latest`,
 1 AS `ruleof40_q`,
 1 AS `ruleof40_hy`,
 1 AS `companyetf`,
 1 AS `leveragescore`,
 1 AS `valoutlier`,
 1 AS `_links`*/;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `tradeviewt`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tradeviewt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `tradeviewt`;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `BatchID` varchar(10) NOT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(10) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(20) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(20) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(20) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL,
  UNIQUE KEY `idx_company1_BatchID_mykey` (`BatchID`,`mykey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company1`
--

DROP TABLE IF EXISTS `company1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company1` (
  `BatchID` varchar(10) NOT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(20) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(40) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(40) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(40) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `leveragescore` varchar(20) DEFAULT NULL,
  `valoutlier` varchar(20) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL,
  UNIQUE KEY `idx_company2_BatchID_mykey` (`BatchID`,`mykey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ids`
--

DROP TABLE IF EXISTS `ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ids` (
  `ID` int(11) NOT NULL,
  `Count` int(11) DEFAULT NULL,
  `savedDT` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import` (
  `Volume` double DEFAULT NULL,
  `InsertedDt` text,
  `Name` text,
  `Exchange` text,
  `Symbol` text,
  `High` double DEFAULT NULL,
  `Low` double DEFAULT NULL,
  `key` text,
  `ChangeV` double DEFAULT NULL,
  `Close` double DEFAULT NULL,
  `DT` text,
  `ID` int(11) DEFAULT NULL,
  `ChangeP` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketprices`
--

DROP TABLE IF EXISTS `marketprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketprices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` decimal(14,6) DEFAULT NULL,
  `Low` decimal(14,6) DEFAULT NULL,
  `Close` decimal(14,6) DEFAULT NULL,
  `Volume` decimal(14,2) DEFAULT NULL,
  `ChangeV` decimal(14,8) DEFAULT NULL,
  `ChangeP` decimal(15,7) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `idx_marketprices_Key` (`key`),
  UNIQUE KEY `idx_marketprices_Exchange_Symbol_DT` (`Exchange`,`Symbol`,`DT`)
) ENGINE=InnoDB AUTO_INCREMENT=1080146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketprices_buffer`
--

DROP TABLE IF EXISTS `marketprices_buffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketprices_buffer` (
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` varchar(10) DEFAULT NULL,
  `Low` varchar(10) DEFAULT NULL,
  `Close` varchar(10) DEFAULT NULL,
  `Volume` varchar(15) DEFAULT NULL,
  `ChangeV` varchar(10) DEFAULT NULL,
  `ChangeP` varchar(10) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `idx_marketprices_Exchange_Symbol_DT` (`Exchange`,`Symbol`,`DT`),
  UNIQUE KEY `idx_marketprices_Key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EXTRACTED_DT` datetime NOT NULL,
  `AS_OF` datetime NOT NULL,
  `ARTICLE_DT` datetime NOT NULL,
  `DT_FLAG` int(11) NOT NULL,
  `SRC` varchar(20) NOT NULL,
  `SRC_URL` varchar(200) NOT NULL,
  `LABEL` varchar(5000) NOT NULL,
  `ARTICLE_URL` varchar(1000) NOT NULL,
  `SECTION` varchar(2000) NOT NULL,
  `CONTENT` varchar(5000) NOT NULL,
  `FIELD3` varchar(1000) NOT NULL,
  `BATCH_ID` varchar(45) DEFAULT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `idx_news_ARTICLE_URL` (`ARTICLE_URL`(700)),
  KEY `idx_news_AS_OF` (`AS_OF`),
  KEY `idx_news_SRC` (`SRC`)
) ENGINE=InnoDB AUTO_INCREMENT=7583384 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_buffer`
--

DROP TABLE IF EXISTS `news_buffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_buffer` (
  `ID` int(11) NOT NULL,
  `EXTRACTED_DT` datetime NOT NULL,
  `AS_OF` datetime NOT NULL,
  `ARTICLE_DT` datetime NOT NULL,
  `DT_FLAG` int(11) NOT NULL,
  `SRC` varchar(20) NOT NULL,
  `SRC_URL` varchar(200) NOT NULL,
  `LABEL` varchar(5000) NOT NULL,
  `ARTICLE_URL` varchar(1000) NOT NULL,
  `SECTION` varchar(2000) NOT NULL,
  `CONTENT` varchar(5000) NOT NULL,
  `FIELD3` varchar(1000) NOT NULL,
  `BATCH_ID` varchar(45) DEFAULT NULL,
  `INSERTED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_favourites`
--

DROP TABLE IF EXISTS `news_favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_favourites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `added_dt` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_keywords`
--

DROP TABLE IF EXISTS `news_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_keywords` (
  `key_id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `search_dt` date NOT NULL,
  `favourite` int(11) DEFAULT NULL,
  `results` int(11) DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `key_id_UNIQUE` (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sec_master`
--

DROP TABLE IF EXISTS `sec_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_master` (
  `country` varchar(2) DEFAULT NULL,
  `ID` int(11) NOT NULL DEFAULT '0',
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` decimal(14,6) DEFAULT NULL,
  `Low` decimal(14,6) DEFAULT NULL,
  `Close` decimal(14,6) DEFAULT NULL,
  `Volume` decimal(14,2) DEFAULT NULL,
  `ChangeV` decimal(14,8) DEFAULT NULL,
  `ChangeP` decimal(15,7) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  `BatchID` varchar(10) DEFAULT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(20) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol1` varchar(20) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(40) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(40) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(40) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `leveragescore` varchar(20) DEFAULT NULL,
  `valoutlier` varchar(20) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sec_master1`
--

DROP TABLE IF EXISTS `sec_master1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_master1` (
  `country` varchar(2) DEFAULT NULL,
  `ID` int(11) NOT NULL DEFAULT '0',
  `key` varchar(45) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` decimal(14,6) DEFAULT NULL,
  `Low` decimal(14,6) DEFAULT NULL,
  `Close` decimal(14,6) DEFAULT NULL,
  `Volume` decimal(14,2) DEFAULT NULL,
  `ChangeV` decimal(14,8) DEFAULT NULL,
  `ChangeP` decimal(15,7) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  `BatchID` varchar(10) DEFAULT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(20) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol1` varchar(20) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(40) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(40) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(40) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `leveragescore` varchar(20) DEFAULT NULL,
  `valoutlier` varchar(20) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `sec_master_all`
--

DROP TABLE IF EXISTS `sec_master_all`;
/*!50001 DROP VIEW IF EXISTS `sec_master_all`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sec_master_all` AS SELECT 
 1 AS `country`,
 1 AS `ID`,
 1 AS `key`,
 1 AS `Exchange`,
 1 AS `Symbol`,
 1 AS `Name`,
 1 AS `High`,
 1 AS `Low`,
 1 AS `Close`,
 1 AS `Volume`,
 1 AS `ChangeV`,
 1 AS `ChangeP`,
 1 AS `DT`,
 1 AS `InsertedDt`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sec_master_can`
--

DROP TABLE IF EXISTS `sec_master_can`;
/*!50001 DROP VIEW IF EXISTS `sec_master_can`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sec_master_can` AS SELECT 
 1 AS `country`,
 1 AS `ID`,
 1 AS `key`,
 1 AS `Exchange`,
 1 AS `Symbol`,
 1 AS `Name`,
 1 AS `High`,
 1 AS `Low`,
 1 AS `Close`,
 1 AS `Volume`,
 1 AS `ChangeV`,
 1 AS `ChangeP`,
 1 AS `DT`,
 1 AS `InsertedDt`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sec_master_company`
--

DROP TABLE IF EXISTS `sec_master_company`;
/*!50001 DROP VIEW IF EXISTS `sec_master_company`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sec_master_company` AS SELECT 
 1 AS `BatchID`,
 1 AS `mykey`,
 1 AS `mycountry`,
 1 AS `myexchange`,
 1 AS `mysymbol`,
 1 AS `myasofDate`,
 1 AS `COMP_PERM_SEC_ID`,
 1 AS `totalSharesOutstanding`,
 1 AS `dataQualityFilter`,
 1 AS `industryFilter`,
 1 AS `company`,
 1 AS `symbol1`,
 1 AS `industryGroup`,
 1 AS `currency`,
 1 AS `closingPrice`,
 1 AS `fiftyTwoWeekLow`,
 1 AS `fiftyTwoWeekHigh`,
 1 AS `marketCap`,
 1 AS `latestAnnualFilingDate`,
 1 AS `latestSemiAnnualFilingDate`,
 1 AS `latestQuarterlyFilingDate`,
 1 AS `companyProfile`,
 1 AS `filingCurrency`,
 1 AS `listedExchange`,
 1 AS `asofdate`,
 1 AS `exchangecountry`,
 1 AS `listeddate`,
 1 AS `nextreleasedate`,
 1 AS `oneyearsharepriceperformance`,
 1 AS `onemonthsharepriceperformance`,
 1 AS `daysFromLastReleaseDate`,
 1 AS `scores`,
 1 AS `sectorgroup`,
 1 AS `onedaypricechange`,
 1 AS `enterpriseValueLatest`,
 1 AS `ytdsharepriceperformance`,
 1 AS `currentpricelevelannual`,
 1 AS `dividendyield`,
 1 AS `bullishcross50dmadate`,
 1 AS `bullishcross200dmadate`,
 1 AS `bearishcross50dmadate`,
 1 AS `bearishcross200dmadate`,
 1 AS `bullishrsicrossdate`,
 1 AS `bearishrsicrossdate`,
 1 AS `bullishmacdcrossdate`,
 1 AS `bearishmacdcrossdate`,
 1 AS `bullishgoldcrossdate`,
 1 AS `bearishgoldcrossdate`,
 1 AS `revenues`,
 1 AS `previousdayclosingprice`,
 1 AS `fiftydaymovingaverage`,
 1 AS `companyetfscount`,
 1 AS `sectoretfscount`,
 1 AS `industryanalysisclass`,
 1 AS `netincomeLTM`,
 1 AS `reportingcurrency`,
 1 AS `pricingcurrency`,
 1 AS `workingcapital`,
 1 AS `workingcapitalHY`,
 1 AS `workingcapitalQ`,
 1 AS `enterpriseQ`,
 1 AS `enterpriseY`,
 1 AS `revenuesLTM`,
 1 AS `enterpriseValueLatestBOB`,
 1 AS `dailyvolume`,
 1 AS `averagevolume`,
 1 AS `standardDeviationVolume`,
 1 AS `actualworkingcapital_q_minus0`,
 1 AS `actualworkingcapital_hy_minus0`,
 1 AS `closingprice_old`,
 1 AS `adjustedDividendForward`,
 1 AS `dividendfrequency`,
 1 AS `scresgscr_latest`,
 1 AS `scresgcombinedscr_latest`,
 1 AS `ruleof40_q`,
 1 AS `ruleof40_hy`,
 1 AS `companyetf`,
 1 AS `leveragescore`,
 1 AS `valoutlier`,
 1 AS `_links`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sec_master_usa`
--

DROP TABLE IF EXISTS `sec_master_usa`;
/*!50001 DROP VIEW IF EXISTS `sec_master_usa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sec_master_usa` AS SELECT 
 1 AS `country`,
 1 AS `ID`,
 1 AS `key`,
 1 AS `Exchange`,
 1 AS `Symbol`,
 1 AS `Name`,
 1 AS `High`,
 1 AS `Low`,
 1 AS `Close`,
 1 AS `Volume`,
 1 AS `ChangeV`,
 1 AS `ChangeP`,
 1 AS `DT`,
 1 AS `InsertedDt`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tradeview`
--

DROP TABLE IF EXISTS `tradeview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradeview` (
  `COUNTRY_` varchar(50) NOT NULL,
  `SYMBOL_` varchar(50) NOT NULL,
  `DT` varchar(50) NOT NULL,
  `REC` varchar(50) NOT NULL,
  `TICKER` varchar(50) NOT NULL,
  `CLOSE_` varchar(50) DEFAULT NULL,
  `CHANGE_` varchar(50) DEFAULT NULL,
  `CHANGE_ABS` varchar(50) DEFAULT NULL,
  `RECOMMEND_ALL` varchar(50) DEFAULT NULL,
  `VOLUME` varchar(50) DEFAULT NULL,
  `MARKET_CAP_BASIC` varchar(50) DEFAULT NULL,
  `PRICE_EARNINGS_TTM` varchar(50) DEFAULT NULL,
  `EARNINGS_PER_SHARE_BASIC_TTM` varchar(50) DEFAULT NULL,
  `NUMBER_OF_EMPLOYEES` varchar(50) DEFAULT NULL,
  `SECTOR` varchar(50) DEFAULT NULL,
  `LOW_1M` varchar(50) DEFAULT NULL,
  `HIGH_1M` varchar(50) DEFAULT NULL,
  `BB_LOWER` varchar(50) DEFAULT NULL,
  `BB_UPPER` varchar(50) DEFAULT NULL,
  `BASIC_EPS_NET_INCOME` varchar(50) DEFAULT NULL,
  `HIGH_3M` varchar(50) DEFAULT NULL,
  `LOW_3M` varchar(50) DEFAULT NULL,
  `PERF_3M` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_10D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_30D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_60D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_90D_CALC` varchar(50) DEFAULT NULL,
  `AO` varchar(50) DEFAULT NULL,
  `BBPOWER` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `DEBT_TO_EQUITY` varchar(50) DEFAULT NULL,
  `EXPECTED_ANNUAL_DIVIDENDS` varchar(50) DEFAULT NULL,
  `LAST_ANNUAL_EPS` varchar(50) DEFAULT NULL,
  `EXCHANGE` varchar(50) DEFAULT NULL,
  `EMA10` varchar(50) DEFAULT NULL,
  `EMA100` varchar(50) DEFAULT NULL,
  `EMA20` varchar(50) DEFAULT NULL,
  `EMA200` varchar(50) DEFAULT NULL,
  `EMA30` varchar(50) DEFAULT NULL,
  `EMA5` varchar(50) DEFAULT NULL,
  `EMA50` varchar(50) DEFAULT NULL,
  `GROSS_PROFIT` varchar(50) DEFAULT NULL,
  `INDUSTRY` varchar(50) DEFAULT NULL,
  `HIGH` varchar(50) DEFAULT NULL,
  `LOW` varchar(50) DEFAULT NULL,
  `MACD_MACD` varchar(50) DEFAULT NULL,
  `MACD_SIGNAL` varchar(50) DEFAULT NULL,
  `MOM` varchar(50) DEFAULT NULL,
  `NET_INCOME` varchar(50) DEFAULT NULL,
  `OPERATING_MARGIN` varchar(50) DEFAULT NULL,
  `OPEN` varchar(50) DEFAULT NULL,
  `NUMBER_OF_SHAREHOLDERS` varchar(50) DEFAULT NULL,
  `PRICE_BOOK_RATIO` varchar(50) DEFAULT NULL,
  `PRICE_REVENUE_TTM` varchar(50) DEFAULT NULL,
  `PRICE_SALES_RATIO` varchar(50) DEFAULT NULL,
  `ROC` varchar(50) DEFAULT NULL,
  `EARNINGS_RELEASE_DATE` varchar(50) DEFAULT NULL,
  `RSI` varchar(50) DEFAULT NULL,
  `RSI7` varchar(50) DEFAULT NULL,
  `RELATIVE_VOLUME_10D_CALC` varchar(50) DEFAULT NULL,
  `SMA10` varchar(50) DEFAULT NULL,
  `SMA100` varchar(50) DEFAULT NULL,
  `SMA20` varchar(50) DEFAULT NULL,
  `SMA200` varchar(50) DEFAULT NULL,
  `TOTAL_REVENUE` varchar(50) DEFAULT NULL,
  `TOTAL_SHARES_OUTSTANDING_FUNDAMENTAL` varchar(50) DEFAULT NULL,
  `VOLATILITY_D` varchar(50) DEFAULT NULL,
  `VOLATILITY_M` varchar(50) DEFAULT NULL,
  `VOLATILITY_W` varchar(50) DEFAULT NULL,
  `VWAP` varchar(50) DEFAULT NULL,
  `VALUE_TRADED` varchar(50) DEFAULT NULL,
  `PERF_W` varchar(50) DEFAULT NULL,
  `PERF_YTD` varchar(50) DEFAULT NULL,
  `PERF_Y` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `SUBTYPE` varchar(50) DEFAULT NULL,
  `UPDATE_MODE` varchar(50) DEFAULT NULL,
  `PRICESCALE` varchar(50) DEFAULT NULL,
  `MINMOV` varchar(50) DEFAULT NULL,
  `FRACTIONAL` varchar(50) DEFAULT NULL,
  `MINMOVE2` varchar(50) DEFAULT NULL,
  `REC_BBPOWER` varchar(50) DEFAULT NULL,
  `PROCESSED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INSERTED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BATCH_ID` varchar(45) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  KEY `idx_dt_ticker` (`DT`,`TICKER`),
  KEY `idx_ticker` (`TICKER`),
  KEY `idx_country_` (`COUNTRY_`),
  KEY `idx_tradeview_DT` (`DT`),
  KEY `idx_tradeview_BATCH_ID` (`BATCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44021157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tradeviewold`
--

DROP TABLE IF EXISTS `tradeviewold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradeviewold` (
  `COUNTRY_` varchar(50) NOT NULL,
  `SYMBOL_` varchar(50) NOT NULL,
  `DT` varchar(50) NOT NULL,
  `REC` varchar(50) NOT NULL,
  `TICKER` varchar(50) NOT NULL,
  `CLOSE_` varchar(50) DEFAULT NULL,
  `CHANGE_` varchar(50) DEFAULT NULL,
  `CHANGE_ABS` varchar(50) DEFAULT NULL,
  `RECOMMEND_ALL` varchar(50) DEFAULT NULL,
  `VOLUME` varchar(50) DEFAULT NULL,
  `MARKET_CAP_BASIC` varchar(50) DEFAULT NULL,
  `PRICE_EARNINGS_TTM` varchar(50) DEFAULT NULL,
  `EARNINGS_PER_SHARE_BASIC_TTM` varchar(50) DEFAULT NULL,
  `NUMBER_OF_EMPLOYEES` varchar(50) DEFAULT NULL,
  `SECTOR` varchar(50) DEFAULT NULL,
  `LOW_1M` varchar(50) DEFAULT NULL,
  `HIGH_1M` varchar(50) DEFAULT NULL,
  `BB_LOWER` varchar(50) DEFAULT NULL,
  `BB_UPPER` varchar(50) DEFAULT NULL,
  `BASIC_EPS_NET_INCOME` varchar(50) DEFAULT NULL,
  `HIGH_3M` varchar(50) DEFAULT NULL,
  `LOW_3M` varchar(50) DEFAULT NULL,
  `PERF_3M` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_10D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_30D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_60D_CALC` varchar(50) DEFAULT NULL,
  `AVERAGE_VOLUME_90D_CALC` varchar(50) DEFAULT NULL,
  `AO` varchar(50) DEFAULT NULL,
  `BBPOWER` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `DEBT_TO_EQUITY` varchar(50) DEFAULT NULL,
  `EXPECTED_ANNUAL_DIVIDENDS` varchar(50) DEFAULT NULL,
  `LAST_ANNUAL_EPS` varchar(50) DEFAULT NULL,
  `EXCHANGE` varchar(50) DEFAULT NULL,
  `EMA10` varchar(50) DEFAULT NULL,
  `EMA100` varchar(50) DEFAULT NULL,
  `EMA20` varchar(50) DEFAULT NULL,
  `EMA200` varchar(50) DEFAULT NULL,
  `EMA30` varchar(50) DEFAULT NULL,
  `EMA5` varchar(50) DEFAULT NULL,
  `EMA50` varchar(50) DEFAULT NULL,
  `GROSS_PROFIT` varchar(50) DEFAULT NULL,
  `INDUSTRY` varchar(50) DEFAULT NULL,
  `HIGH` varchar(50) DEFAULT NULL,
  `LOW` varchar(50) DEFAULT NULL,
  `MACD_MACD` varchar(50) DEFAULT NULL,
  `MACD_SIGNAL` varchar(50) DEFAULT NULL,
  `MOM` varchar(50) DEFAULT NULL,
  `NET_INCOME` varchar(50) DEFAULT NULL,
  `OPERATING_MARGIN` varchar(50) DEFAULT NULL,
  `OPEN` varchar(50) DEFAULT NULL,
  `NUMBER_OF_SHAREHOLDERS` varchar(50) DEFAULT NULL,
  `PRICE_BOOK_RATIO` varchar(50) DEFAULT NULL,
  `PRICE_REVENUE_TTM` varchar(50) DEFAULT NULL,
  `PRICE_SALES_RATIO` varchar(50) DEFAULT NULL,
  `ROC` varchar(50) DEFAULT NULL,
  `EARNINGS_RELEASE_DATE` varchar(50) DEFAULT NULL,
  `RSI` varchar(50) DEFAULT NULL,
  `RSI7` varchar(50) DEFAULT NULL,
  `RELATIVE_VOLUME_10D_CALC` varchar(50) DEFAULT NULL,
  `SMA10` varchar(50) DEFAULT NULL,
  `SMA100` varchar(50) DEFAULT NULL,
  `SMA20` varchar(50) DEFAULT NULL,
  `SMA200` varchar(50) DEFAULT NULL,
  `TOTAL_REVENUE` varchar(50) DEFAULT NULL,
  `TOTAL_SHARES_OUTSTANDING_FUNDAMENTAL` varchar(50) DEFAULT NULL,
  `VOLATILITY_D` varchar(50) DEFAULT NULL,
  `VOLATILITY_M` varchar(50) DEFAULT NULL,
  `VOLATILITY_W` varchar(50) DEFAULT NULL,
  `VWAP` varchar(50) DEFAULT NULL,
  `VALUE_TRADED` varchar(50) DEFAULT NULL,
  `PERF_W` varchar(50) DEFAULT NULL,
  `PERF_YTD` varchar(50) DEFAULT NULL,
  `PERF_Y` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `SUBTYPE` varchar(50) DEFAULT NULL,
  `UPDATE_MODE` varchar(50) DEFAULT NULL,
  `PRICESCALE` varchar(50) DEFAULT NULL,
  `MINMOV` varchar(50) DEFAULT NULL,
  `FRACTIONAL` varchar(50) DEFAULT NULL,
  `MINMOVE2` varchar(50) DEFAULT NULL,
  `REC_BBPOWER` varchar(50) DEFAULT NULL,
  `PROCESSED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INSERTED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BATCH_ID` varchar(45) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=62042 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `v_news_buffer`
--

DROP TABLE IF EXISTS `v_news_buffer`;
/*!50001 DROP VIEW IF EXISTS `v_news_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_news_buffer` AS SELECT 
 1 AS `EXTRACTED_DT`,
 1 AS `AS_OF`,
 1 AS `ARTICLE_DT`,
 1 AS `DT_FLAG`,
 1 AS `SRC`,
 1 AS `SRC_URL`,
 1 AS `LABEL`,
 1 AS `ARTICLE_URL`,
 1 AS `SECTION`,
 1 AS `CONTENT`,
 1 AS `FIELD3`,
 1 AS `BATCH_ID`,
 1 AS `INSERTED_DT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_sec_master`
--

DROP TABLE IF EXISTS `v_sec_master`;
/*!50001 DROP VIEW IF EXISTS `v_sec_master`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_sec_master` AS SELECT 
 1 AS `country`,
 1 AS `ID`,
 1 AS `key`,
 1 AS `Exchange`,
 1 AS `Symbol`,
 1 AS `Name`,
 1 AS `High`,
 1 AS `Low`,
 1 AS `Close`,
 1 AS `Volume`,
 1 AS `ChangeV`,
 1 AS `ChangeP`,
 1 AS `DT`,
 1 AS `InsertedDt`,
 1 AS `BatchID`,
 1 AS `mykey`,
 1 AS `mycountry`,
 1 AS `myexchange`,
 1 AS `mysymbol`,
 1 AS `myasofDate`,
 1 AS `COMP_PERM_SEC_ID`,
 1 AS `totalSharesOutstanding`,
 1 AS `dataQualityFilter`,
 1 AS `industryFilter`,
 1 AS `company`,
 1 AS `symbol1`,
 1 AS `industryGroup`,
 1 AS `currency`,
 1 AS `closingPrice`,
 1 AS `fiftyTwoWeekLow`,
 1 AS `fiftyTwoWeekHigh`,
 1 AS `marketCap`,
 1 AS `latestAnnualFilingDate`,
 1 AS `latestSemiAnnualFilingDate`,
 1 AS `latestQuarterlyFilingDate`,
 1 AS `companyProfile`,
 1 AS `filingCurrency`,
 1 AS `listedExchange`,
 1 AS `asofdate`,
 1 AS `exchangecountry`,
 1 AS `listeddate`,
 1 AS `nextreleasedate`,
 1 AS `oneyearsharepriceperformance`,
 1 AS `onemonthsharepriceperformance`,
 1 AS `daysFromLastReleaseDate`,
 1 AS `scores`,
 1 AS `sectorgroup`,
 1 AS `onedaypricechange`,
 1 AS `enterpriseValueLatest`,
 1 AS `ytdsharepriceperformance`,
 1 AS `currentpricelevelannual`,
 1 AS `dividendyield`,
 1 AS `bullishcross50dmadate`,
 1 AS `bullishcross200dmadate`,
 1 AS `bearishcross50dmadate`,
 1 AS `bearishcross200dmadate`,
 1 AS `bullishrsicrossdate`,
 1 AS `bearishrsicrossdate`,
 1 AS `bullishmacdcrossdate`,
 1 AS `bearishmacdcrossdate`,
 1 AS `bullishgoldcrossdate`,
 1 AS `bearishgoldcrossdate`,
 1 AS `revenues`,
 1 AS `previousdayclosingprice`,
 1 AS `fiftydaymovingaverage`,
 1 AS `companyetfscount`,
 1 AS `sectoretfscount`,
 1 AS `industryanalysisclass`,
 1 AS `netincomeLTM`,
 1 AS `reportingcurrency`,
 1 AS `pricingcurrency`,
 1 AS `workingcapital`,
 1 AS `workingcapitalHY`,
 1 AS `workingcapitalQ`,
 1 AS `enterpriseQ`,
 1 AS `enterpriseY`,
 1 AS `revenuesLTM`,
 1 AS `enterpriseValueLatestBOB`,
 1 AS `dailyvolume`,
 1 AS `averagevolume`,
 1 AS `standardDeviationVolume`,
 1 AS `actualworkingcapital_q_minus0`,
 1 AS `actualworkingcapital_hy_minus0`,
 1 AS `closingprice_old`,
 1 AS `adjustedDividendForward`,
 1 AS `dividendfrequency`,
 1 AS `scresgscr_latest`,
 1 AS `scresgcombinedscr_latest`,
 1 AS `ruleof40_q`,
 1 AS `ruleof40_hy`,
 1 AS `companyetf`,
 1 AS `leveragescore`,
 1 AS `valoutlier`,
 1 AS `_links`*/;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `world`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `world` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `world`;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `BatchID` varchar(10) NOT NULL,
  `mykey` varchar(40) DEFAULT NULL,
  `mycountry` varchar(10) DEFAULT NULL,
  `myexchange` varchar(10) DEFAULT NULL,
  `mysymbol` varchar(10) DEFAULT NULL,
  `myasofDate` varchar(10) DEFAULT NULL,
  `COMP_PERM_SEC_ID` varchar(10) DEFAULT NULL,
  `totalSharesOutstanding` varchar(40) DEFAULT NULL,
  `dataQualityFilter` varchar(10) DEFAULT NULL,
  `industryFilter` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `industryGroup` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `closingPrice` varchar(10) DEFAULT NULL,
  `fiftyTwoWeekLow` varchar(20) DEFAULT NULL,
  `fiftyTwoWeekHigh` varchar(20) DEFAULT NULL,
  `marketCap` varchar(10) DEFAULT NULL,
  `latestAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestSemiAnnualFilingDate` varchar(20) DEFAULT NULL,
  `latestQuarterlyFilingDate` varchar(20) DEFAULT NULL,
  `companyProfile` varchar(2000) DEFAULT NULL,
  `filingCurrency` varchar(10) DEFAULT NULL,
  `listedExchange` varchar(10) DEFAULT NULL,
  `asofdate` varchar(20) DEFAULT NULL,
  `exchangecountry` varchar(20) DEFAULT NULL,
  `listeddate` varchar(20) DEFAULT NULL,
  `nextreleasedate` varchar(10) DEFAULT NULL,
  `oneyearsharepriceperformance` varchar(20) DEFAULT NULL,
  `onemonthsharepriceperformance` varchar(20) DEFAULT NULL,
  `daysFromLastReleaseDate` varchar(10) DEFAULT NULL,
  `scores` varchar(10) DEFAULT NULL,
  `sectorgroup` varchar(40) DEFAULT NULL,
  `onedaypricechange` varchar(20) DEFAULT NULL,
  `enterpriseValueLatest` varchar(20) DEFAULT NULL,
  `ytdsharepriceperformance` varchar(20) DEFAULT NULL,
  `currentpricelevelannual` varchar(20) DEFAULT NULL,
  `dividendyield` varchar(20) DEFAULT NULL,
  `bullishcross50dmadate` varchar(20) DEFAULT NULL,
  `bullishcross200dmadate` varchar(20) DEFAULT NULL,
  `bearishcross50dmadate` varchar(20) DEFAULT NULL,
  `bearishcross200dmadate` varchar(20) DEFAULT NULL,
  `bullishrsicrossdate` varchar(20) DEFAULT NULL,
  `bearishrsicrossdate` varchar(20) DEFAULT NULL,
  `bullishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bearishmacdcrossdate` varchar(20) DEFAULT NULL,
  `bullishgoldcrossdate` varchar(20) DEFAULT NULL,
  `bearishgoldcrossdate` varchar(20) DEFAULT NULL,
  `revenues` varchar(20) DEFAULT NULL,
  `previousdayclosingprice` varchar(10) DEFAULT NULL,
  `fiftydaymovingaverage` varchar(10) DEFAULT NULL,
  `companyetfscount` varchar(10) DEFAULT NULL,
  `sectoretfscount` varchar(10) DEFAULT NULL,
  `industryanalysisclass` varchar(20) DEFAULT NULL,
  `netincomeLTM` varchar(20) DEFAULT NULL,
  `reportingcurrency` varchar(10) DEFAULT NULL,
  `pricingcurrency` varchar(10) DEFAULT NULL,
  `workingcapital` varchar(20) DEFAULT NULL,
  `workingcapitalHY` varchar(20) DEFAULT NULL,
  `workingcapitalQ` varchar(20) DEFAULT NULL,
  `enterpriseQ` varchar(20) DEFAULT NULL,
  `enterpriseY` varchar(20) DEFAULT NULL,
  `revenuesLTM` varchar(20) DEFAULT NULL,
  `enterpriseValueLatestBOB` varchar(20) DEFAULT NULL,
  `dailyvolume` varchar(20) DEFAULT NULL,
  `averagevolume` varchar(20) DEFAULT NULL,
  `standardDeviationVolume` varchar(20) DEFAULT NULL,
  `actualworkingcapital_q_minus0` varchar(20) DEFAULT NULL,
  `actualworkingcapital_hy_minus0` varchar(20) DEFAULT NULL,
  `closingprice_old` varchar(20) DEFAULT NULL,
  `adjustedDividendForward` varchar(40) DEFAULT NULL,
  `dividendfrequency` varchar(10) DEFAULT NULL,
  `scresgscr_latest` varchar(20) DEFAULT NULL,
  `scresgcombinedscr_latest` varchar(20) DEFAULT NULL,
  `ruleof40_q` varchar(20) DEFAULT NULL,
  `ruleof40_hy` varchar(20) DEFAULT NULL,
  `companyetf` varchar(10) DEFAULT NULL,
  `_links` varchar(10) DEFAULT NULL,
  UNIQUE KEY `idx_company1_BatchID_mykey` (`BatchID`,`mykey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `Region` char(26) NOT NULL DEFAULT '',
  `SurfaceArea` float(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` smallint(6) DEFAULT NULL,
  `Population` int(11) NOT NULL DEFAULT '0',
  `LifeExpectancy` float(3,1) DEFAULT NULL,
  `GNP` float(10,2) DEFAULT NULL,
  `GNPOld` float(10,2) DEFAULT NULL,
  `LocalName` char(45) NOT NULL DEFAULT '',
  `GovernmentForm` char(45) NOT NULL DEFAULT '',
  `HeadOfState` char(60) DEFAULT NULL,
  `Capital` int(11) DEFAULT NULL,
  `Code2` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countrylanguage`
--

DROP TABLE IF EXISTS `countrylanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countrylanguage` (
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `Language` char(30) NOT NULL DEFAULT '',
  `IsOfficial` enum('T','F') NOT NULL DEFAULT 'F',
  `Percentage` float(4,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`CountryCode`,`Language`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `countryLanguage_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketprices`
--

DROP TABLE IF EXISTS `marketprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketprices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` varchar(10) DEFAULT NULL,
  `Low` varchar(10) DEFAULT NULL,
  `Close` varchar(10) DEFAULT NULL,
  `Volume` varchar(15) DEFAULT NULL,
  `ChangeV` varchar(10) DEFAULT NULL,
  `ChangeP` varchar(10) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `idx_marketprices_Exchange_Symbol_DT` (`Exchange`,`Symbol`,`DT`)
) ENGINE=InnoDB AUTO_INCREMENT=133784 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tradeview.marketprices2`
--

DROP TABLE IF EXISTS `tradeview.marketprices2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradeview.marketprices2` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Exchange` varchar(10) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `High` varchar(10) DEFAULT NULL,
  `Low` varchar(10) DEFAULT NULL,
  `Close` varchar(10) DEFAULT NULL,
  `Volume` varchar(15) DEFAULT NULL,
  `ChangeV` varchar(10) DEFAULT NULL,
  `ChangeP` varchar(10) DEFAULT NULL,
  `DT` date NOT NULL,
  `InsertedDt` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `idx_marketprices_Exchange_Symbol_DT` (`Exchange`,`Symbol`,`DT`)
) ENGINE=InnoDB AUTO_INCREMENT=133784 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `commodities_db`
--

USE `commodities_db`;

--
-- Current Database: `effigy`
--

USE `effigy`;

--
-- Current Database: `effigy3`
--

USE `effigy3`;

--
-- Current Database: `import`
--

USE `import`;

--
-- Current Database: `mysql`
--

USE `mysql`;

--
-- Current Database: `sakila`
--

USE `sakila`;

--
-- Final view structure for view `actor_info`
--

/*!50001 DROP VIEW IF EXISTS `actor_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `actor_info` AS select `a`.`actor_id` AS `actor_id`,`a`.`first_name` AS `first_name`,`a`.`last_name` AS `last_name`,group_concat(distinct concat(`c`.`name`,': ',(select group_concat(`f`.`title` order by `f`.`title` ASC separator ', ') from ((`film` `f` join `film_category` `fc` on((`f`.`film_id` = `fc`.`film_id`))) join `film_actor` `fa` on((`f`.`film_id` = `fa`.`film_id`))) where ((`fc`.`category_id` = `c`.`category_id`) and (`fa`.`actor_id` = `a`.`actor_id`)))) order by `c`.`name` ASC separator '; ') AS `film_info` from (((`actor` `a` left join `film_actor` `fa` on((`a`.`actor_id` = `fa`.`actor_id`))) left join `film_category` `fc` on((`fa`.`film_id` = `fc`.`film_id`))) left join `category` `c` on((`fc`.`category_id` = `c`.`category_id`))) group by `a`.`actor_id`,`a`.`first_name`,`a`.`last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_list`
--

/*!50001 DROP VIEW IF EXISTS `customer_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_list` AS select `cu`.`customer_id` AS `ID`,concat(`cu`.`first_name`,_utf8mb3' ',`cu`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`city`.`city` AS `city`,`country`.`country` AS `country`,if(`cu`.`active`,_utf8mb3'active',_utf8mb3'') AS `notes`,`cu`.`store_id` AS `SID` from (((`customer` `cu` join `address` `a` on((`cu`.`address_id` = `a`.`address_id`))) join `city` on((`a`.`city_id` = `city`.`city_id`))) join `country` on((`city`.`country_id` = `country`.`country_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `film_list`
--

/*!50001 DROP VIEW IF EXISTS `film_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `film_list` AS select `film`.`film_id` AS `FID`,`film`.`title` AS `title`,`film`.`description` AS `description`,`category`.`name` AS `category`,`film`.`rental_rate` AS `price`,`film`.`length` AS `length`,`film`.`rating` AS `rating`,group_concat(concat(`actor`.`first_name`,_utf8mb3' ',`actor`.`last_name`) separator ', ') AS `actors` from ((((`category` left join `film_category` on((`category`.`category_id` = `film_category`.`category_id`))) left join `film` on((`film_category`.`film_id` = `film`.`film_id`))) join `film_actor` on((`film`.`film_id` = `film_actor`.`film_id`))) join `actor` on((`film_actor`.`actor_id` = `actor`.`actor_id`))) group by `film`.`film_id`,`category`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nicer_but_slower_film_list`
--

/*!50001 DROP VIEW IF EXISTS `nicer_but_slower_film_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nicer_but_slower_film_list` AS select `film`.`film_id` AS `FID`,`film`.`title` AS `title`,`film`.`description` AS `description`,`category`.`name` AS `category`,`film`.`rental_rate` AS `price`,`film`.`length` AS `length`,`film`.`rating` AS `rating`,group_concat(concat(concat(upper(substr(`actor`.`first_name`,1,1)),lower(substr(`actor`.`first_name`,2,length(`actor`.`first_name`))),_utf8mb3' ',concat(upper(substr(`actor`.`last_name`,1,1)),lower(substr(`actor`.`last_name`,2,length(`actor`.`last_name`)))))) separator ', ') AS `actors` from ((((`category` left join `film_category` on((`category`.`category_id` = `film_category`.`category_id`))) left join `film` on((`film_category`.`film_id` = `film`.`film_id`))) join `film_actor` on((`film`.`film_id` = `film_actor`.`film_id`))) join `actor` on((`film_actor`.`actor_id` = `actor`.`actor_id`))) group by `film`.`film_id`,`category`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_by_film_category`
--

/*!50001 DROP VIEW IF EXISTS `sales_by_film_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_film_category` AS select `c`.`name` AS `category`,sum(`p`.`amount`) AS `total_sales` from (((((`payment` `p` join `rental` `r` on((`p`.`rental_id` = `r`.`rental_id`))) join `inventory` `i` on((`r`.`inventory_id` = `i`.`inventory_id`))) join `film` `f` on((`i`.`film_id` = `f`.`film_id`))) join `film_category` `fc` on((`f`.`film_id` = `fc`.`film_id`))) join `category` `c` on((`fc`.`category_id` = `c`.`category_id`))) group by `c`.`name` order by `total_sales` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_by_store`
--

/*!50001 DROP VIEW IF EXISTS `sales_by_store`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_store` AS select concat(`c`.`city`,_utf8mb3',',`cy`.`country`) AS `store`,concat(`m`.`first_name`,_utf8mb3' ',`m`.`last_name`) AS `manager`,sum(`p`.`amount`) AS `total_sales` from (((((((`payment` `p` join `rental` `r` on((`p`.`rental_id` = `r`.`rental_id`))) join `inventory` `i` on((`r`.`inventory_id` = `i`.`inventory_id`))) join `store` `s` on((`i`.`store_id` = `s`.`store_id`))) join `address` `a` on((`s`.`address_id` = `a`.`address_id`))) join `city` `c` on((`a`.`city_id` = `c`.`city_id`))) join `country` `cy` on((`c`.`country_id` = `cy`.`country_id`))) join `staff` `m` on((`s`.`manager_staff_id` = `m`.`staff_id`))) group by `s`.`store_id` order by `cy`.`country`,`c`.`city` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `staff_list`
--

/*!50001 DROP VIEW IF EXISTS `staff_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `staff_list` AS select `s`.`staff_id` AS `ID`,concat(`s`.`first_name`,_utf8mb3' ',`s`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`city`.`city` AS `city`,`country`.`country` AS `country`,`s`.`store_id` AS `SID` from (((`staff` `s` join `address` `a` on((`s`.`address_id` = `a`.`address_id`))) join `city` on((`a`.`city_id` = `city`.`city_id`))) join `country` on((`city`.`country_id` = `country`.`country_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `tradeview`
--

USE `tradeview`;

--
-- Final view structure for view `sec_master_all`
--

/*!50001 DROP VIEW IF EXISTS `sec_master_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sec_master_all` AS select (case when (`marketprices`.`Exchange` in ('NYSE','NASDAQ','AMEX')) then 'US' when (`marketprices`.`Exchange` in ('TSX','TSXV')) then 'CA' end) AS `country`,`marketprices`.`ID` AS `ID`,`marketprices`.`key` AS `key`,`marketprices`.`Exchange` AS `Exchange`,`marketprices`.`Symbol` AS `Symbol`,`marketprices`.`Name` AS `Name`,`marketprices`.`High` AS `High`,`marketprices`.`Low` AS `Low`,`marketprices`.`Close` AS `Close`,`marketprices`.`Volume` AS `Volume`,`marketprices`.`ChangeV` AS `ChangeV`,`marketprices`.`ChangeP` AS `ChangeP`,`marketprices`.`DT` AS `DT`,`marketprices`.`InsertedDt` AS `InsertedDt` from `marketprices` where (`marketprices`.`DT` = (select max(`marketprices`.`DT`) from `marketprices`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sec_master_can`
--

/*!50001 DROP VIEW IF EXISTS `sec_master_can`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sec_master_can` AS select 'CA' AS `country`,`marketprices`.`ID` AS `ID`,`marketprices`.`key` AS `key`,`marketprices`.`Exchange` AS `Exchange`,`marketprices`.`Symbol` AS `Symbol`,`marketprices`.`Name` AS `Name`,`marketprices`.`High` AS `High`,`marketprices`.`Low` AS `Low`,`marketprices`.`Close` AS `Close`,`marketprices`.`Volume` AS `Volume`,`marketprices`.`ChangeV` AS `ChangeV`,`marketprices`.`ChangeP` AS `ChangeP`,`marketprices`.`DT` AS `DT`,`marketprices`.`InsertedDt` AS `InsertedDt` from `marketprices` where ((`marketprices`.`DT` = (select max(`marketprices`.`DT`) from `marketprices`)) and (`marketprices`.`Exchange` in ('tsx','tsxv'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sec_master_company`
--

/*!50001 DROP VIEW IF EXISTS `sec_master_company`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sec_master_company` AS select `company1`.`BatchID` AS `BatchID`,`company1`.`mykey` AS `mykey`,`company1`.`mycountry` AS `mycountry`,`company1`.`myexchange` AS `myexchange`,`company1`.`mysymbol` AS `mysymbol`,`company1`.`myasofDate` AS `myasofDate`,`company1`.`COMP_PERM_SEC_ID` AS `COMP_PERM_SEC_ID`,`company1`.`totalSharesOutstanding` AS `totalSharesOutstanding`,`company1`.`dataQualityFilter` AS `dataQualityFilter`,`company1`.`industryFilter` AS `industryFilter`,`company1`.`company` AS `company`,`company1`.`symbol` AS `symbol1`,`company1`.`industryGroup` AS `industryGroup`,`company1`.`currency` AS `currency`,`company1`.`closingPrice` AS `closingPrice`,`company1`.`fiftyTwoWeekLow` AS `fiftyTwoWeekLow`,`company1`.`fiftyTwoWeekHigh` AS `fiftyTwoWeekHigh`,`company1`.`marketCap` AS `marketCap`,`company1`.`latestAnnualFilingDate` AS `latestAnnualFilingDate`,`company1`.`latestSemiAnnualFilingDate` AS `latestSemiAnnualFilingDate`,`company1`.`latestQuarterlyFilingDate` AS `latestQuarterlyFilingDate`,`company1`.`companyProfile` AS `companyProfile`,`company1`.`filingCurrency` AS `filingCurrency`,`company1`.`listedExchange` AS `listedExchange`,`company1`.`asofdate` AS `asofdate`,`company1`.`exchangecountry` AS `exchangecountry`,`company1`.`listeddate` AS `listeddate`,`company1`.`nextreleasedate` AS `nextreleasedate`,`company1`.`oneyearsharepriceperformance` AS `oneyearsharepriceperformance`,`company1`.`onemonthsharepriceperformance` AS `onemonthsharepriceperformance`,`company1`.`daysFromLastReleaseDate` AS `daysFromLastReleaseDate`,`company1`.`scores` AS `scores`,`company1`.`sectorgroup` AS `sectorgroup`,`company1`.`onedaypricechange` AS `onedaypricechange`,`company1`.`enterpriseValueLatest` AS `enterpriseValueLatest`,`company1`.`ytdsharepriceperformance` AS `ytdsharepriceperformance`,`company1`.`currentpricelevelannual` AS `currentpricelevelannual`,`company1`.`dividendyield` AS `dividendyield`,`company1`.`bullishcross50dmadate` AS `bullishcross50dmadate`,`company1`.`bullishcross200dmadate` AS `bullishcross200dmadate`,`company1`.`bearishcross50dmadate` AS `bearishcross50dmadate`,`company1`.`bearishcross200dmadate` AS `bearishcross200dmadate`,`company1`.`bullishrsicrossdate` AS `bullishrsicrossdate`,`company1`.`bearishrsicrossdate` AS `bearishrsicrossdate`,`company1`.`bullishmacdcrossdate` AS `bullishmacdcrossdate`,`company1`.`bearishmacdcrossdate` AS `bearishmacdcrossdate`,`company1`.`bullishgoldcrossdate` AS `bullishgoldcrossdate`,`company1`.`bearishgoldcrossdate` AS `bearishgoldcrossdate`,`company1`.`revenues` AS `revenues`,`company1`.`previousdayclosingprice` AS `previousdayclosingprice`,`company1`.`fiftydaymovingaverage` AS `fiftydaymovingaverage`,`company1`.`companyetfscount` AS `companyetfscount`,`company1`.`sectoretfscount` AS `sectoretfscount`,`company1`.`industryanalysisclass` AS `industryanalysisclass`,`company1`.`netincomeLTM` AS `netincomeLTM`,`company1`.`reportingcurrency` AS `reportingcurrency`,`company1`.`pricingcurrency` AS `pricingcurrency`,`company1`.`workingcapital` AS `workingcapital`,`company1`.`workingcapitalHY` AS `workingcapitalHY`,`company1`.`workingcapitalQ` AS `workingcapitalQ`,`company1`.`enterpriseQ` AS `enterpriseQ`,`company1`.`enterpriseY` AS `enterpriseY`,`company1`.`revenuesLTM` AS `revenuesLTM`,`company1`.`enterpriseValueLatestBOB` AS `enterpriseValueLatestBOB`,`company1`.`dailyvolume` AS `dailyvolume`,`company1`.`averagevolume` AS `averagevolume`,`company1`.`standardDeviationVolume` AS `standardDeviationVolume`,`company1`.`actualworkingcapital_q_minus0` AS `actualworkingcapital_q_minus0`,`company1`.`actualworkingcapital_hy_minus0` AS `actualworkingcapital_hy_minus0`,`company1`.`closingprice_old` AS `closingprice_old`,`company1`.`adjustedDividendForward` AS `adjustedDividendForward`,`company1`.`dividendfrequency` AS `dividendfrequency`,`company1`.`scresgscr_latest` AS `scresgscr_latest`,`company1`.`scresgcombinedscr_latest` AS `scresgcombinedscr_latest`,`company1`.`ruleof40_q` AS `ruleof40_q`,`company1`.`ruleof40_hy` AS `ruleof40_hy`,`company1`.`companyetf` AS `companyetf`,`company1`.`leveragescore` AS `leveragescore`,`company1`.`valoutlier` AS `valoutlier`,`company1`.`_links` AS `_links` from `company1` where (((`company1`.`myasofDate` = '20220411') or (`company1`.`mysymbol` = 'mara')) and (`company1`.`myexchange` not in ('NEO','CNSX'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sec_master_usa`
--

/*!50001 DROP VIEW IF EXISTS `sec_master_usa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sec_master_usa` AS select 'US' AS `country`,`marketprices`.`ID` AS `ID`,`marketprices`.`key` AS `key`,`marketprices`.`Exchange` AS `Exchange`,`marketprices`.`Symbol` AS `Symbol`,`marketprices`.`Name` AS `Name`,`marketprices`.`High` AS `High`,`marketprices`.`Low` AS `Low`,`marketprices`.`Close` AS `Close`,`marketprices`.`Volume` AS `Volume`,`marketprices`.`ChangeV` AS `ChangeV`,`marketprices`.`ChangeP` AS `ChangeP`,`marketprices`.`DT` AS `DT`,`marketprices`.`InsertedDt` AS `InsertedDt` from `marketprices` where ((`marketprices`.`DT` = (select max(`marketprices`.`DT`) from `marketprices`)) and (`marketprices`.`Exchange` in ('nyse','nasdaq','amex'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_news_buffer`
--

/*!50001 DROP VIEW IF EXISTS `v_news_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_news_buffer` AS select `news_buffer`.`EXTRACTED_DT` AS `EXTRACTED_DT`,`news_buffer`.`AS_OF` AS `AS_OF`,`news_buffer`.`ARTICLE_DT` AS `ARTICLE_DT`,`news_buffer`.`DT_FLAG` AS `DT_FLAG`,`news_buffer`.`SRC` AS `SRC`,`news_buffer`.`SRC_URL` AS `SRC_URL`,`news_buffer`.`LABEL` AS `LABEL`,`news_buffer`.`ARTICLE_URL` AS `ARTICLE_URL`,`news_buffer`.`SECTION` AS `SECTION`,`news_buffer`.`CONTENT` AS `CONTENT`,`news_buffer`.`FIELD3` AS `FIELD3`,`news_buffer`.`BATCH_ID` AS `BATCH_ID`,`news_buffer`.`INSERTED_DT` AS `INSERTED_DT` from `news_buffer` where `news_buffer`.`ID` in (select min(`news_buffer`.`ID`) from `news_buffer` group by `news_buffer`.`ARTICLE_URL`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_sec_master`
--

/*!50001 DROP VIEW IF EXISTS `v_sec_master`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_sec_master` AS select `a`.`country` AS `country`,`a`.`ID` AS `ID`,`a`.`key` AS `key`,`a`.`Exchange` AS `Exchange`,`a`.`Symbol` AS `Symbol`,`a`.`Name` AS `Name`,`a`.`High` AS `High`,`a`.`Low` AS `Low`,`a`.`Close` AS `Close`,`a`.`Volume` AS `Volume`,`a`.`ChangeV` AS `ChangeV`,`a`.`ChangeP` AS `ChangeP`,`a`.`DT` AS `DT`,`a`.`InsertedDt` AS `InsertedDt`,`c`.`BatchID` AS `BatchID`,`c`.`mykey` AS `mykey`,`c`.`mycountry` AS `mycountry`,`c`.`myexchange` AS `myexchange`,`c`.`mysymbol` AS `mysymbol`,`c`.`myasofDate` AS `myasofDate`,`c`.`COMP_PERM_SEC_ID` AS `COMP_PERM_SEC_ID`,`c`.`totalSharesOutstanding` AS `totalSharesOutstanding`,`c`.`dataQualityFilter` AS `dataQualityFilter`,`c`.`industryFilter` AS `industryFilter`,`c`.`company` AS `company`,`c`.`symbol1` AS `symbol1`,`c`.`industryGroup` AS `industryGroup`,`c`.`currency` AS `currency`,`c`.`closingPrice` AS `closingPrice`,`c`.`fiftyTwoWeekLow` AS `fiftyTwoWeekLow`,`c`.`fiftyTwoWeekHigh` AS `fiftyTwoWeekHigh`,`c`.`marketCap` AS `marketCap`,`c`.`latestAnnualFilingDate` AS `latestAnnualFilingDate`,`c`.`latestSemiAnnualFilingDate` AS `latestSemiAnnualFilingDate`,`c`.`latestQuarterlyFilingDate` AS `latestQuarterlyFilingDate`,`c`.`companyProfile` AS `companyProfile`,`c`.`filingCurrency` AS `filingCurrency`,`c`.`listedExchange` AS `listedExchange`,`c`.`asofdate` AS `asofdate`,`c`.`exchangecountry` AS `exchangecountry`,`c`.`listeddate` AS `listeddate`,`c`.`nextreleasedate` AS `nextreleasedate`,`c`.`oneyearsharepriceperformance` AS `oneyearsharepriceperformance`,`c`.`onemonthsharepriceperformance` AS `onemonthsharepriceperformance`,`c`.`daysFromLastReleaseDate` AS `daysFromLastReleaseDate`,`c`.`scores` AS `scores`,`c`.`sectorgroup` AS `sectorgroup`,`c`.`onedaypricechange` AS `onedaypricechange`,`c`.`enterpriseValueLatest` AS `enterpriseValueLatest`,`c`.`ytdsharepriceperformance` AS `ytdsharepriceperformance`,`c`.`currentpricelevelannual` AS `currentpricelevelannual`,`c`.`dividendyield` AS `dividendyield`,`c`.`bullishcross50dmadate` AS `bullishcross50dmadate`,`c`.`bullishcross200dmadate` AS `bullishcross200dmadate`,`c`.`bearishcross50dmadate` AS `bearishcross50dmadate`,`c`.`bearishcross200dmadate` AS `bearishcross200dmadate`,`c`.`bullishrsicrossdate` AS `bullishrsicrossdate`,`c`.`bearishrsicrossdate` AS `bearishrsicrossdate`,`c`.`bullishmacdcrossdate` AS `bullishmacdcrossdate`,`c`.`bearishmacdcrossdate` AS `bearishmacdcrossdate`,`c`.`bullishgoldcrossdate` AS `bullishgoldcrossdate`,`c`.`bearishgoldcrossdate` AS `bearishgoldcrossdate`,`c`.`revenues` AS `revenues`,`c`.`previousdayclosingprice` AS `previousdayclosingprice`,`c`.`fiftydaymovingaverage` AS `fiftydaymovingaverage`,`c`.`companyetfscount` AS `companyetfscount`,`c`.`sectoretfscount` AS `sectoretfscount`,`c`.`industryanalysisclass` AS `industryanalysisclass`,`c`.`netincomeLTM` AS `netincomeLTM`,`c`.`reportingcurrency` AS `reportingcurrency`,`c`.`pricingcurrency` AS `pricingcurrency`,`c`.`workingcapital` AS `workingcapital`,`c`.`workingcapitalHY` AS `workingcapitalHY`,`c`.`workingcapitalQ` AS `workingcapitalQ`,`c`.`enterpriseQ` AS `enterpriseQ`,`c`.`enterpriseY` AS `enterpriseY`,`c`.`revenuesLTM` AS `revenuesLTM`,`c`.`enterpriseValueLatestBOB` AS `enterpriseValueLatestBOB`,`c`.`dailyvolume` AS `dailyvolume`,`c`.`averagevolume` AS `averagevolume`,`c`.`standardDeviationVolume` AS `standardDeviationVolume`,`c`.`actualworkingcapital_q_minus0` AS `actualworkingcapital_q_minus0`,`c`.`actualworkingcapital_hy_minus0` AS `actualworkingcapital_hy_minus0`,`c`.`closingprice_old` AS `closingprice_old`,`c`.`adjustedDividendForward` AS `adjustedDividendForward`,`c`.`dividendfrequency` AS `dividendfrequency`,`c`.`scresgscr_latest` AS `scresgscr_latest`,`c`.`scresgcombinedscr_latest` AS `scresgcombinedscr_latest`,`c`.`ruleof40_q` AS `ruleof40_q`,`c`.`ruleof40_hy` AS `ruleof40_hy`,`c`.`companyetf` AS `companyetf`,`c`.`leveragescore` AS `leveragescore`,`c`.`valoutlier` AS `valoutlier`,`c`.`_links` AS `_links` from (`sec_master_all` `a` left join `sec_master_company` `c` on(((`a`.`country` = `c`.`mycountry`) and (`a`.`Symbol` = `c`.`mysymbol`) and (`a`.`Exchange` = `c`.`myexchange`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `tradeviewt`
--

USE `tradeviewt`;

--
-- Final view structure for view `sec_master_all`
--

/*!50001 DROP VIEW IF EXISTS `sec_master_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sec_master_all` AS select (case when (`marketprices`.`Exchange` in ('NYSE','NASDAQ','AMEX')) then 'US' when (`marketprices`.`Exchange` in ('TSX','TSXV')) then 'CA' end) AS `country`,`marketprices`.`ID` AS `ID`,`marketprices`.`key` AS `key`,`marketprices`.`Exchange` AS `Exchange`,`marketprices`.`Symbol` AS `Symbol`,`marketprices`.`Name` AS `Name`,`marketprices`.`High` AS `High`,`marketprices`.`Low` AS `Low`,`marketprices`.`Close` AS `Close`,`marketprices`.`Volume` AS `Volume`,`marketprices`.`ChangeV` AS `ChangeV`,`marketprices`.`ChangeP` AS `ChangeP`,`marketprices`.`DT` AS `DT`,`marketprices`.`InsertedDt` AS `InsertedDt` from `marketprices` where (`marketprices`.`DT` = (select max(`marketprices`.`DT`) from `marketprices`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sec_master_can`
--

/*!50001 DROP VIEW IF EXISTS `sec_master_can`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sec_master_can` AS select 'CA' AS `country`,`marketprices`.`ID` AS `ID`,`marketprices`.`key` AS `key`,`marketprices`.`Exchange` AS `Exchange`,`marketprices`.`Symbol` AS `Symbol`,`marketprices`.`Name` AS `Name`,`marketprices`.`High` AS `High`,`marketprices`.`Low` AS `Low`,`marketprices`.`Close` AS `Close`,`marketprices`.`Volume` AS `Volume`,`marketprices`.`ChangeV` AS `ChangeV`,`marketprices`.`ChangeP` AS `ChangeP`,`marketprices`.`DT` AS `DT`,`marketprices`.`InsertedDt` AS `InsertedDt` from `marketprices` where ((`marketprices`.`DT` = (select max(`marketprices`.`DT`) from `marketprices`)) and (`marketprices`.`Exchange` in ('tsx','tsxv'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sec_master_company`
--

/*!50001 DROP VIEW IF EXISTS `sec_master_company`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sec_master_company` AS select `company1`.`BatchID` AS `BatchID`,`company1`.`mykey` AS `mykey`,`company1`.`mycountry` AS `mycountry`,`company1`.`myexchange` AS `myexchange`,`company1`.`mysymbol` AS `mysymbol`,`company1`.`myasofDate` AS `myasofDate`,`company1`.`COMP_PERM_SEC_ID` AS `COMP_PERM_SEC_ID`,`company1`.`totalSharesOutstanding` AS `totalSharesOutstanding`,`company1`.`dataQualityFilter` AS `dataQualityFilter`,`company1`.`industryFilter` AS `industryFilter`,`company1`.`company` AS `company`,`company1`.`symbol` AS `symbol1`,`company1`.`industryGroup` AS `industryGroup`,`company1`.`currency` AS `currency`,`company1`.`closingPrice` AS `closingPrice`,`company1`.`fiftyTwoWeekLow` AS `fiftyTwoWeekLow`,`company1`.`fiftyTwoWeekHigh` AS `fiftyTwoWeekHigh`,`company1`.`marketCap` AS `marketCap`,`company1`.`latestAnnualFilingDate` AS `latestAnnualFilingDate`,`company1`.`latestSemiAnnualFilingDate` AS `latestSemiAnnualFilingDate`,`company1`.`latestQuarterlyFilingDate` AS `latestQuarterlyFilingDate`,`company1`.`companyProfile` AS `companyProfile`,`company1`.`filingCurrency` AS `filingCurrency`,`company1`.`listedExchange` AS `listedExchange`,`company1`.`asofdate` AS `asofdate`,`company1`.`exchangecountry` AS `exchangecountry`,`company1`.`listeddate` AS `listeddate`,`company1`.`nextreleasedate` AS `nextreleasedate`,`company1`.`oneyearsharepriceperformance` AS `oneyearsharepriceperformance`,`company1`.`onemonthsharepriceperformance` AS `onemonthsharepriceperformance`,`company1`.`daysFromLastReleaseDate` AS `daysFromLastReleaseDate`,`company1`.`scores` AS `scores`,`company1`.`sectorgroup` AS `sectorgroup`,`company1`.`onedaypricechange` AS `onedaypricechange`,`company1`.`enterpriseValueLatest` AS `enterpriseValueLatest`,`company1`.`ytdsharepriceperformance` AS `ytdsharepriceperformance`,`company1`.`currentpricelevelannual` AS `currentpricelevelannual`,`company1`.`dividendyield` AS `dividendyield`,`company1`.`bullishcross50dmadate` AS `bullishcross50dmadate`,`company1`.`bullishcross200dmadate` AS `bullishcross200dmadate`,`company1`.`bearishcross50dmadate` AS `bearishcross50dmadate`,`company1`.`bearishcross200dmadate` AS `bearishcross200dmadate`,`company1`.`bullishrsicrossdate` AS `bullishrsicrossdate`,`company1`.`bearishrsicrossdate` AS `bearishrsicrossdate`,`company1`.`bullishmacdcrossdate` AS `bullishmacdcrossdate`,`company1`.`bearishmacdcrossdate` AS `bearishmacdcrossdate`,`company1`.`bullishgoldcrossdate` AS `bullishgoldcrossdate`,`company1`.`bearishgoldcrossdate` AS `bearishgoldcrossdate`,`company1`.`revenues` AS `revenues`,`company1`.`previousdayclosingprice` AS `previousdayclosingprice`,`company1`.`fiftydaymovingaverage` AS `fiftydaymovingaverage`,`company1`.`companyetfscount` AS `companyetfscount`,`company1`.`sectoretfscount` AS `sectoretfscount`,`company1`.`industryanalysisclass` AS `industryanalysisclass`,`company1`.`netincomeLTM` AS `netincomeLTM`,`company1`.`reportingcurrency` AS `reportingcurrency`,`company1`.`pricingcurrency` AS `pricingcurrency`,`company1`.`workingcapital` AS `workingcapital`,`company1`.`workingcapitalHY` AS `workingcapitalHY`,`company1`.`workingcapitalQ` AS `workingcapitalQ`,`company1`.`enterpriseQ` AS `enterpriseQ`,`company1`.`enterpriseY` AS `enterpriseY`,`company1`.`revenuesLTM` AS `revenuesLTM`,`company1`.`enterpriseValueLatestBOB` AS `enterpriseValueLatestBOB`,`company1`.`dailyvolume` AS `dailyvolume`,`company1`.`averagevolume` AS `averagevolume`,`company1`.`standardDeviationVolume` AS `standardDeviationVolume`,`company1`.`actualworkingcapital_q_minus0` AS `actualworkingcapital_q_minus0`,`company1`.`actualworkingcapital_hy_minus0` AS `actualworkingcapital_hy_minus0`,`company1`.`closingprice_old` AS `closingprice_old`,`company1`.`adjustedDividendForward` AS `adjustedDividendForward`,`company1`.`dividendfrequency` AS `dividendfrequency`,`company1`.`scresgscr_latest` AS `scresgscr_latest`,`company1`.`scresgcombinedscr_latest` AS `scresgcombinedscr_latest`,`company1`.`ruleof40_q` AS `ruleof40_q`,`company1`.`ruleof40_hy` AS `ruleof40_hy`,`company1`.`companyetf` AS `companyetf`,`company1`.`leveragescore` AS `leveragescore`,`company1`.`valoutlier` AS `valoutlier`,`company1`.`_links` AS `_links` from `company1` where (((`company1`.`myasofDate` = '20220411') or (`company1`.`mysymbol` = 'mara')) and (`company1`.`myexchange` not in ('NEO','CNSX'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sec_master_usa`
--

/*!50001 DROP VIEW IF EXISTS `sec_master_usa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sec_master_usa` AS select 'US' AS `country`,`marketprices`.`ID` AS `ID`,`marketprices`.`key` AS `key`,`marketprices`.`Exchange` AS `Exchange`,`marketprices`.`Symbol` AS `Symbol`,`marketprices`.`Name` AS `Name`,`marketprices`.`High` AS `High`,`marketprices`.`Low` AS `Low`,`marketprices`.`Close` AS `Close`,`marketprices`.`Volume` AS `Volume`,`marketprices`.`ChangeV` AS `ChangeV`,`marketprices`.`ChangeP` AS `ChangeP`,`marketprices`.`DT` AS `DT`,`marketprices`.`InsertedDt` AS `InsertedDt` from `marketprices` where ((`marketprices`.`DT` = (select max(`marketprices`.`DT`) from `marketprices`)) and (`marketprices`.`Exchange` in ('nyse','nasdaq','amex'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_news_buffer`
--

/*!50001 DROP VIEW IF EXISTS `v_news_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_news_buffer` AS select `news_buffer`.`EXTRACTED_DT` AS `EXTRACTED_DT`,`news_buffer`.`AS_OF` AS `AS_OF`,`news_buffer`.`ARTICLE_DT` AS `ARTICLE_DT`,`news_buffer`.`DT_FLAG` AS `DT_FLAG`,`news_buffer`.`SRC` AS `SRC`,`news_buffer`.`SRC_URL` AS `SRC_URL`,`news_buffer`.`LABEL` AS `LABEL`,`news_buffer`.`ARTICLE_URL` AS `ARTICLE_URL`,`news_buffer`.`SECTION` AS `SECTION`,`news_buffer`.`CONTENT` AS `CONTENT`,`news_buffer`.`FIELD3` AS `FIELD3`,`news_buffer`.`BATCH_ID` AS `BATCH_ID`,`news_buffer`.`INSERTED_DT` AS `INSERTED_DT` from `news_buffer` where `news_buffer`.`ID` in (select min(`news_buffer`.`ID`) from `news_buffer` group by `news_buffer`.`ARTICLE_URL`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_sec_master`
--

/*!50001 DROP VIEW IF EXISTS `v_sec_master`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_sec_master` AS select `a`.`country` AS `country`,`a`.`ID` AS `ID`,`a`.`key` AS `key`,`a`.`Exchange` AS `Exchange`,`a`.`Symbol` AS `Symbol`,`a`.`Name` AS `Name`,`a`.`High` AS `High`,`a`.`Low` AS `Low`,`a`.`Close` AS `Close`,`a`.`Volume` AS `Volume`,`a`.`ChangeV` AS `ChangeV`,`a`.`ChangeP` AS `ChangeP`,`a`.`DT` AS `DT`,`a`.`InsertedDt` AS `InsertedDt`,`c`.`BatchID` AS `BatchID`,`c`.`mykey` AS `mykey`,`c`.`mycountry` AS `mycountry`,`c`.`myexchange` AS `myexchange`,`c`.`mysymbol` AS `mysymbol`,`c`.`myasofDate` AS `myasofDate`,`c`.`COMP_PERM_SEC_ID` AS `COMP_PERM_SEC_ID`,`c`.`totalSharesOutstanding` AS `totalSharesOutstanding`,`c`.`dataQualityFilter` AS `dataQualityFilter`,`c`.`industryFilter` AS `industryFilter`,`c`.`company` AS `company`,`c`.`symbol1` AS `symbol1`,`c`.`industryGroup` AS `industryGroup`,`c`.`currency` AS `currency`,`c`.`closingPrice` AS `closingPrice`,`c`.`fiftyTwoWeekLow` AS `fiftyTwoWeekLow`,`c`.`fiftyTwoWeekHigh` AS `fiftyTwoWeekHigh`,`c`.`marketCap` AS `marketCap`,`c`.`latestAnnualFilingDate` AS `latestAnnualFilingDate`,`c`.`latestSemiAnnualFilingDate` AS `latestSemiAnnualFilingDate`,`c`.`latestQuarterlyFilingDate` AS `latestQuarterlyFilingDate`,`c`.`companyProfile` AS `companyProfile`,`c`.`filingCurrency` AS `filingCurrency`,`c`.`listedExchange` AS `listedExchange`,`c`.`asofdate` AS `asofdate`,`c`.`exchangecountry` AS `exchangecountry`,`c`.`listeddate` AS `listeddate`,`c`.`nextreleasedate` AS `nextreleasedate`,`c`.`oneyearsharepriceperformance` AS `oneyearsharepriceperformance`,`c`.`onemonthsharepriceperformance` AS `onemonthsharepriceperformance`,`c`.`daysFromLastReleaseDate` AS `daysFromLastReleaseDate`,`c`.`scores` AS `scores`,`c`.`sectorgroup` AS `sectorgroup`,`c`.`onedaypricechange` AS `onedaypricechange`,`c`.`enterpriseValueLatest` AS `enterpriseValueLatest`,`c`.`ytdsharepriceperformance` AS `ytdsharepriceperformance`,`c`.`currentpricelevelannual` AS `currentpricelevelannual`,`c`.`dividendyield` AS `dividendyield`,`c`.`bullishcross50dmadate` AS `bullishcross50dmadate`,`c`.`bullishcross200dmadate` AS `bullishcross200dmadate`,`c`.`bearishcross50dmadate` AS `bearishcross50dmadate`,`c`.`bearishcross200dmadate` AS `bearishcross200dmadate`,`c`.`bullishrsicrossdate` AS `bullishrsicrossdate`,`c`.`bearishrsicrossdate` AS `bearishrsicrossdate`,`c`.`bullishmacdcrossdate` AS `bullishmacdcrossdate`,`c`.`bearishmacdcrossdate` AS `bearishmacdcrossdate`,`c`.`bullishgoldcrossdate` AS `bullishgoldcrossdate`,`c`.`bearishgoldcrossdate` AS `bearishgoldcrossdate`,`c`.`revenues` AS `revenues`,`c`.`previousdayclosingprice` AS `previousdayclosingprice`,`c`.`fiftydaymovingaverage` AS `fiftydaymovingaverage`,`c`.`companyetfscount` AS `companyetfscount`,`c`.`sectoretfscount` AS `sectoretfscount`,`c`.`industryanalysisclass` AS `industryanalysisclass`,`c`.`netincomeLTM` AS `netincomeLTM`,`c`.`reportingcurrency` AS `reportingcurrency`,`c`.`pricingcurrency` AS `pricingcurrency`,`c`.`workingcapital` AS `workingcapital`,`c`.`workingcapitalHY` AS `workingcapitalHY`,`c`.`workingcapitalQ` AS `workingcapitalQ`,`c`.`enterpriseQ` AS `enterpriseQ`,`c`.`enterpriseY` AS `enterpriseY`,`c`.`revenuesLTM` AS `revenuesLTM`,`c`.`enterpriseValueLatestBOB` AS `enterpriseValueLatestBOB`,`c`.`dailyvolume` AS `dailyvolume`,`c`.`averagevolume` AS `averagevolume`,`c`.`standardDeviationVolume` AS `standardDeviationVolume`,`c`.`actualworkingcapital_q_minus0` AS `actualworkingcapital_q_minus0`,`c`.`actualworkingcapital_hy_minus0` AS `actualworkingcapital_hy_minus0`,`c`.`closingprice_old` AS `closingprice_old`,`c`.`adjustedDividendForward` AS `adjustedDividendForward`,`c`.`dividendfrequency` AS `dividendfrequency`,`c`.`scresgscr_latest` AS `scresgscr_latest`,`c`.`scresgcombinedscr_latest` AS `scresgcombinedscr_latest`,`c`.`ruleof40_q` AS `ruleof40_q`,`c`.`ruleof40_hy` AS `ruleof40_hy`,`c`.`companyetf` AS `companyetf`,`c`.`leveragescore` AS `leveragescore`,`c`.`valoutlier` AS `valoutlier`,`c`.`_links` AS `_links` from (`sec_master_all` `a` left join `sec_master_company` `c` on(((`a`.`country` = `c`.`mycountry`) and (`a`.`Symbol` = `c`.`mysymbol`) and (`a`.`Exchange` = `c`.`myexchange`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `world`
--

USE `world`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-01 21:59:08
