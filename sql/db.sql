-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: c-kb-k_v1
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `Ingredients`
--

DROP TABLE IF EXISTS `Ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingredients` (
  `IngredientID` bigint(20) unsigned NOT NULL,
  `Type` enum('Ingredient') DEFAULT NULL,
  `CostPrice` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`IngredientID`),
  KEY `IngredientID` (`IngredientID`,`Type`),
  CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`IngredientID`, `Type`) REFERENCES `RecipeItems` (`ItemID`, `Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredients`
--

LOCK TABLES `Ingredients` WRITE;
/*!40000 ALTER TABLE `Ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecipeItems`
--

DROP TABLE IF EXISTS `RecipeItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RecipeItems` (
  `ItemID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Type` enum('Ingredient','Recipe') DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Quantity` float NOT NULL,
  UNIQUE KEY `ItemID` (`ItemID`),
  KEY `ItemID_2` (`ItemID`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeItems`
--

LOCK TABLES `RecipeItems` WRITE;
/*!40000 ALTER TABLE `RecipeItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `RecipeItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecipeLineItems`
--

DROP TABLE IF EXISTS `RecipeLineItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RecipeLineItems` (
  `RecipeID` bigint(20) unsigned NOT NULL,
  `ItemID` bigint(20) unsigned NOT NULL,
  `Quantity` float NOT NULL,
  PRIMARY KEY (`RecipeID`,`ItemID`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `recipelineitems_ibfk_1` FOREIGN KEY (`RecipeID`) REFERENCES `Recipes` (`RecipeID`),
  CONSTRAINT `recipelineitems_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `RecipeItems` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeLineItems`
--

LOCK TABLES `RecipeLineItems` WRITE;
/*!40000 ALTER TABLE `RecipeLineItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `RecipeLineItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recipes`
--

DROP TABLE IF EXISTS `Recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recipes` (
  `RecipeID` bigint(20) unsigned NOT NULL,
  `Type` enum('Recipe') DEFAULT NULL,
  `SellPrice` decimal(6,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Instructions` text,
  PRIMARY KEY (`RecipeID`),
  KEY `RecipeID` (`RecipeID`,`Type`),
  CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`RecipeID`, `Type`) REFERENCES `RecipeItems` (`ItemID`, `Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipes`
--

LOCK TABLES `Recipes` WRITE;
/*!40000 ALTER TABLE `Recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16 14:59:39
