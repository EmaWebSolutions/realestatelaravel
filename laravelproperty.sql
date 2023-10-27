-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: laravelproperty
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.20.04.1

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
-- Table structure for table `enquire`
--

DROP TABLE IF EXISTS `enquire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquire` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `agent_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquire`
--

LOCK TABLES `enquire` WRITE;
/*!40000 ALTER TABLE `enquire` DISABLE KEYS */;
INSERT INTO `enquire` VALUES (1,4,1,'John Doe','johndeo@gmail.com','1234567891','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','2023-10-24 14:04:09','2023-10-24 14:04:09'),(2,12,3,'ima','ima@gmail.com','025839575252','i want this property','2023-10-25 14:30:11','2023-10-25 14:30:11');
/*!40000 ALTER TABLE `enquire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(500) NOT NULL,
  `page_slug` varchar(500) NOT NULL,
  `page_content` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'About Us','about-us','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \\\'Content here, content here\\\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \\\'lorem ipsum\\\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>',1,'2023-10-24 14:04:10','2023-10-24 14:04:10'),(2,'Terms Of Use','terms-of-use','<p><strong>Use of this site is provided by Demos subject to the following Terms and Conditions:</strong><br></p>\r\n<ol>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">Your use constitutes acceptance of these Terms and Conditions as at the date of your first use of the site.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">Demos reserves the rights to change these Terms and Conditions at any time by posting changes online. Your continued use of this site after changes are posted constitutes your acceptance of this agreement as modified.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">You agree to use this site only for lawful purposes, and in a manner which does not infringe the rights, or restrict, or inhibit the use and enjoyment of the site by any third party.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">This site and the information, names, images, pictures, logos regarding or relating to Demos are provided “as is” without any representation or endorsement made and without warranty of any kind whether express or implied. In no event will Demos be liable for any damages including, without limitation, indirect or consequential damages, or any damages whatsoever arising from the use or in connection with such use or loss of use of the site, whether in contract or in negligence.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">Demos does not warrant that the functions contained in the material contained in this site will be uninterrupted or error free, that defects will be corrected, or that this site or the server that makes it available are free of viruses or bugs or represents the full functionality, accuracy and reliability of the materials.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">Copyright restrictions: please refer to our Creative Commons license terms governing the use of material on this site.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">Demos takes no responsibility for the content of external Internet Sites.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">Any communication or material that you transmit to, or post on, any public area of the site including any data, questions, comments, suggestions, or the like, is, and will be treated as, non-confidential and non-proprietary information.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">If there is any conflict between these Terms and Conditions and rules and/or specific terms of use appearing on this site relating to specific material then the latter shall prevail.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">These terms and conditions shall be governed and construed in accordance with the laws of England and Wales. Any disputes shall be subject to the exclusive jurisdiction of the Courts of England and Wales.</span></li>\r\n<li><span style=\\\"color: rgb(58, 72, 81); font-family: b10, &quot;times new roman&quot;, Times, serif; font-size: 18px;\\\">If these Terms and Conditions are not accepted in full, the use of this site must be terminated immediately.<br></span>&nbsp;</li>\r\n</ol>',1,'2023-10-24 14:04:10','2023-10-24 14:04:10'),(3,'Privacy Policy','privacy-policy','<h1>Privacy Policy of&nbsp;<span class=\\\"highlight preview_company_name\\\">Company Name</span></h1>\r\n<p><span class=\\\"highlight preview_company_name\\\">Company Name</span>&nbsp;operates the&nbsp;<span class=\\\"highlight preview_website_name\\\">Website Name</span>&nbsp;website, which provides the SERVICE.</p>\r\n<p>This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the&nbsp;<span class=\\\"highlight preview_website_name\\\">Website Name</span>&nbsp;website.</p>\r\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at&nbsp;<span class=\\\"highlight preview_website_url\\\">Website URL</span>, unless otherwise defined in this Privacy Policy.</p>\r\n<h2>Information Collection and Use</h2>\r\n<p>For a better experience while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.</p>\r\n<h2>Log Data</h2>\r\n<p>We want to inform you that whenever you visit our Service, we collect information that your browser sends to us that is called Log Data. This Log Data may include information such as your computer\\\'s Internet Protocol (“IP”) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.</p>\r\n<h2>Cookies</h2>\r\n<p>Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer\\\'s hard drive.</p>\r\n<p>Our website uses these “cookies” to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service.</p>\r\n<h2>Service Providers</h2>\r\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\r\n<ul>\r\n<li>To facilitate our Service;</li>\r\n<li>To provide the Service on our behalf;</li>\r\n<li>To perform Service-related services; or</li>\r\n<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n<p>We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n<h2>Security</h2>\r\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\r\n<h2>Links to Other Sites</h2>\r\n<p>Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n<p>Children\\\'s Privacy</p>\r\n<p>Our Services do not address anyone under the age of 13. We do not knowingly collect personal identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\r\n<h2>Changes to This Privacy Policy</h2>\r\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\r\n<h2>Contact Us</h2>\r\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>',1,'2023-10-24 14:04:10','2023-10-24 14:04:10'),(4,'FAQ','faq','<p>Coming Soon</p>',1,'2023-10-24 14:04:10','2023-10-24 14:04:10');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `partner_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'Squareroom','#','squareroom-8be2fb52b61cffd275c182409590a5de','2023-10-24 14:04:11','2023-10-24 14:04:11'),(2,'Bluehost','#','bluehost-1e6d0ac3fa9b9d6ba685a41baf498c5b','2023-10-24 14:04:11','2023-10-24 14:04:11'),(3,'Square','#','square-dcb2450728f965b31a3d5619772fe59a','2023-10-24 14:04:11','2023-10-24 14:04:11'),(4,'Erikaschesonis1','#','erikaschesonis1-617150e2475e77fbc86477f26816ed62','2023-10-24 14:04:11','2023-10-24 14:04:11'),(5,'Cube','#','cube-cfe98eef41393ad457fa78c8f26fd843','2023-10-24 14:04:11','2023-10-24 14:04:11'),(6,'Altria1','#','altria1-e1a183cc2597e9832fb5f891651329ea','2023-10-24 14:04:11','2023-10-24 14:04:11'),(7,'National Geographic','#','national-geographic-249e3571728581a15f66b178ffbbef72','2023-10-24 14:04:11','2023-10-24 14:04:11'),(8,'Modernart','#','modernart-443d8f45d4ed7a6637c35c256e2a326e','2023-10-24 14:04:11','2023-10-24 14:04:11');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `featured_property` int NOT NULL DEFAULT '0',
  `property_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `property_slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `property_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `property_purpose` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `map_latitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `map_longitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bedrooms` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `garage` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `land_area` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `build_area` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nearest_school_km` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nearest_hospital_km` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nearest_bus_stand_km` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nearest_railway_km` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nearest_airport_km` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nearest_mall_km` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `property_features` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `featured_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `floor_plan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `video_code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `active_plan_id` int NOT NULL DEFAULT '0',
  `property_exp_date` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (3,1,0,'Beach Life','beach-life','1','Sale','30,000','778 Country Place, Panama City, FL, USA','30.2479664','-82.71012559999997','3','4','1','890','850','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\\\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\\\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room,Alarm','beach-life-3f6ebf8aef0f352720bc0cb534d878b6','beach-life-ac4c0c5d6b6b20ce69643ff104689db0','<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&amp;showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',3,1607193000,0,'2018-02-08 18:13:21','2023-10-25 13:14:37'),(4,1,1,'Land In Central Park','land-in-central-park','4','Sale','50,000','1125 Park Avenue, NY, New York, USA','40.7828992','-73.9547397','4','+5',NULL,'560','500','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room,Alarm','land-in-central-park-a5cd2dac42b971461f578a643a762809','land-in-central-park-f987a6070b87952d5216f4c9dd1d76b2','<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',3,1608834600,0,'2018-02-08 18:36:01','2023-10-25 13:14:37'),(5,1,1,'The Urban Life','the-urban-life','4','Rent','1,250','45 Denver, Fountain, CO, USA','38.6730273','-104.70352359999998','2','3','1','650','500','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\\\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\\\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room','the-urban-life-eb0f08c416d76724e4d5530f736c09f4',NULL,'<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&amp;showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',3,1609353000,0,'2018-02-08 18:39:55','2023-10-25 13:14:37'),(6,2,0,'Divine Villas','divine-villas','5','Sale','100,000','The Paseo, Kansas City, MO, USA','39.0433695','-94.56805939999998','+5','+5',NULL,'990','850','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \\\'Content here, content here\\\', making it look like readable English.',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room,Alarm','divine-villas-1e90713e6a67baa11baa29e7aba291a5','divine-villas-ba8ad81d576f0dc2f54732c1d37e09f3','<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&amp;showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',2,1577644200,0,'2018-02-08 19:19:01','2023-10-25 13:14:37'),(8,2,0,'Mahagun My Woods','mahagun-my-woods','7','Rent','1,500','Fort Collins, Colorado 80523, USA','40.5702905','-105.09016250000002','2','4','1','780','650','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room,Alarm','mahagun-my-woods-d13f6aa1117f0a36d3478a998f9925b7','mahagun-my-woods-8f5357b3cb6f50a7d839fc05fa77347e','<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',1,1607040000,0,'2018-02-08 20:00:37','2023-10-25 13:14:38'),(9,2,0,'Celebrity Serenity','celebrity-serenity','4','Sale','60,000','56 Las Vegas Expressway, Las Vegas, NV, USA','36.1042555','-115.22388419999999','2','4','2','780','690','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','0.2 KM','1 KM','3 KM','5 KM','4 KM','2 KM','Gym,Front yard,Pool,Roof Deck,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room,Alarm','celebrity-serenity-dbb422937d7ff56e049d61da730b3e11','celebrity-serenity-aafb1ce4fed408a5843cf431a0bbdcb1','<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',3,1718928000,1,'2018-02-08 20:05:43','2023-10-25 13:26:08'),(10,3,1,'Imperia Mirage','imperia-mirage','2','Rent','30,000','89 Oklahoma City Boulevard, Oklahoma City, OK, USA','35.4653916','-97.5325077','2','4',NULL,'550','500','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \\\'Content here, content here\\\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \\\'lorem ipsum\\\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room,Alarm','imperia-mirage-88a0f49bc167de71dbe981b10dd26271','imperia-mirage-2e5996f9dfd1f117c1b60a9c57e6ced9','<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',3,1607126400,0,'2018-02-08 20:24:59','2023-10-25 13:22:38'),(11,3,0,'Fortune Villa','fortune-villa','5','Sale','120,000','Fortune Villa Drive, Clinton, IN, USA','39.67585500000001','-87.41085099999998','+5','+5','3','890','750','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','1 KM','1 KM','1 KM','1 KM','1 KM','1 KM','Gym,Front yard,Pool,Roof Deck,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room,Alarm','fortune-villa-018dd1e07a2de4a08e6612341bf2323e','fortune-villa-14b7500e057096627b43790de867406b','<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',1,1595980800,0,'2018-02-08 21:03:46','2023-10-25 13:25:53'),(12,3,1,'Hill View Homes','hill-view-homes','7','Sale','55,000','Albuquerque, NM, USA','35.0853336','-106.60555340000002','3','4','1','980','900','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony Gym,Balcony ,Air Conditioning,Swimming Pool,Central Heating,Laundry Room,Alarm','hill-view-homes-908b9c4c6b4ddb779aa73654b03acfed','hill-view-homes-ab8d69582f285942fdd5ccd29a678476','<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/nmswM1EH1_s?rel=0&showinfo=0\\\" frameborder=\\\"0\\\" allow=\\\"autoplay; encrypted-media\\\" allowfullscreen></iframe>',1,1745452800,1,'2018-02-08 21:22:29','2023-10-25 13:24:59'),(14,1,0,'goood','goood','2','Rent','500','gooood 10',NULL,NULL,'+5','2','2','500','200','<p>goooood</p>',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony Gym,Balcony','goood-8cb9014a886acf4a5e33c252fa396512',NULL,'',1,1706140800,1,'2023-10-25 12:55:21','2023-10-25 13:15:00'),(15,6,0,'gooood','gooood','2','Sale','500','goooood10',NULL,NULL,'4','4','4','500','500','<p>good</p>',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony','gooood-6c163075ff0970788e913efe05d24369',NULL,'',1,1698883200,1,'2023-10-25 19:41:11','2023-10-26 08:55:52'),(16,6,0,'test','test','4','Sale','2,580','test 10',NULL,NULL,'2','2','1','200','200','<p>goooood it is</p>',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony','test-5dc2596e6bd8d9a511a4af7e6d1fef81',NULL,'',1,1698883200,1,'2023-10-26 09:00:41','2023-10-26 09:57:28'),(17,6,0,'test','test','4','Sale','2,580','test 10',NULL,NULL,'2','2','1','200','200','<p>goooood it is</p>',NULL,NULL,NULL,NULL,NULL,NULL,'Gym,Front yard,Pool,Roof Deck,Balcony','test-f45ab3a13b96528881ffe7a63b547e79',NULL,'',1,1698883200,1,'2023-10-26 09:09:09','2023-10-26 09:11:13');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_gallery`
--

DROP TABLE IF EXISTS `property_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_gallery` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_gallery`
--

LOCK TABLES `property_gallery` WRITE;
/*!40000 ALTER TABLE `property_gallery` DISABLE KEYS */;
INSERT INTO `property_gallery` VALUES (20,3,'beach-life_9447-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(21,3,'beach-life_7998-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(22,3,'beach-life_5920-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(23,3,'beach-life_7748-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(24,4,'land-in-central-park_6372-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(25,4,'land-in-central-park_8777-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(26,4,'land-in-central-park_7417-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(27,4,'land-in-central-park_2453-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(28,5,'the-urban-life_4493-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(29,5,'the-urban-life_3972-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(30,5,'the-urban-life_6132-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(31,5,'the-urban-life_9970-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(32,6,'divine-villas_1872-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(33,6,'divine-villas_6139-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(34,6,'divine-villas_4169-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(38,8,'mahagun-my-woods_4023-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(39,8,'mahagun-my-woods_4916-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(40,8,'mahagun-my-woods_7210-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(41,8,'mahagun-my-woods_4823-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(42,9,'celebrity-serenity_6401-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(43,9,'celebrity-serenity_6819-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(44,9,'celebrity-serenity_7958-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(45,9,'celebrity-serenity_5097-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(46,10,'imperia-mirage_9773-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(47,10,'imperia-mirage_7782-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(48,10,'imperia-mirage_8108-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(51,11,'fortune-villa_7140-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(52,11,'fortune-villa_8181-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(53,11,'fortune-villa_8859-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(54,12,'hill-view-homes_7777-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(55,12,'hill-view-homes_8748-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(56,12,'hill-view-homes_441-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12'),(57,12,'hill-view-homes_6851-b.jpg','2023-10-24 14:04:12','2023-10-24 14:04:12');
/*!40000 ALTER TABLE `property_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_types`
--

DROP TABLE IF EXISTS `property_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `types` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_types`
--

LOCK TABLES `property_types` WRITE;
/*!40000 ALTER TABLE `property_types` DISABLE KEYS */;
INSERT INTO `property_types` VALUES (1,'Land','land','2023-10-24 14:04:13','2023-10-24 14:04:13'),(2,'Apartment','apartment','2023-10-24 14:04:13','2023-10-24 14:04:13'),(3,'Builder Floor  Actions ','builder-flooractions','2023-10-24 14:04:13','2023-10-24 14:04:13'),(4,'Commercial','commercial','2023-10-24 14:04:13','2023-10-24 14:04:13'),(5,'House Villa','house-villa','2023-10-24 14:04:13','2023-10-24 14:04:13'),(7,'Individual House','individual-house','2023-10-24 14:04:13','2023-10-24 14:04:13');
/*!40000 ALTER TABLE `property_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `time_zone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'UTC',
  `site_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `site_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `site_logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `site_favicon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `google_map_key` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `recaptcha` int NOT NULL DEFAULT '0',
  `recaptcha_secret_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `recaptcha_site_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `site_description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `site_keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `site_header_code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `site_footer_code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `site_copyright` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `footer_widget1_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `footer_widget1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `footer_widget2_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `footer_widget2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `footer_widget3_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `footer_widget3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `title_bg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `all_properties_layout` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `map_latitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `map_longitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `home_properties_layout` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `featured_properties_layout` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sale_properties_layout` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rent_properties_layout` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pagination_limit` int NOT NULL DEFAULT '12',
  `addthis_share_code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `disqus_comment_code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `social_facebook` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `social_twitter` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `social_linkedin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `social_instagram` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_lat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_long` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_us_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_us_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_us_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_us_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `terms_conditions_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `terms_conditions_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `privacy_policy_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `privacy_policy_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `currency_sign` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '$',
  `currency_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tax_percentage` float(11,2) NOT NULL,
  `paypal_payment_on_off` int NOT NULL DEFAULT '1',
  `paypal_mode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'sandbox',
  `paypal_client_id` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `paypal_secret` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `stripe_payment_on_off` int NOT NULL DEFAULT '1',
  `stripe_secret_key` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `razorpay_payment_on_off` int DEFAULT '0',
  `razorpay_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `razorpay_secret` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `paystack_payment_on_off` int DEFAULT '0',
  `paystack_secret_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `featured_property_price` float(11,2) DEFAULT NULL,
  `bank_payment_details` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `invoice_company` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Company Name',
  `invoice_address` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Suite 1C1, 25-33 Allen St',
  `smtp_host` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `smtp_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `smtp_encryption` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gdpr_cookie_title` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gdpr_cookie_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `gdpr_cookie_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Asia/Kolkata','EmaBroker- Real Estate Pro','info@example.com','logo.png','favicon.png',NULL,0,NULL,NULL,'Easy Real Estates provide you with a quick and easy way to create a real estates site portal.',NULL,'','','Copyright © 2018 Divine Home - Real Estate Pro. All rights reserved.','About Us','Vel fermentum ipsum. Suspendisse quis molestie odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque aliquet a metus in aliquet. Praesent ut turpis posuere, commodo odio id, ornare tortor','Follow Us','<img src=\\\"http://scriptscode7.com/follow.jpg\\\" width=\\\"325\\\"/>','Get In Touch','<ul class=\\\"contact-info\\\">\r\n            <li><i class=\\\"fa fa-map-marker\\\"></i>Real estate script.\r\n9.5 Main Street, CA,USA</li>\r\n            <li class=\\\"phone\\\"><i class=\\\"fa fa-phone\\\"></i>+62-3456-78910</li>\r\n            <li><i class=\\\"fa fa-envelope\\\"></i>info@domain.com</li>\r\n </ul>','title_bg.jpg','grid','37.090240','-95.712891','slider','grid_side','grid','grid_side',9,'<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5942c509e2db8e32\"></script>\r\n<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<div class=\"addthis_inline_share_toolbox\"></div>','<div id=\"disqus_thread\"></div>\r\n<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://divine-home-pro.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>\r\n<noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n<script id=\"dsq-count-scr\" src=\"//divine-home-pro.disqus.com/count.js\" async></script>','#','#','#','#','38.493744','-122.456286','Contact Us','info@gmail.com','+62-3456-78910','Real estate script. 9.5 Main Street, CA,USA','','','','','$','USD',12.00,1,'sandbox','AQrM5K1J9eFxuO2hSAHrYghf3hQ38q7AHvB5uEgiLpuT8Bw6VJYeL_6uMISPeUKxz3cY2lwBiyUWD544','EFMzT97tk3Sw_-90MphTlU8B_SB9E2ZFA0W_SYPz1tPbJks0fjh3wmlWyQuC2WeDrrHxhfhf02gBm7dt',1,'sk_test_51IT6YDGK6GRnWLWIoQfPpbknJtSThsbEAYdQIDtNvS7caEEDPFXQL0CAplQdTBX86rVgJBwunItGiJe3YP2tVWOm00SKX2uoVz',0,NULL,NULL,0,NULL,9.99,'<div><span style=\\\"font-weight: bold;\\\">Bank payment details</span></div><div><br></div><div>ICICI: 38082 01288916</div><div>SWIFT: ICICINBBTSY</div><div><br></div><div>Featured property price: 10 USD</div><div><br></div>','Company Name','Suite 1C1, 25-33 Allen St','','','','','TLS','This website is using cookies','We use technical and analytics cookies to ensure that we give you the best experience on our website.','#','2023-10-24 14:04:14','2023-10-26 14:13:49');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slider_text1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slider_text2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'Slider 1','Vacation Rental','in San Francisco','slider-1-9927f36e3de35faaf4cd1ec9c8ca2552','2023-10-24 14:04:16','2023-10-26 16:22:09'),(2,'Slider 1','Luxury Apartment','in New York','slider-1-4ab2783b7794e28215ce19fcc0bf7a87','2023-10-24 14:04:16','2023-10-26 16:22:32'),(3,'Slider 3','Family House','in Miami','slider-3-8afcf4bfa51a38520bc5b33e710c5e4a','2023-10-24 14:04:16','2023-10-26 16:22:52');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriber` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber`
--

LOCK TABLES `subscriber` WRITE;
/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` VALUES (1,'admin@gmail.com','::1','2023-10-24 14:04:17','2023-10-24 14:04:17'),(2,'admin@gmail.com','::1','2023-10-24 14:04:17','2023-10-24 14:04:17');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_plan`
--

DROP TABLE IF EXISTS `subscription_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) NOT NULL,
  `plan_days` int NOT NULL,
  `plan_duration` varchar(255) NOT NULL,
  `plan_duration_type` varchar(255) NOT NULL,
  `plan_price` decimal(11,2) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plan`
--

LOCK TABLES `subscription_plan` WRITE;
/*!40000 ALTER TABLE `subscription_plan` DISABLE KEYS */;
INSERT INTO `subscription_plan` VALUES (1,'Basic Plan',7,'7','1',5.00,1,'2023-10-24 14:04:18','2023-10-25 20:28:45'),(2,'Premium Plan',30,'1','30',10.00,1,'2023-10-24 14:04:18','2023-10-24 14:04:18'),(3,'Platinum Plan',365,'1','365',49.00,1,'2023-10-24 14:04:18','2023-10-24 14:04:18');
/*!40000 ALTER TABLE `subscription_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `testimonial` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `t_user_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'John Doe','Lawyer','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi architecto dolor, earum eum illo nostrum possimus quae, quasi quod ratione recusandae repudiandae soluta vero? Dicta dolor est et exercitationem illo! Deleniti dolorem est facere neque pariatur, quaerat recusandae ut? Alias atque cum dicta hic ipsum laboriosam, modi numquam sed vero?','john-doe-2606fbaedca2a141aadec6dd0f9f160a','2023-10-24 14:04:19','2023-10-24 14:04:19'),(2,'Chris Brown','Accountant','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi architecto dolor, earum eum illo nostrum possimus quae, quasi quod ratione recusandae repudiandae soluta vero? Dicta dolor est et exercitationem illo! Deleniti dolorem est facere neque pariatur, quaerat recusandae ut? Alias atque cum dicta hic ipsum laboriosam, modi numquam sed vero?','chris-brown-9db2c9687965bb31c1d03c79e99aa2fc','2023-10-24 14:04:19','2023-10-24 14:04:19'),(3,'Harry Cool','Photographer','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi architecto dolor, earum eum illo nostrum possimus quae, quasi quod ratione recusandae repudiandae soluta vero? Dicta dolor est et exercitationem illo! Deleniti dolorem est facere neque pariatur, quaerat recusandae ut? Alias atque cum dicta hic ipsum laboriosam, modi numquam sed vero?','harry-cool-e2797cb6a879efc1af1a2068586c8cca','2023-10-24 14:04:19','2023-10-24 14:04:19'),(4,'Jane Doe','Nurse','Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis','jane-doe-2a29b9a9b0a26a7d39e8d6fb247eef69','2023-10-24 14:04:19','2023-10-24 14:04:19'),(5,'Cen Lung','Accountant','Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.','cen-lung-d868f46a40b126f375f0b6a4b40500c8','2023-10-24 14:04:19','2023-10-24 14:04:19');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `plan_id` int DEFAULT NULL,
  `gateway` varchar(255) NOT NULL,
  `payment_amount` varchar(255) NOT NULL,
  `tax_amount` varchar(255) NOT NULL,
  `total_payment_amount` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `date` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,15,6,'sb-47sbqp27865648@business.example.com',1,'PayPal','5.00','0.6','5.6','PAYID-MU5DO5I5DG30768E8102173S',1698314153,'2023-10-26 09:55:53','2023-10-26 09:55:53'),(2,17,6,'sb-47sbqp27865648@business.example.com',1,'PayPal','5.00','0.6','5.6','PAYID-MU5DWJQ9VT03724T5973762T',1698315073,'2023-10-26 10:11:13','2023-10-26 10:11:13'),(3,16,6,'ima@gmail.com',1,'Stripe','5.00','0.6','5.6','ch_3O5RFkGK6GRnWLWI1OQuZLZ2',1698317849,'2023-10-26 10:57:29','2023-10-26 10:57:29');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `usertype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','EmaBroker','admin@gmail.com','$2y$10$keY9Rexle.vGWvk0V37MlOKkPTTjXAJM6lvHFD1TdyJH88rasOKa6','+11234567891','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto consequuntur doloremque eius expedita molestiae molestias pariatur quod repellendus ullam vel!','http://facebook.com','http://twitter.com','http://gplus.com','http://linkedin.com','emabroker-ed0fd88d20f2dca4adcee761fc34d11c',1,NULL,'lhEoS8bdkvVwYMx3WWj8IQ9sk4PGjpz6TaegvYcwDZqnu7ra3fxiBpGUYON2','2016-10-11 06:12:11','2023-10-26 12:59:08'),(2,'Agents','Janie Doe','janie@gmail.com','$2y$10$nmyqz5PzKN0Rgz9wOujUrOwjRdlnwyvoubw.mznqpp0T8BzmLFUd2','1234567891','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto consequuntur doloremque eius expedita molestiae molestias pariatur quod repellendus ullam vel!','http://facebook.com','http://twitter.com','http://gplus.com','http://linkedin.com','janie-doe-705a7bb391414848f9f3046d4ea9675e',1,'CW3ISg21SgxOPZ6','q8G4HNoTf2G67Ri0IkSoGTAq5CP3SmOiCP3lYRnTKw7vebZ9HPRBXxpt81i6','2018-01-16 21:00:06','2023-10-26 16:21:35'),(3,'User','Jane Doe','user@gmail.com','$2y$10$XhIiZI4e2CDs97EnB76MTuJHndNg3XnLygA1U1f1E.xuc6WoocKc2','1234567891','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto consequuntur doloremque eius expedita molestiae molestias pariatur quod repellendus ullam vel!','http://facebook.com','http://twitter.com','http://instagram.com','http://linkedin.com','jane-doe-54e87a5b6fef3e34d2b7c0dc07a1fffc',1,'CW3ISg21SgxOPZ6','S4VcszBWkbhCdGIPndqZwcVMcXnycBNkn6mAe5CoWxcPSbUp7yFjzbtFAnKk','2018-01-16 21:00:06','2020-07-01 05:18:18'),(4,'Agents','Richard Roe','richard@gmail.com','$2y$10$aFFMEGO5Snr8STJe6SkukO4S.sRjmc6O89PXBjNqbPzs4OE.TS8Ci','1223598410','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto consequuntur doloremque eius expedita molestiae molestias pariatur quod repellendus ullam vel!There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.','http://facebook.com','http://twitter.com','http://instagram.com','http://linkedin.com','richard-roe-ba8313030bec613a4e95e81d4146d249',1,'',NULL,'2018-02-08 22:18:33','2019-12-14 01:59:05'),(5,'Agents','John Doe','agent@gmail.com','$2y$10$ki1IkGLN4mWZ/w14u7H1ruGVE6d6VpKwjQm0cvrnIIt0zABl3/mie',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias ea eos expedita fuga illo quaerat quod sit sunt. Aliquid doloribus est facilis ipsam iusto laborum magnam necessitatibus nulla vel voluptatem. \r\nAb autem eaque, eos esse mollitia neque non nulla obcaecati odio porro reiciendis rem voluptates? Beatae corporis debitis distinctio doloribus dolorum eaque esse in iure iusto. \r\nmaiores nisi nostrum optio quidem ratione repudiandae tempora ut vero voluptatum.','http://facebook.com','http://twitter.com','http://instagram.com','http://linkedin.com','john-doe-938b54f3d79466486c95840e8ac10cf3',1,'NEudKM4AAzYwEdl','qbwzLRYnrEkvS1rortRByQY8UJJJNNmDVPObvaiisMq65NdsdktHLkwP0doX','2017-09-15 07:37:09','2023-10-26 16:20:59'),(6,'User','ima','ima@gmail.com','$2y$10$ZxoM3.nxN5iovLYfw4KBDOOiVDjuekXWx8MqXxZbBSTBvEDRhP9IO',NULL,NULL,NULL,NULL,NULL,NULL,'ima-e340e5c96540bbf79afbd9d4e2ae0f11',1,'x1olqCj6T9EqXK6',NULL,'2023-10-25 13:20:22','2023-10-26 18:12:48'),(7,'User','imana','imana@gmail.com','$2y$10$HBDQ5fcRO1UlbaKG4qAx8exsTmM0vukSsVqMVyYyeXpK16MN24S3m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'kA7wh9FdtCEoWS6',NULL,'2023-10-26 10:01:04','2023-10-26 10:01:38');
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

-- Dump completed on 2023-10-26 20:41:28
