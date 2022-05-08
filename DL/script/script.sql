-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: tech_app
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int unsigned NOT NULL,
  `id_user` int NOT NULL,
  `province_id` varchar(45) NOT NULL COMMENT 'id tỉnh',
  `district_id` varchar(45) NOT NULL,
  `ward_id` varchar(45) NOT NULL,
  `address_detail` varchar(100) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'28','20','26','1 Evergreen Circle','Hammes-Spencer','(795) 6655958'),(2,2,'20','46','11','1 Duke Junction','Altenwerth-Rodriguez','(256) 6476102'),(3,3,'2','43','31','698 Kings Terrace','Kilback Inc','(603) 6780597'),(4,4,'40','17','7','568 Calypso Park','Schimmel Inc','(229) 9358068'),(5,5,'20','50','35','7005 Orin Center','Schimmel-Collins','(629) 6444429'),(6,6,'39','25','46','0 Waxwing Road','West LLC','(122) 4712001'),(7,7,'6','44','36','06252 Marcy Way','Cartwright Inc','(305) 9423773'),(8,8,'9','29','9','60 Havey Park','Ryan and Sons','(849) 3830513'),(9,9,'14','23','22','971 Northview Junction','Dibbert LLC','(716) 2908445'),(10,10,'18','42','21','416 Brentwood Park','Klein-Rau','(936) 2247934'),(11,11,'12','49','46','22 Morning Parkway','Toy-Shields','(382) 9498088'),(12,12,'34','29','8','777 Almo Lane','Ratke, Lowe and Harvey','(784) 5625148'),(13,13,'15','41','50','4338 Walton Terrace','Wolff LLC','(897) 7143241'),(14,14,'21','27','46','42535 Little Fleur Hill','O\'Hara, Thompson and O\'Conner','(140) 9047771'),(15,15,'34','17','8','981 Jenna Plaza','Kshlerin and Sons','(982) 2711928'),(16,16,'50','5','38','10912 Lighthouse Bay Alley','Macejkovic-Hilpert','(341) 8365148'),(17,17,'25','4','20','76980 Elka Center','Schiller-Mertz','(218) 8673625'),(18,18,'4','39','5','0457 Duke Parkway','Kreiger, Altenwerth and Satterfield','(551) 6144432'),(19,19,'34','47','36','077 Redwing Crossing','Johnston, Macejkovic and Lowe','(204) 8224409'),(20,20,'23','30','24','43 Shelley Park','Doyle, Boyer and Johns','(519) 1662445'),(21,21,'6','38','2','5 Anzinger Pass','Schultz Group','(378) 1046037'),(22,22,'2','8','1','2519 Hansons Hill','Stiedemann-Mayert','(606) 9626447'),(23,23,'27','1','18','8 Brickson Park Park','Rolfson LLC','(107) 7989481'),(24,24,'40','40','41','2488 Milwaukee Park','Lubowitz, Schuppe and Leuschke','(847) 9341142'),(25,25,'16','31','18','2843 Aberg Plaza','Hyatt, Schulist and Greenfelder','(406) 3979972'),(26,26,'12','36','6','89505 Lien Drive','Jaskolski LLC','(888) 1753905'),(27,27,'43','40','5','17425 Hanson Terrace','Conroy, Quigley and Lebsack','(346) 1567896'),(28,28,'32','31','26','9 Bonner Junction','Cartwright-Fahey','(652) 9938040'),(29,29,'41','38','3','6314 Washington Street','Beer, Wolf and Cronin','(635) 5884012'),(30,30,'14','11','40','44 Del Sol Junction','Schuppe Inc','(594) 2616795'),(31,31,'22','7','34','22 Raven Street','Johnson-Weimann','(608) 4933846'),(32,32,'33','3','3','71 Kennedy Place','Little and Sons','(121) 8153004'),(33,33,'21','8','5','67122 Ludington Terrace','Rau, Rice and Mitchell','(322) 4161811'),(34,34,'10','2','14','6172 Mockingbird Hill','Wisozk, Rodriguez and McDermott','(712) 9890153'),(35,35,'43','42','22','07904 Manufacturers Court','Ruecker-Baumbach','(569) 1498480'),(36,36,'1','31','1','62 Dawn Avenue','Lueilwitz-Ondricka','(508) 8729914'),(37,37,'20','42','19','16 Crowley Circle','Lockman-Brakus','(488) 2905079'),(38,38,'41','3','22','1231 Gerald Street','Turner-Welch','(799) 2963131'),(39,39,'8','36','39','94 Knutson Avenue','Gerlach, McLaughlin and Kuvalis','(674) 5738855'),(40,40,'22','36','13','641 Helena Trail','Wolff and Sons','(670) 8242520'),(41,41,'35','27','12','58359 Comanche Crossing','Lang, Cronin and Grady','(728) 5116824'),(42,42,'7','33','9','4 Browning Way','Grimes-Bernhard','(196) 4522719'),(43,43,'19','19','15','542 La Follette Alley','Flatley LLC','(544) 6660955'),(44,44,'39','24','40','6 Vidon Road','Miller, Brekke and Kiehn','(696) 4382715'),(45,45,'28','22','13','51 Eastwood Avenue','Rolfson-Breitenberg','(756) 5901366'),(46,46,'6','8','40','84 Truax Drive','Bruen-Ernser','(648) 6386471'),(47,47,'8','15','50','23 Sherman Park','Pacocha, Dicki and Nader','(990) 4151537'),(48,48,'31','4','36','4 Brickson Park Pass','DuBuque, Runolfsdottir and Strosin','(519) 7560474'),(49,49,'6','27','37','1 Cherokee Point','Skiles-Klein','(175) 5855872'),(50,50,'1','43','25','814 Rieder Lane','DuBuque, Jacobs and Spencer','(996) 3815453'),(51,51,'36','16','39','3516 Karstens Center','Kulas, Beer and Simonis','(222) 4827195'),(52,52,'31','25','23','02 Melvin Center','Ortiz-Romaguera','(456) 6363130'),(53,53,'38','10','47','06 Bluejay Lane','Zemlak-Spencer','(742) 4312915'),(54,54,'35','42','34','0095 Michigan Plaza','Gutmann-Kris','(552) 3442998'),(55,55,'20','10','24','3400 Reinke Avenue','Reynolds, Parker and Swaniawski','(123) 4224104'),(56,56,'8','43','36','12509 Memorial Pass','Hessel, Orn and Weimann','(876) 1692982'),(57,57,'15','35','49','58 Buhler Park','Quigley and Sons','(399) 5821816'),(58,58,'41','36','25','52079 Holmberg Junction','Heller-Kutch','(315) 5912506'),(59,59,'42','1','30','54226 Prairie Rose Parkway','Kovacek Group','(699) 8738039'),(60,60,'10','45','4','8114 Sullivan Drive','Ziemann-Homenick','(549) 2845216'),(61,61,'44','46','10','2514 Hovde Junction','Klocko Inc','(757) 9544661'),(62,62,'28','7','29','0279 Commercial Park','Ernser Inc','(462) 5885660'),(63,63,'47','15','50','67788 Macpherson Center','D\'Amore Group','(971) 7166885'),(64,64,'13','41','16','425 Amoth Point','Brekke, Ledner and Wisoky','(269) 7533050'),(65,65,'31','3','2','725 Transport Trail','Bailey-Reinger','(224) 3039886'),(66,66,'13','46','43','9407 Lawn Lane','Quitzon LLC','(369) 5757267'),(67,67,'41','6','40','56691 Kensington Crossing','VonRueden, Stiedemann and Hagenes','(433) 2989776'),(68,68,'4','4','40','0411 Quincy Crossing','Deckow-Fay','(399) 1673690'),(69,69,'24','39','6','48707 Vermont Pass','Champlin LLC','(358) 1339793'),(70,70,'33','46','1','8 Trailsway Park','Kris and Sons','(101) 5233322'),(71,71,'35','15','32','92696 Judy Junction','Rohan Group','(272) 3459241'),(72,72,'1','44','1','8519 Darwin Plaza','Adams, Dickens and Fritsch','(307) 4630023'),(73,73,'33','25','15','1396 Bunting Terrace','Welch-Okuneva','(128) 6153651'),(74,74,'6','43','3','39502 Dakota Court','Wisoky Inc','(506) 5118971'),(75,75,'23','34','32','70575 Autumn Leaf Park','Feil-Lynch','(691) 6464413'),(76,76,'25','4','2','7 Gina Lane','Feil and Sons','(759) 9113912'),(77,77,'42','12','39','81 Sloan Point','Olson and Sons','(147) 5673458'),(78,78,'16','8','50','905 Welch Hill','Carroll Group','(534) 7771797'),(79,79,'8','31','29','20 Maryland Drive','Kessler, Toy and Heller','(823) 6870857'),(80,80,'8','37','35','7673 Maple Terrace','Stanton, Kling and Stehr','(387) 5680603'),(81,81,'28','28','4','76170 Manley Alley','Stokes and Sons','(989) 3559185'),(82,82,'35','39','49','20060 Sunnyside Place','Koepp-Monahan','(604) 1225247'),(83,83,'31','7','11','7453 Milwaukee Place','Weimann-Murray','(192) 8693573'),(84,84,'37','28','4','9926 Surrey Alley','Barrows-Hintz','(690) 1833688'),(85,85,'40','14','33','7151 Green Drive','Jaskolski-Oberbrunner','(141) 6193927'),(86,86,'25','32','2','23334 Schmedeman Court','Wisoky, Windler and Hammes','(868) 1151699'),(87,87,'37','26','20','6032 Kingsford Avenue','Cassin-Klocko','(524) 1170000'),(88,88,'25','20','6','56404 Eagle Crest Avenue','Mante LLC','(153) 8894477'),(89,89,'13','22','47','83 Barby Crossing','Hammes-Olson','(739) 8414844'),(90,90,'32','44','37','83572 Dryden Circle','Oberbrunner-Veum','(100) 4938163'),(91,91,'10','25','28','7930 Melvin Lane','Daugherty, King and Kemmer','(714) 9159302'),(92,92,'39','30','20','79 Schlimgen Avenue','Reichel-Beier','(811) 7963075'),(93,93,'41','35','15','2617 Gateway Alley','Streich Group','(255) 6018775'),(94,94,'28','39','45','1426 Corry Center','Hyatt-Gutmann','(182) 3018615'),(95,95,'16','23','11','03701 Mallard Avenue','Schoen, Johnston and Barrows','(323) 1825598'),(96,96,'31','44','48','6817 Pleasure Street','Funk, Romaguera and Cummings','(989) 7786099'),(97,97,'42','40','4','1 Red Cloud Plaza','Walsh Group','(580) 2693928'),(98,98,'43','29','48','1257 Old Gate Center','Mertz, Roberts and Bode','(345) 3276666'),(99,99,'15','40','7','380 Crowley Point','McClure-Daniel','(431) 9806090'),(100,100,'12','28','1','46233 Little Fleur Lane','Johnson-Pfannerstill','(574) 5076865');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertise` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT 'link ảnh quảng cáo',
  `image` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='bảng quảng cáo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertise`
--

LOCK TABLES `advertise` WRITE;
/*!40000 ALTER TABLE `advertise` DISABLE KEYS */;
INSERT INTO `advertise` VALUES (1,'AirMedia Group Inc','http://dummyimage.com/201x111.png/dddddd/000000'),(2,'Atmos Energy Corporation','http://dummyimage.com/117x219.png/5fa2dd/ffffff'),(3,'PowerShares DWA NASDAQ Momentum Portfolio','http://dummyimage.com/187x143.png/ff4444/ffffff'),(4,'Endurance International Group Holdings, Inc.','http://dummyimage.com/231x193.png/dddddd/000000'),(5,'General Electric Company','http://dummyimage.com/179x123.png/cc0000/ffffff');
/*!40000 ALTER TABLE `advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Tazz','http://dummyimage.com/197x118.png/ff4444/ffffff'),(2,'Trilith','http://dummyimage.com/180x174.png/5fa2dd/ffffff'),(3,'Plajo','http://dummyimage.com/132x140.png/ff4444/ffffff'),(4,'Trudeo','http://dummyimage.com/140x184.png/5fa2dd/ffffff'),(5,'Agivu','http://dummyimage.com/167x243.png/cc0000/ffffff');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int unsigned NOT NULL,
  `id_user` int NOT NULL,
  `id_product` int NOT NULL,
  `content` longtext NOT NULL,
  `like` int DEFAULT NULL COMMENT 'số lượng like comment này',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,1,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',126),(2,2,2,'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',79),(3,3,3,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',1),(4,4,4,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',86),(5,5,5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.',189),(6,6,6,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',74),(7,7,7,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',158),(8,8,8,'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',29),(9,9,9,'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.',49),(10,10,10,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',52),(11,11,11,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',127),(12,12,12,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',58),(13,13,13,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',146),(14,14,14,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',137),(15,15,15,'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',58),(16,16,16,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',125),(17,17,17,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',88),(18,18,18,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.',156),(19,19,19,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',196),(20,20,20,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',62);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL,
  `id_user` int NOT NULL,
  `list_product` mediumtext NOT NULL COMMENT 'danh sách sản phẩm và số lượng sản phẩm trong order (lưu dạng JSON)\nex:''{"id":1,"quantity":2}''',
  `total_money` double DEFAULT NULL,
  `id_address` int NOT NULL,
  `shiping_method` int NOT NULL,
  `payment_method` int NOT NULL,
  `status` int DEFAULT NULL COMMENT 'trạng thái đơn hàng: \n1: chờ xác nhận\n2 chờ lấy hàng\n3 đang giao\n4: đã giao',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'[{},{}]',22.1,1,3,3,2),(2,2,'[{}]',79.5,2,1,3,3),(3,3,'[{},{},{}]',28.1,3,2,1,1),(4,4,'[{},{}]',22.5,4,2,1,5),(5,5,'[{}]',22.2,5,2,3,5),(6,6,'[{},{},{}]',59.5,6,1,1,4),(7,7,'[{},{}]',8.2,7,1,3,3),(8,8,'[{}]',34.8,8,2,2,4),(9,9,'[{},{}]',94.9,9,3,1,4),(10,10,'[{}]',58.9,10,2,2,5),(11,11,'[{},{},{}]',57.1,11,2,2,2),(12,12,'[{},{},{}]',25.1,12,1,3,4),(13,13,'[{},{}]',8.7,13,2,3,5),(14,14,'[{},{}]',82.7,14,1,2,4),(15,15,'[{}]',53.6,15,1,1,1),(16,16,'[{},{}]',78.9,16,2,1,2),(17,17,'[{},{}]',27.8,17,1,2,2),(18,18,'[{},{}]',96.2,18,2,3,3),(19,19,'[{}]',32.5,19,1,3,3),(20,20,'[{},{}]',30.7,20,2,2,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL,
  `images` longtext,
  `price` int NOT NULL,
  `description` longtext,
  `name` varchar(100) NOT NULL,
  `number_of_likes` int DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `flash_sale_time` datetime DEFAULT NULL,
  `flash_sale_percent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='bảng sản phẩm công nghệ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'http://dummyimage.com/239x170.png/dddddd/000000',59,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Park Dyhouse',771,0.7,2800,'2021-10-22 00:00:00',44),(2,'http://dummyimage.com/232x180.png/5fa2dd/ffffff',40,'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Waneta Tweedy',12,1,2593,'2021-05-09 00:00:00',74),(3,'http://dummyimage.com/118x194.png/ff4444/ffffff',90,'','Anna-diana Aronovitz',1106,2.9,1828,'2022-01-21 00:00:00',16),(4,'http://dummyimage.com/188x203.png/cc0000/ffffff',88,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Morie Ordidge',1500,1.6,396,'2021-09-02 00:00:00',46),(5,'http://dummyimage.com/174x170.png/dddddd/000000',80,'','Terrie Byrd',922,1,1307,'2021-11-13 00:00:00',68),(6,'http://dummyimage.com/107x135.png/dddddd/000000',72,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Alfie Sutherington',1997,2,1181,'2022-01-31 00:00:00',52),(7,'http://dummyimage.com/103x197.png/ff4444/ffffff',71,'','Kessia Yemm',1883,1,2261,'2021-05-26 00:00:00',89),(8,'http://dummyimage.com/181x126.png/cc0000/ffffff',33,'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Perice McPeake',1205,1.5,2152,'2021-06-24 00:00:00',29),(9,'http://dummyimage.com/214x199.png/5fa2dd/ffffff',50,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Gratia Voisey',989,0.8,2916,'2021-08-18 00:00:00',89),(10,'http://dummyimage.com/108x187.png/dddddd/000000',11,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Teddy Lindemann',1334,2.4,453,'2022-03-27 00:00:00',16),(11,'http://dummyimage.com/116x167.png/ff4444/ffffff',70,'','Aleda Weson',1840,0.2,2893,'2021-06-19 00:00:00',12),(12,'http://dummyimage.com/116x196.png/cc0000/ffffff',47,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Hershel Thornton-Dewhirst',154,3.5,2376,'2021-05-22 00:00:00',2),(13,'http://dummyimage.com/217x145.png/5fa2dd/ffffff',85,'','Simon Drowsfield',1080,0.9,549,'2021-06-10 00:00:00',26),(14,'http://dummyimage.com/101x122.png/dddddd/000000',69,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Kyle Tregidgo',1463,2,854,'2021-08-22 00:00:00',69),(15,'http://dummyimage.com/100x123.png/dddddd/000000',84,'','Launce Peterffy',950,0.1,1527,'2022-04-28 00:00:00',61),(16,'http://dummyimage.com/172x233.png/dddddd/000000',96,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Kiel Buist',1125,4.8,2104,'2021-05-17 00:00:00',88),(17,'http://dummyimage.com/193x140.png/cc0000/ffffff',34,'','Dean Ropkins',362,3.2,386,'2022-03-05 00:00:00',2),(18,'http://dummyimage.com/137x162.png/dddddd/000000',2,'','Berne Saill',446,4.6,955,'2021-06-10 00:00:00',88),(19,'http://dummyimage.com/205x193.png/ff4444/ffffff',60,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Anderson Astbery',1565,4.1,515,'2022-01-21 00:00:00',21),(20,'http://dummyimage.com/232x180.png/5fa2dd/ffffff',40,'Quisque id justo sit amet s','Son Tung MTP',12,1,2593,'2021-05-09 00:00:00',74);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int unsigned NOT NULL,
  `id_product` int DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,1,3),(2,2,4),(3,3,4),(4,4,5),(5,5,2),(6,6,5),(7,7,2),(8,8,1),(9,9,1),(10,10,5),(11,11,5),(12,12,3),(13,13,4),(14,14,5),(15,15,2),(16,16,1),(17,17,3),(18,18,5),(19,19,1),(20,20,5);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL,
  `password` varchar(45) NOT NULL,
  `avatar` longtext COMMENT 'Link ảnh avatar',
  `background` longtext COMMENT 'Link ảnh bìa',
  `full_name` varchar(45) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='bảng user ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'8Dnfhhq3Q9ze',NULL,NULL,'Orelia Wilber','(474) 4551200','2021-05-11 00:00:00',2,'owilber0@cbsnews.com'),(2,'iYeBKAjcTNm',NULL,NULL,'Gwendolyn Blennerhassett','(232) 2466574','2022-02-07 00:00:00',3,'gblennerhassett1@examiner.com'),(3,'X0g32HHCZ5',NULL,NULL,'Hetty Villiers','(792) 5381411','2021-07-02 00:00:00',1,'hvilliers2@hc360.com'),(4,'jc3cBEg',NULL,NULL,'Shelia Godman','(121) 2054136','2022-03-11 00:00:00',1,'sgodman3@intel.com'),(5,'3BCfMw',NULL,NULL,'Marsh Claridge','(253) 3623529','2022-02-06 00:00:00',3,'mclaridge4@army.mil'),(6,'weFO3VwDZ2Eq',NULL,NULL,'Halie Trillo','(237) 3107170','2021-09-26 00:00:00',1,'htrillo5@samsung.com'),(7,'mh165N',NULL,NULL,'Franny Lettson','(434) 9305913','2022-03-29 00:00:00',1,'flettson6@guardian.co.uk'),(8,'A7morHGyzxRv',NULL,NULL,'Rickey Greedy','(740) 5779593','2021-10-24 00:00:00',2,'rgreedy7@weibo.com'),(9,'lrMwHKG',NULL,NULL,'Olly Schoenrock','(769) 2360777','2021-09-26 00:00:00',2,'oschoenrock8@chron.com'),(10,'ux5Yw6307bry',NULL,NULL,'Homere Engelmann','(348) 2184224','2022-03-26 00:00:00',3,'hengelmann9@youtu.be'),(11,'bzizyZr1G',NULL,NULL,'Alwyn Brisseau','(345) 8378420','2022-03-10 00:00:00',1,'abrisseaua@miitbeian.gov.cn'),(12,'rItLItx0K',NULL,NULL,'Neal Iredale','(894) 8240623','2021-06-17 00:00:00',1,'niredaleb@timesonline.co.uk'),(13,'2NYk02J',NULL,NULL,'Freeland Nye','(801) 6226948','2022-03-22 00:00:00',2,'fnyec@harvard.edu'),(14,'g4UbjFp0t',NULL,NULL,'Rosmunda Good','(991) 1962114','2021-12-07 00:00:00',1,'rgoodd@cyberchimps.com'),(15,'1sOiuLsB9',NULL,NULL,'Guillermo Dupre','(128) 7542443','2021-08-31 00:00:00',2,'gdupree@yellowbook.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-08 10:29:14
