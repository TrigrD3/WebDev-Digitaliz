-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: webdev-digitaliz
-- ------------------------------------------------------
-- Server version	8.0.31

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_name` varchar(45) NOT NULL,
  `client` varchar(45) NOT NULL,
  `projects_leader` bigint unsigned DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `progress` int NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_leader_idx` (`projects_leader`,`id`),
  CONSTRAINT `project_leader` FOREIGN KEY (`projects_leader`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Web Dev Digitaliz','Bakeuda Prov. Kalsel',1,'2023-01-01','2023-01-24',25,'2023-01-14',NULL),(18,'Web Dev Digitaliz 3','PT. Bina Sarana Sukses',1,'2023-04-05','2023-08-14',50,'2023-01-15','2023-01-14'),(19,'SI Pendataan Atlet Daerah','Dispora Jawa Timur',2,'2023-01-03','2023-04-19',65,'2023-01-15','2023-01-15'),(23,'sit laudantium','Schultz Ltd',1,'2022-09-30','2027-07-02',37,'2023-01-15','2023-01-15'),(24,'tempore est','Graham, Wisoky and Runolfsdottir',2,'2021-12-05','2025-03-11',75,'2023-01-15','2023-01-15'),(25,'voluptates rerum','Cormier LLC',1,'2022-01-06','2026-02-09',98,'2023-01-15','2023-01-15'),(26,'repellendus reiciendis','Moen PLC',2,'2019-12-15','2027-06-30',57,'2023-01-15','2023-01-15'),(27,'quod vel','Lehner PLC',2,'2018-05-15','2023-07-31',4,'2023-01-15','2023-01-15'),(28,'dolores dolores','Prosacco, Veum and Howell',2,'2020-03-18','2025-01-11',47,'2023-01-15','2023-01-15'),(29,'rerum animi','Doyle, Keeling and Hettinger',1,'2019-05-12','2025-11-30',14,'2023-01-15','2023-01-15'),(30,'dolores sit','Sanford-Hackett',2,'2018-01-28','2026-04-17',36,'2023-01-15','2023-01-15'),(31,'rerum atque','McLaughlin LLC',1,'2022-10-16','2024-07-09',64,'2023-01-15','2023-01-15'),(32,'sequi veritatis','Bode, Franecki and Johnson',1,'2021-12-25','2027-11-07',13,'2023-01-15','2023-01-15'),(33,'distinctio officia','Hessel Ltd',2,'2020-01-27','2023-12-04',68,'2023-01-15','2023-01-15'),(34,'qui nihil','Sipes, Larkin and Bahringer',1,'2020-02-09','2024-09-16',40,'2023-01-15','2023-01-15'),(35,'sit qui','McClure-Renner',1,'2020-05-20','2025-03-06',61,'2023-01-15','2023-01-15'),(36,'iste expedita','Mayert LLC',1,'2021-09-15','2025-11-09',38,'2023-01-15','2023-01-15'),(37,'sit expedita','Klein, Stamm and Parker',2,'2020-10-10','2027-05-05',23,'2023-01-15','2023-01-15'),(38,'ex quia','Kohler Inc',1,'2018-09-03','2023-02-02',21,'2023-01-15','2023-01-15'),(39,'repellat est','Mayer-Kassulke',2,'2020-12-12','2024-12-17',49,'2023-01-15','2023-01-15'),(40,'non non','Howell PLC',2,'2021-01-23','2023-12-19',35,'2023-01-15','2023-01-15'),(41,'distinctio excepturi','Kshlerin, Fritsch and Swaniawski',2,'2021-08-07','2027-05-25',36,'2023-01-15','2023-01-15'),(42,'velit non','Kuhic, Krajcik and Reichel',1,'2020-04-25','2027-03-02',5,'2023-01-15','2023-01-15'),(43,'magni temporibus','Daugherty-Jaskolski',2,'2022-01-20','2026-12-13',8,'2023-01-15','2023-01-15'),(44,'repudiandae dolores','Kris-Senger',1,'2019-09-05','2024-04-11',54,'2023-01-15','2023-01-15'),(45,'minima nemo','Dibbert, Auer and Padberg',2,'2021-04-11','2023-04-23',3,'2023-01-15','2023-01-15'),(46,'voluptate autem','Corwin and Sons',1,'2020-06-06','2027-04-18',81,'2023-01-15','2023-01-15'),(47,'vel fugiat','Schinner LLC',2,'2023-01-13','2025-02-24',100,'2023-01-15','2023-01-15'),(48,'deleniti laborum','Hane LLC',1,'2020-09-21','2026-11-23',42,'2023-01-15','2023-01-15'),(49,'aut delectus','Barrows LLC',1,'2021-05-26','2026-03-15',36,'2023-01-15','2023-01-15'),(50,'facere ut','McGlynn-Johnston',1,'2021-12-18','2025-06-02',8,'2023-01-15','2023-01-15'),(51,'maxime temporibus','Macejkovic PLC',2,'2021-02-19','2025-04-01',6,'2023-01-15','2023-01-15'),(52,'rem quis','Wisoky, Wehner and Rath',1,'2019-09-21','2025-05-31',30,'2023-01-15','2023-01-15'),(53,'corporis ut','Cummerata Group',2,'2021-03-03','2023-01-20',22,'2023-01-15','2023-01-15'),(54,'voluptates mollitia','Miller-Harber',1,'2019-07-18','2023-05-15',61,'2023-01-15','2023-01-15'),(55,'consequatur aspernatur','Runolfsson LLC',2,'2020-09-12','2023-02-12',17,'2023-01-15','2023-01-15'),(56,'aut rem','Zieme-Tillman',1,'2022-05-25','2027-10-28',0,'2023-01-15','2023-01-15'),(57,'perferendis recusandae','Kulas-Kautzer',2,'2020-01-17','2023-12-07',85,'2023-01-15','2023-01-15'),(58,'corrupti esse','Kreiger, Douglas and Pfeffer',1,'2019-12-21','2025-08-06',47,'2023-01-15','2023-01-15'),(59,'natus aliquid','Mayer-King',2,'2019-08-13','2023-11-17',84,'2023-01-15','2023-01-15'),(60,'commodi dolorum','Prosacco-Schaden',2,'2022-11-16','2023-02-10',6,'2023-01-15','2023-01-15'),(61,'sit et','Herman, Sanford and Gulgowski',2,'2019-04-28','2024-07-16',15,'2023-01-15','2023-01-15'),(62,'a aut','Lockman Ltd',2,'2021-09-04','2025-05-29',28,'2023-01-15','2023-01-15'),(63,'laboriosam qui','Carroll LLC',2,'2021-03-20','2027-12-22',43,'2023-01-15','2023-01-15'),(64,'adipisci ut','Kessler-Kerluke',2,'2022-05-31','2026-12-26',44,'2023-01-15','2023-01-15'),(65,'omnis unde','Powlowski, Windler and Champlin',2,'2019-11-10','2026-07-09',68,'2023-01-15','2023-01-15'),(66,'voluptates omnis','Langworth-Hilpert',1,'2021-07-12','2025-08-29',53,'2023-01-15','2023-01-15'),(67,'rerum deserunt','Corkery, Ferry and Franecki',1,'2019-03-04','2026-12-27',80,'2023-01-15','2023-01-15'),(68,'iste labore','Cormier, Zemlak and Welch',1,'2021-02-11','2024-05-10',15,'2023-01-15','2023-01-15'),(69,'tenetur laudantium','Jacobi, Jacobson and Rohan',1,'2020-08-12','2026-12-19',32,'2023-01-15','2023-01-15');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Muhammad Jatmika Aryaputra','arya66151@gmail.com',NULL,'$2y$10$mAO59d3ziM5bWZZlq1WfJ.rgG.Rao7qggsRRMzbcV1tntVWezvg7K','aBfTiqexaLOxmkmJF9PszxeYIs0TLvBfWKrGmLsGzIwDUGEoXWHxCN7jjwef','2023-01-14 02:45:03','2023-01-14 02:45:03'),(2,'Muhammad Razaq Lazuardi','1910817210004@gmail.com',NULL,'$2y$10$XmjJftjddJIFTMpQP2fQbuSqQaTv3BJDh.Wj0UOVHJtoP9MkqehZG',NULL,'2023-01-14 18:56:31','2023-01-14 18:56:31');
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

-- Dump completed on 2023-01-15 14:37:47
