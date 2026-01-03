-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: host.docker.internal    Database: ecommerce_db
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `about` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius enim, accusantium repellat ex autem numquam iure officiis facere vitae itaque?\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nam qui vel cupiditate exercitationem, ea fuga est velit nulla culpa modi quis iste tempora non, suscipit repellendus labore voluptatem dicta amet?\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nam qui vel cupiditate exercitationem, ea fuga est velit nulla culpa modi quis iste tempora non, suscipit repellendus labore voluptatem dicta amet?');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','$2y$10$MilDJm3l8BP.0xHChL/liOBpFEQcHaW3gejq.SuQYfs459KDgwhR.');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'Fresh Produce'),(6,'Dairy & Eggs'),(7,'Cookie Dough'),(8,'Domestic Beer'),(9,'Blush Wine'),(10,'Spirits Rum'),(11,'Deli Hot Case'),(12,'V-Day Candy'),(13,'Coffee'),(14,'Baking'),(15,'Meat'),(16,'Seafood'),(17,'Frozen Food'),(18,'Pantry');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'address','123 ABC Street, XYZ Road'),(2,'phone','+234-80-1234-5678'),(3,'facebook','username'),(4,'twitter','username'),(5,'instagram','username'),(6,'email','info@abc.com');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'What is my name?','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),(4,'Who am i?','I dont know');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `policy` varchar(25000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (1,'Copyright 2011-2018 Twitter, Inc.\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.');
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(1000) NOT NULL,
  `category` varchar(500) NOT NULL,
  `images` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (19,'Fresh Produce, Baby Peeled Carrots, 1lb Bag',1.17,'Great as a healthy snack, adding to your recipes or salads','Fresh Produce','a:1:{i:0;s:44:\"uploads/a6301fee4ecbceeac6993287df4cffee.png\";}'),(21,'Planet Oat Oat Milk, Velvety & Smooth, Barista Lovers, 52 fl oz',3.38,'Ideal for barista-quality coffee and lattes','Dairy & Eggs','a:1:{i:0;s:44:\"uploads/93502fb360daefc5a20b8a51615d0b38.png\";}'),(22,'Great Value Whole Vitamin D Milk, Gallon, Plastic, Jug, 128 fl oz',7.56,'Excellent source of protein and calcium','Dairy & Eggs','a:1:{i:0;s:44:\"uploads/8b6b32f27d19bcbe930a1bd80df8149c.png\";}'),(23,'Pillsbury Ready to Bake Cookie Dough, REESE\'S Peanut Butter, Makes 24 Cookies, 16 oz',4,'NO MIXING, NO MESS: Just place cookie dough rounds on a cookie sheet and bake according to package directions','Cookie Dough','a:1:{i:0;s:44:\"uploads/c5c0a146c2a3da42d3aa2d57d1a6b1ba.png\";}'),(24,'Budweiser American Lager Beer 36 Pack 12 fl oz Aluminum Cans 5% ABV',23.12,'Crisp, clean, American beer brewed for maximum refreshment and bold flavor','Domestic Beer','a:1:{i:0;s:44:\"uploads/49989fdba749748ed8e73b6f67818de1.png\";}'),(25,'Barefoot Pink Moscato Rose Wine, California, 1.5L Glass Bottle',10.97,'Offers vibrant fruit aromas and flavors, bright acidity, ample mid-palate weight and a delightfully sweet, smooth finish','Blush Wine','a:1:{i:0;s:44:\"uploads/1a7e3c33817de4ab2070e458fcc5f49e.png\";}'),(26,'Malibu White Rum with Coconut Liqueur, 1.75 L Bottle, 21% ABV',19.64,'RUM DRINKS: Ideal in cocktails and alcohol drinks like the classic Pina Colada or mixed with pineapple or cola','Spirits Rum','a:1:{i:0;s:44:\"uploads/62c31568f84e49024d1d01f74070b4a0.png\";}'),(27,'(Hot) Freshness Guaranteed Traditional Rotisserie Whole Chicken, 2.25 lb',5.97,'Serve with your other favorites from the Walmart deli, such as green beans, mashed potatoes, or macaroni and cheese','Deli Hot Case','a:1:{i:0;s:44:\"uploads/660eb6da0a754a26f3a687282c87859c.png\";}'),(28,'SOUR PATCH KIDS Soft & Chewy Valentines Day Candy Hearts, 3.1 oz',1.24,'Perfect sweet treat for Valentines gifts and candy exchanges','V-Day Candy','a:1:{i:0;s:44:\"uploads/de8cdb049d177d187e5d156224402227.png\";}'),(29,'Queen Anne Milk Chocolate Cordial Cherries, 6.6 oz Box, 10 Pieces',2.72,'Share Queen Anne with your family and friends','V-Day Candy','a:1:{i:0;s:44:\"uploads/d13fd1e55d6b85464dda5d424443dd21.png\";}'),(30,'GHIRARDELLI Strawberry Bark Chocolate SQUARES, 4.5 oz Bag',5.97,'Individually wrapped chocolate SQUARES make the perfect addition to valentines or as gifts for a loved one','V-Day Candy','a:1:{i:0;s:44:\"uploads/601f81e9071e4826d1a042d7e8d943c8.png\";}'),(31,'Cafe Bustelo Medium Roast Ground Coffee, 11 oz Bag',9.52,'MEDIUM ROAST COFFEE: Balanced and smooth with dark chocolate notes','Coffee','a:1:{i:0;s:44:\"uploads/96145878c26f1c13de77080b4860b31a.png\";}'),(32,'Dunkin’ Original Blend Medium Roast Ground Coffee, 12 oz Bag',9.24,'MEDIUM ROAST COFFEE: The coffee that made Dunkin’ famous, with rich and smooth flavor unmatched by others','Coffee','a:1:{i:0;s:44:\"uploads/43a25e04dea3c00f023167e843295e00.png\";}'),(33,'Starbucks Frappuccino Coffee Drink Lite Gelato Caramel 9.5 fl oz Bottle',2.58,'Made with the finest arabica coffee beans','Coffee','a:1:{i:0;s:44:\"uploads/706bc71064cbd9865cafe792b4544fe6.png\";}'),(34,'Betty Crocker Soft Baked Cookie Mix, Birthday Cake Batter, Holiday Baking, 16.8 oz',2.97,'QUICK AND EASY: Follow four simple steps to go from mix to oven; Bake up cookies in about 15 to 17 minutes','Baking','a:1:{i:0;s:44:\"uploads/d2ede5976f998bcd9080167f2360b730.png\";}'),(35,'King Arthur Baking Company, Gluten-Free Confetti Cake Mix, 18 oz Box',5.48,'Made without synthetic colors for a more natural celebration','Baking','a:1:{i:0;s:44:\"uploads/b01cc7f82a4a2c386d944054cb9afde5.png\";}'),(36,'TruEats Cupcake & Cake Mix - French Vanilla: Low Glycemic, Protein & Fiber Rich, Gluten Free',7.99,'Soy Free Egg Free','Baking','a:1:{i:0;s:44:\"uploads/f526335ebb2fc227fbae6cc01dac6d40.png\";}'),(37,'Pillsbury Moist Supreme White Cake Mix, 15.25 oz Box',1.52,'Enjoy a moist white cake with the familiar classic flavor you know and trust','Baking','a:1:{i:0;s:44:\"uploads/3b84553b841bc683bec48f92e641eafc.png\";}'),(38,'Thin Ribeye Steak Choice Angus Beef, 2 Per Tray, 0.43 - 1.68 lb',21.59,'USDA Choice Angus Beef, known for marbling, tenderness, and flavor','Meat','a:1:{i:0;s:44:\"uploads/cddb4c9a95393642cc6c16f64ad61b78.png\";}'),(39,'Freshness Guaranteed Boneless, Skinless Chicken Breasts, 4.7-6.1 lb Tray',11.72,'An excellent source of protein with 25 grams per serving','Meat','a:1:{i:0;s:44:\"uploads/37298204dae7a1715bc4da3ec6ccd8b0.png\";}'),(40,'Marketside Skin-On Atlantic Salmon Fillet, 2.0 - 3.0 lb',20.57,'Good source of lean protein','Seafood','a:1:{i:0;s:44:\"uploads/68197ce650213d373a346bb285ddbb02.png\";}'),(41,'Trident Seafoods Alaska Pollock Loin Portions 5.3oz Wild Caught Boneless Filets',16.44,'Cooks quickly grill bake pan sear or air fry','Frozen Food','a:1:{i:0;s:44:\"uploads/a2ae9a474c3f3956ddf2865272d6ac78.png\";}'),(42,'ush\'s Blackeye Peas, Canned Black Eyed Peas, 15.8 oz',1.64,'Plump, tender blackeye peas with a mild, hearty flavor and creamy texture','Pantry','a:1:{i:0;s:44:\"uploads/3cec5e8ad8d9d23f492b5a458c51c6bb.png\";}');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `timestamp` datetime NOT NULL,
  `address` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL,
  `password` varchar(200) NOT NULL,
  `code` int NOT NULL DEFAULT '0',
  `expiration` int NOT NULL DEFAULT '0',
  `created` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'yem','test','123@gmail.com','1234567890','testaddress','$2y$12$NA4UVOTUa5MG3F5fASat0.EM9gL9ra9z3cTxlWJvhZzBCEWog3SrO',0,0,1767150609);
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

-- Dump completed on 2026-01-03 21:59:05
