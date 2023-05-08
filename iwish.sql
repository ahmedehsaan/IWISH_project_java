-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: iwish
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `contribution`
--

DROP TABLE IF EXISTS `contribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contribution` (
  `username` varchar(45) NOT NULL,
  `friendname` varchar(45) NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `amount` varchar(45) DEFAULT NULL,
  KEY `username` (`username`),
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribution`
--

LOCK TABLES `contribution` WRITE;
/*!40000 ALTER TABLE `contribution` DISABLE KEYS */;
INSERT INTO `contribution` VALUES ('ahmed','hesham','Zara Trench Coat','50'),('ahmed','hesham','Zara Trench Coat','50'),('ahmed','hesham','Apple Watch Series 7','20'),('ahmed','hesham','Apple Watch Series 7','30'),('ahmed','hesham','Apple Watch Series 7','20'),('ahmed','hesham','Fjallraven Kanken Backpack','50'),('ahmed','habiba','Roomba i7+ Robot Vacuum','200'),('ahmed','habiba','Roomba i7+ Robot Vacuum','600'),('ahmed','habiba','Le Creuset Dutch Oven','100');
/*!40000 ALTER TABLE `contribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_requests` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `sender_email` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT 'pending friend request sent',
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendlist`
--

DROP TABLE IF EXISTS `friendlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendlist` (
  `user_id` int NOT NULL,
  `friend_id` int NOT NULL,
  `friendname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `friendlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendlist`
--

LOCK TABLES `friendlist` WRITE;
/*!40000 ALTER TABLE `friendlist` DISABLE KEYS */;
INSERT INTO `friendlist` VALUES (1,4,'john','john@gmail.com'),(1,14,'james','james@fastmail.com'),(1,23,'taylor','taylor@bellsouth.net'),(2,6,'robert','robert@hotmail.com'),(3,9,'lisa','lisa@icloud.com'),(3,8,'david','david@outlook.com'),(3,14,'james','james@fastmail.com'),(3,17,'katherine','katherine@comcast.net'),(4,15,'samantha','samantha@yandex.com'),(5,6,'robert','robert@hotmail.com'),(5,11,'emily','emily@zoho.com'),(5,17,'katherine','katherine@comcast.net'),(2,10,'steven','steven@protonmail.com'),(2,19,'madison','madison@earthlink.net'),(2,3,'habiba','habiba@gmail.com'),(3,1,'ahmed','ehsan@gmail.com'),(1,3,'habiba','habiba@gmail.com');
/*!40000 ALTER TABLE `friendlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credits`
--

DROP TABLE IF EXISTS `user_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_credits` (
  `id` int NOT NULL,
  `credit_card` varchar(12) NOT NULL,
  `card_bin` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credits`
--

LOCK TABLES `user_credits` WRITE;
/*!40000 ALTER TABLE `user_credits` DISABLE KEYS */;
INSERT INTO `user_credits` VALUES (1,'492979526282','1234'),(2,'448558287647','2345'),(3,'531133392146','3456'),(4,'491622537365','4567'),(5,'453273659328','5678'),(6,'543935696235','6789'),(7,'479898362673','7890'),(8,'535315335131','8901'),(9,'532452192729','9012'),(10,'402400715515','0123'),(11,'523632474471','1234'),(12,'516816298469','2345'),(13,'549269348706','3456'),(14,'492929054693','4567'),(15,'453918816565','5678'),(16,'491662079006','6789'),(17,'518791046646','7890'),(18,'453975898939','8901'),(19,'491148058921','9012'),(20,'515815381256','0123'),(21,'491622499259','1234'),(22,'541651847453','2345'),(23,'492921245174','3456'),(24,'532935848864','4567');
/*!40000 ALTER TABLE `user_credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `balance` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ahmed','1234','ehsan@gmail.com',910),(2,'hesham','1010','hesham@gmail.com',1000),(3,'habiba','7777','habiba@gmail.com',980),(4,'john','1234','john@gmail.com',1000),(5,'sarah','5678','sarah@yahoo.com',1000),(6,'robert','9876','robert@hotmail.com',2000),(7,'jessica','4321','jessica@aol.com',2000),(8,'david','1111','david@outlook.com',2000),(9,'lisa','2222','lisa@icloud.com',2000),(10,'steven','3333','steven@protonmail.com',2000),(11,'emily','4444','emily@zoho.com',3000),(12,'peter','5555','peter@gmx.com',3000),(13,'megan','6666','megan@mail.com',3000),(14,'james','7777','james@fastmail.com',3000),(15,'samantha','8888','samantha@yandex.com',3000),(16,'jacob','9999','jacob@mail.ru',4000),(17,'katherine','2468','katherine@comcast.net',4000),(18,'kevin','1357','kevin@sbcglobal.net',4000),(19,'madison','9876','madison@earthlink.net',4000),(20,'nathan','2468','nathan@cox.net',4000),(21,'olivia','1357','olivia@verizon.net',5000),(22,'ryan','8642','ryan@att.net',5000),(23,'taylor','5793','taylor@bellsouth.net',5000),(24,'hazem','1234','hazem@gmail.com',5000);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishitems`
--

DROP TABLE IF EXISTS `wishitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishitems` (
  `item_id` int DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishitems`
--

LOCK TABLES `wishitems` WRITE;
/*!40000 ALTER TABLE `wishitems` DISABLE KEYS */;
INSERT INTO `wishitems` VALUES (1,'Nike Air Force 1 Low','90','Classic white leather sneakers with Nike Air technology','nike-air-force-1-low_xg89xu-removebg-preview.png'),(2,'Echo Dot (4th Gen)','50','Smart speaker with Alexa voice control','71yxZANnTDS._AC_UF1000_1000_QL80_-removebg-preview.png'),(3,'Kindle Paperwhite','130','Waterproof e-reader with built-in light and Wi-Fi','415YFn0VOzL._SL500_._AC_SL500_-removebg-preview.png'),(4,'Instant Pot Duo 6-Qt','89','7-in-1 pressure cooker, slow cooker, rice cooker, steamer, sauté, yogurt maker and warmer','71CzD+eRG3L-removebg-preview.png'),(5,'Beats Solo3 Wireless Headphones','180','On-ear headphones with up to 40 hours of battery life and Apple W1 chip','71IDFzvVGoL._AC_UF894_1000_QL80_-removebg-preview.png'),(6,'Zara Trench Coat','100','Classic double-breasted coat made of water-repellent fabric','2365274743_6_1_1-removebg-preview.png'),(7,'Apple Watch Series 7','399','Latest generation smartwatch with Always-On Retina display and blood oxygen sensor','71Woz5+8URL-removebg-preview.png'),(8,'Fjallraven Kanken Backpack','80','Iconic Swedish backpack made of durable, water-resistant Vinylon F fabric','815S1ZeM9oL._AC_UY1000_-removebg-preview.png'),(9,'Lululemon Align Leggings','98','High-waisted, buttery-soft leggings made for yoga and everyday wear','71Gs2-1mcOL._AC_SL1500_-removebg-preview.png'),(10,'Samsung Galaxy Buds Pro','200','Wireless earbuds with active noise cancellation and 360 Audio','61XIgDN1x1L._AC_UF1000_1000_QL80_-removebg-preview.png'),(11,'Roomba i7+ Robot Vacuum','800','Self-emptying robot vacuum with advanced navigation and personalized cleaning recommendations','6280529_sd-removebg-preview.png'),(12,'Le Creuset Dutch Oven','350','Cast iron enameled pot with lid, perfect for slow cooking and baking','chambray_g1-removebg-preview.png'),(13,'Sonos Beam Soundbar','399','Smart TV soundbar with voice control and built-in Alexa and Google Assistant','61bJ59nkmaL-removebg-preview.png'),(14,'Sony Alpha a7 III Mirrorless Camera','2000','Full-frame camera with 24.2MP resolution and 4K video recording','sony_ilce_7m3k_b_alpha_a7_iii_mirrorless_1519695934000_1394219-removebg-preview.png'),(15,'Apple iPad Air','599','10.9-inch tablet with A14 Bionic chip and Apple Pencil compatibility','71AJC-PE5IS-removebg-preview.png'),(16,'Bose QuietComfort 35 II Wireless Headphones','299','Noise-cancelling headphones with up to 20 hours of battery life','81+jNVOUsJL._AC_SL1500_-removebg-preview.png'),(17,'Dyson V11 Absolute Cordless Vacuum','700','Powerful cordless vacuum with LCD screen and up to 60 minutes of run time','298793-01-gallery-img-3-removebg-preview.png'),(18,'Nintendo Switch Console','300','Handheld and home console hybrid with detachable controllers and a dock for TV gaming','jbareham_1492_170228_0024.0-removebg-preview.png'),(19,'Canon EOS R5 Mirrorless Camera','3899','Full-frame camera with 45MP resolution, 8K video recording, and advanced autofocus','71kHYhqWyHL-removebg-preview.png'),(20,'Apple MacBook Pro 16-inch','2399','Powerful laptop with Retina display, Touch Bar, and up to 11 hours of battery life','wIWFLL-1637585456-removebg-preview.png'),(21,'Herman Miller Aeron Chair','1395','Ergonomic office chair with adjustable lumbar support and tilt','81eD2GPi9qS._AC_SL1500_-removebg-preview.png'),(22,'Sennheiser Momentum True Wireless 2 Earbuds','300','Wireless earbuds with active noise cancellation and up to 7 hours of battery life','design-medium-removebg-preview.png'),(23,'Sony WH-1000XM4 Wireless Headphones','350','Noise-cancelling headphones with up to 30 hours of battery life and touch controls','s-l1600-removebg-preview.png'),(24,'Cricut Maker Cutting Machine','369','Smart cutting machine that cuts and scores a variety of materials, including fabric and leather','2008334.2_8_1-removebg-preview.png'),(25,'Peloton Bike+ Exercise Bike','2495','Premium indoor exercise bike with a 24-inch HD touchscreen display and live and on-demand classes','377614_535_XL-removebg-preview.png');
/*!40000 ALTER TABLE `wishitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `wish_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `contribution` varchar(45) DEFAULT '0',
  PRIMARY KEY (`wish_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (3,1,'Kindle Paperwhite','130','Waterproof e-reader with built-in light and Wi-Fi','0'),(4,1,'Instant Pot Duo 6-Qt','89','7-in-1 pressure cooker, slow cooker, rice cooker, steamer, sauté, yogurt maker and warmer','0'),(5,1,'Beats Solo3 Wireless Headphones','180','On-ear headphones with up to 40 hours of battery life and Apple W1 chip','0'),(6,2,'Zara Trench Coat','100','Classic double-breasted coat made of water-repellent fabric','100'),(7,2,'Apple Watch Series 7','399','Latest generation smartwatch with Always-On Retina display and blood oxygen sensor','70'),(8,2,'Fjallraven Kanken Backpack','80','Iconic Swedish backpack made of durable, water-resistant Vinylon F fabric','50'),(9,2,'Lululemon Align Leggings','98','High-waisted, buttery-soft leggings made for yoga and everyday wear','0'),(10,2,'Samsung Galaxy Buds Pro','200','Wireless earbuds with active noise cancellation and 360 Audio','0'),(11,3,'Roomba i7+ Robot Vacuum','800','Self-emptying robot vacuum with advanced navigation and personalized cleaning recommendations','800'),(12,3,'Le Creuset Dutch Oven','350','Cast iron enameled pot with lid, perfect for slow cooking and baking','100'),(13,3,'Sonos Beam Soundbar','399','Smart TV soundbar with voice control and built-in Alexa and Google Assistant','0'),(14,3,'Sony Alpha a7 III Mirrorless Camera','2000','Full-frame camera with 24.2MP resolution and 4K video recording','0'),(15,3,'Apple iPad Air','599','10.9-inch tablet with A14 Bionic chip and Apple Pencil compatibility','0'),(19,1,'Sennheiser Momentum True Wireless 2 Earbuds','300','Wireless earbuds with active noise cancellation and up to 7 hours of battery life','0'),(22,1,'Apple MacBook Pro 16-inch','2399','Powerful laptop with Retina display, Touch Bar, and up to 11 hours of battery life','0');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-25 17:04:10
