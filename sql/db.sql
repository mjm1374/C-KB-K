CREATE DATABASE  IF NOT EXISTS `c-kb-k_v1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `c-kb-k_v1`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: c-kb-k_v1
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apps` (
  `id` int(11) NOT NULL,
  `appsecret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apphost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endpoint` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `appprice` decimal(14,2) NOT NULL,
  `appbalance` decimal(14,2) NOT NULL,
  `totalinstalls` int(11) NOT NULL,
  `totalcalls` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `appstatus` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `totalpermissions` int(11) NOT NULL,
  `developer_id` int(11) DEFAULT NULL,
  `appversion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_title` varchar(255) NOT NULL,
  `ct_body` longtext,
  `ct_author` int(11) DEFAULT NULL,
  `ct_date` datetime DEFAULT NULL,
  `ct_version` int(11) NOT NULL DEFAULT '1',
  `ct_active` varchar(45) NOT NULL DEFAULT '0',
  `ct_slug` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'Welcome to CBK','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit scelerisque in dictum non consectetur. Lacus viverra vitae congue eu consequat ac felis donec et. Ac orci phasellus egestas tellus. Non odio euismod lacinia at quis. Feugiat scelerisque varius morbi enim. Semper feugiat nibh sed pulvinar proin gravida. Nibh tortor id aliquet lectus proin. Leo urna molestie at elementum eu facilisis sed. Molestie nunc non blandit massa enim nec dui. Sodales ut eu sem integer vitae justo eget magna fermentum. Morbi leo urna molestie at elementum eu. Eget nunc scelerisque viverra mauris in aliquam sem.</p>\n\n<p>Et sollicitudin ac orci phasellus egestas. A cras semper auctor neque vitae tempus quam. Morbi enim nunc faucibus a. Tincidunt id aliquet risus feugiat in ante metus. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Pellentesque elit eget gravida cum sociis natoque penatibus. Et odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Eleifend mi in nulla posuere. Dui ut ornare lectus sit. In nisl nisi scelerisque eu ultrices vitae auctor. Integer quis auctor elit sed vulputate mi sit amet. A condimentum vitae sapien pellentesque habitant morbi tristique senectus. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus. Gravida cum sociis natoque penatibus et magnis dis. Quam elementum pulvinar etiam non. Tortor posuere ac ut consequat semper. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi.</p>\n\n<p>Id velit ut tortor pretium viverra. Habitasse platea dictumst quisque sagittis purus sit. Est velit egestas dui id ornare arcu. Non curabitur gravida arcu ac tortor dignissim convallis. Purus semper eget duis at tellus at urna condimentum. Consequat nisl vel pretium lectus quam id. Enim ut sem viverra aliquet. Volutpat odio facilisis mauris sit amet massa vitae tortor. Pharetra vel turpis nunc eget lorem dolor. Feugiat pretium nibh ipsum consequat.</p>\n\n<p>Ac turpis egestas integer eget. Aliquam ultrices sagittis orci a scelerisque purus semper eget. Volutpat odio facilisis mauris sit amet massa vitae. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae. Suspendisse sed nisi lacus sed viverra tellus in. Ultricies tristique nulla aliquet enim tortor at. Lorem dolor sed viverra ipsum nunc aliquet. Duis ut diam quam nulla. Ullamcorper dignissim cras tincidunt lobortis. Tincidunt vitae semper quis lectus nulla at volutpat diam ut.</p>\n\n<p>Sagittis aliquam malesuada bibendum arcu vitae. Malesuada nunc vel risus commodo viverra maecenas. Tincidunt augue interdum velit euismod in. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Consequat mauris nunc congue nisi vitae suscipit. Enim eu turpis egestas pretium aenean pharetra. Lacus viverra vitae congue eu consequat ac. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Risus ultricies tristique nulla aliquet. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Neque viverra justo nec ultrices dui. In hac habitasse platea dictumst quisque sagittis purus sit. Eget dolor morbi non arcu risus quis.</p>',1,NULL,1,'0','home');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `ingid` int(11) NOT NULL AUTO_INCREMENT,
  `ingname` varchar(45) DEFAULT NULL,
  `ingdesc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `recipeid` int(11) NOT NULL AUTO_INCREMENT,
  `recipename` varchar(512) NOT NULL,
  `recipedesc` mediumtext,
  `recipedate` datetime DEFAULT NULL,
  `recipeauthorid` int(11) DEFAULT NULL,
  `recipephoto` varchar(255) DEFAULT NULL,
  `recipecooktime` int(11) DEFAULT NULL,
  `recipepreptime` int(11) DEFAULT NULL,
  `recipeserving` int(11) DEFAULT NULL,
  PRIMARY KEY (`recipeid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Chicken Soup','This soul-warming soup is deliciously simple -- just chicken and noodles. What makes it so good is the homemade roasted chicken stock',NULL,NULL,'chicken-soup.jpg',30,30,4),(2,'Grandma\'s Spaghetti sauce','This is one that was recited to me out of memory alone, and described as a hand of garlic, etc., though the ingredient quantities should be accurate. I encourage buying the cheapest versions of these ingredients you can find; it will feed an army for about $15 without ruining the taste. You should add more seasonings based on preference. A great vegetarian sauce, and with meatballs...it makes great meatball sandwiches.',NULL,NULL,'Spaghetti-Sauce.jpg',240,90,8),(3,'Avacado Vegen Cheeseburger','These Mexican-spiced Avocado Bean Burgers make the perfect quick lunch or dinner! They’re packed with plant-based protein and fiber for a tasty and simple meatless meal. Vegan and gluten-free!\n\nHoly guacamole. I actually made you a veggie burg that doesn’t require the almighty food processor.',NULL,NULL,'Avacado-Cheeseburger.jpg',15,45,4),(4,'Smoked salmon','I smoke a lot of salmon, and I am proud of this recipe, although it would be the height of arrogance to say that what I do is the end-all, be-all of salmon smoking recipes. Lots of people smoke their salmon in lots of ways, and many of them are good. But I’ve been smoking fish for many years, and I’ve developed a system that works well.',NULL,NULL,'smoked-salmon.jpg',60,15,6),(5,'Baked Fish Tacos with Avocado','Instead of deep-frying, the fish fillets in this quick-and-easy 5-ingredient recipe are coated with a flavorful seasoning blend and baked. Several varieties of flaky white fish can be used for these tacos. When you go to the market to purchase fish, the best strategy is to be flexible and choose the variety that looks freshest that day.',NULL,NULL,NULL,20,25,4);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `roles` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-01 22:53:11
