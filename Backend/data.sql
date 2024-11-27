-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: shelter_test
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `left_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us`
--

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` VALUES (1,'storage/pictures/about_us/YrXt02hs0NABF953m0E47LpFgt7piHalQd63rZPz.jpg','About left image','About Shelter','Founded by Mick Donkin and Kris Armstrong in 2013. We incorporate 3 divisions: Smart-metering, Renewables and Recycling all from our head office in Sunderland.We employ a team of highly skilled engineers delivering multi-disciplinary projects which operate across the UK, offering a 24/7 service including emergency call out.','Founded by Mick Donkin and Kris Armstrong in 2013. We incorporate 3 divisions: Smart-metering, Renewables and Recycling all from our head office in Sunderland.We employ a team of highly skilled engineers delivering multi-disciplinary projects which operate across the UK, offering a 24/7 service including emergency call out.We have a commitment to quality and a strong safety culture, ensuring that every job we do is completed correctly and safely. We pride oursleves on fostering a working culture that is based on our core values. This ensures the people that make EMS what it is can enjoy the best, most engaging and safe environment possible. It\'s the people and our values that we believe set us apart in the industry.','2024-10-03 04:26:10','2024-10-24 09:16:18');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `article_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (6,'Electrical and Mechanical','New York, USA','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','storage/pictures/blogs/blog_1727787513.jpg','2024-10-01 04:58:33','2024-10-01 05:01:48','storage/pictures/blogs/articles/article_1727787513.jpg'),(7,'Air Conditioning and Ventilation','New York, USA','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','storage/pictures/blogs/blog_1727788077.jpg','2024-10-01 05:07:57','2024-10-01 05:07:57','storage/pictures/blogs/articles/article_1727788077.jpg'),(8,'Refrigeration','New York, USA','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','storage/pictures/blogs/blog_1727801300.jpg','2024-10-01 08:48:21','2024-10-01 08:48:21','storage/pictures/blogs/articles/article_1727801301.jpg'),(9,'F Gas Regulation','New York, USA','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','storage/pictures/blogs/blog_1727801656.jpg','2024-10-01 08:54:16','2024-10-01 08:54:16','storage/pictures/blogs/articles/article_1727801656.jpeg'),(10,'Renewable Energy and Heating','New York, USA','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','storage/pictures/blogs/blog_1727802237.jpg','2024-10-01 09:03:57','2024-10-01 09:03:57','storage/pictures/blogs/articles/article_1727802237.jpg'),(11,'Electricity and Gas Metering','New York, USA','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','storage/pictures/blogs/blog_1727813617.jpg','2024-10-01 12:13:37','2024-10-01 12:13:37','storage/pictures/blogs/articles/article_1727813617.jpg'),(12,'Waste Recycling','New York, USA','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','storage/pictures/blogs/blog_1727813783.jpg','2024-10-01 12:16:25','2024-10-01 12:16:25','storage/pictures/blogs/articles/article_1727813785.jpg');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_values`
--

DROP TABLE IF EXISTS `brand_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_us_id` bigint unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_values_about_us_id_foreign` (`about_us_id`),
  CONSTRAINT `brand_values_about_us_id_foreign` FOREIGN KEY (`about_us_id`) REFERENCES `about_us` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_values`
--

LOCK TABLES `brand_values` WRITE;
/*!40000 ALTER TABLE `brand_values` DISABLE KEYS */;
INSERT INTO `brand_values` VALUES (1,1,'Integrity','Acting with strong ethics is a priority for everyone representing the organization as well as the company\'s behaviour as a whole.','storage/pictures/about-us/integrity.png','2024-10-01 23:07:49','2024-10-01 23:07:49'),(2,1,'Honesty','It\'s not just the best policy, it\'s a core business practice to act in a transparent, trustworthy manner that earns the respect of colleagues, customers and the public.','storage/pictures/about-us/honesty.png','2024-10-01 23:08:28','2024-10-01 23:08:28'),(3,1,'FAIRNESS','Treating everyone with the common decency we all deserve and expect.','storage/pictures/brandvalues/VN2KXmEyQDm7UIr5BMFEdetJadZhrP3krkP96ykv.svg','2024-10-01 23:09:21','2024-10-01 23:09:21'),(4,1,'ACCOUNTABILITY','Accepting responsibility for your actions (and inactions) is the ultimate way to build trust internally and externally.','storage/pictures/brandvalues/HeqRm5sWWuDAquIuw0Kc45FO1wJfa72qkby12jEW.svg','2024-10-01 23:10:34','2024-10-01 23:10:34'),(5,1,'COMMITMENT TO DELIVER','Creating a great customer experience begins with staying true to the words we speak and the bonds we make.','storage/pictures/brandvalues/M0XElnzXiR9dMzd3NvJ2XwZBGotw36s75epMo6gm.svg','2024-10-01 23:11:33','2024-10-01 23:13:09'),(6,1,'DIVERSITY & INCLUSION','Organisations succeed by bringing different lived experiences and a range of backgrounds into a shared environment where everyone has equal opportunity.','storage/pictures/brandvalues/YtHLOoBYgQjQzsSSj6FZIhxcHsTtJAxMeMEaqlUA.svg','2024-10-01 23:14:13','2024-10-01 23:14:13'),(7,1,'LEARNING','No one has all the answers. A culture of humility and continuous learning is a bedrock principle of successful companies.','storage/pictures/brandvalues/qgSojijLv0b3jLz9UWVfJ5wsDUJVtgLhYCSyVT6m.svg','2024-10-01 23:15:13','2024-10-01 23:15:13'),(8,1,'TEAMWORK','When people work together, they can create something greater than themselves as individuals.','storage/pictures/brandvalues/V7jYqZwxxS7rVcW9RfeJFfgtAFW5cbDGaEBs4yoE.svg','2024-10-01 23:16:11','2024-10-01 23:16:11');
/*!40000 ALTER TABLE `brand_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel_cache_settings','O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:20:{i:0;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:1;s:3:\"key\";s:9:\"site_name\";s:5:\"value\";s:7:\"Shelter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:1;s:3:\"key\";s:9:\"site_name\";s:5:\"value\";s:7:\"Shelter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:2;s:3:\"key\";s:5:\"email\";s:5:\"value\";s:15:\"info@shelter.az\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:2;s:3:\"key\";s:5:\"email\";s:5:\"value\";s:15:\"info@shelter.az\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:3;s:3:\"key\";s:4:\"logo\";s:5:\"value\";s:30:\"storage/pictures/logo_main.png\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:3;s:3:\"key\";s:4:\"logo\";s:5:\"value\";s:30:\"storage/pictures/logo_main.png\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:4;s:3:\"key\";s:7:\"youtube\";s:5:\"value\";s:7:\"Youtube\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-21 12:34:56\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:4;s:3:\"key\";s:7:\"youtube\";s:5:\"value\";s:7:\"Youtube\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-21 12:34:56\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:5;s:3:\"key\";s:8:\"linkedin\";s:5:\"value\";s:8:\"Linkedin\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:5;s:3:\"key\";s:8:\"linkedin\";s:5:\"value\";s:8:\"Linkedin\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:6;s:3:\"key\";s:5:\"phone\";s:5:\"value\";s:18:\"(+994 12) 232 5679\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-24 05:46:48\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:6;s:3:\"key\";s:5:\"phone\";s:5:\"value\";s:18:\"(+994 12) 232 5679\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-24 05:46:48\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:7;s:3:\"key\";s:3:\"fax\";s:5:\"value\";s:19:\"(+994 12) 565 08 95\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:7;s:3:\"key\";s:3:\"fax\";s:5:\"value\";s:19:\"(+994 12) 565 08 95\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:8;s:3:\"key\";s:7:\"address\";s:5:\"value\";s:35:\"Azadliq Avenue 14, Baku, Azerbaijan\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-02 03:17:14\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:8;s:3:\"key\";s:7:\"address\";s:5:\"value\";s:35:\"Azadliq Avenue 14, Baku, Azerbaijan\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-02 03:17:14\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:9;s:3:\"key\";s:8:\"facebook\";s:5:\"value\";s:8:\"Facebook\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:9;s:3:\"key\";s:8:\"facebook\";s:5:\"value\";s:8:\"Facebook\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:10;s:3:\"key\";s:9:\"instagram\";s:5:\"value\";s:9:\"Instagram\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:10;s:3:\"key\";s:9:\"instagram\";s:5:\"value\";s:9:\"Instagram\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:10;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:11;s:3:\"key\";s:7:\"twitter\";s:5:\"value\";s:7:\"Twitter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:11;s:3:\"key\";s:7:\"twitter\";s:5:\"value\";s:7:\"Twitter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:11;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:12;s:3:\"key\";s:8:\"telegram\";s:5:\"value\";s:7:\"Telegra\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:12;s:3:\"key\";s:8:\"telegram\";s:5:\"value\";s:7:\"Telegra\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:12;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:13;s:3:\"key\";s:7:\"threads\";s:5:\"value\";s:7:\"Threads\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:13;s:3:\"key\";s:7:\"threads\";s:5:\"value\";s:7:\"Threads\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:13;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:14;s:3:\"key\";s:3:\"map\";s:5:\"value\";s:45:\"40° 24\' 33.3504\'\' N and 49° 52\' 1.5312\'\' E.\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:14;s:3:\"key\";s:3:\"map\";s:5:\"value\";s:45:\"40° 24\' 33.3504\'\' N and 49° 52\' 1.5312\'\' E.\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:14;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:15;s:3:\"key\";s:7:\"favicon\";s:5:\"value\";s:30:\"storage/pictures/logo_main.png\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:15;s:3:\"key\";s:7:\"favicon\";s:5:\"value\";s:30:\"storage/pictures/logo_main.png\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:15;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:16;s:3:\"key\";s:5:\"title\";s:5:\"value\";s:12:\"ADAS Shelter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:16;s:3:\"key\";s:5:\"title\";s:5:\"value\";s:12:\"ADAS Shelter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:16;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:17;s:3:\"key\";s:11:\"description\";s:5:\"value\";s:20:\"ADAS Shelter Project\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:17;s:3:\"key\";s:11:\"description\";s:5:\"value\";s:20:\"ADAS Shelter Project\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:17;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:18;s:3:\"key\";s:8:\"keywords\";s:5:\"value\";s:25:\"shelter, azerbaijan, adas\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:18;s:3:\"key\";s:8:\"keywords\";s:5:\"value\";s:25:\"shelter, azerbaijan, adas\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:18;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:19;s:3:\"key\";s:11:\"footer_text\";s:5:\"value\";s:153:\"© Copyright 2024 shelter.az - All Right Reserved. Made by <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder</a>\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-28 07:56:59\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:19;s:3:\"key\";s:11:\"footer_text\";s:5:\"value\";s:153:\"© Copyright 2024 shelter.az - All Right Reserved. Made by <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder</a>\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-28 07:56:59\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:19;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:20;s:3:\"key\";s:5:\"under\";s:5:\"value\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-09-22 14:57:25\";s:10:\"updated_at\";s:19:\"2024-09-22 14:57:25\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:20;s:3:\"key\";s:5:\"under\";s:5:\"value\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-09-22 14:57:25\";s:10:\"updated_at\";s:19:\"2024-09-22 14:57:25\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}',1731926500),('settings','O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:20:{i:0;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:1;s:3:\"key\";s:9:\"site_name\";s:5:\"value\";s:7:\"Shelter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:1;s:3:\"key\";s:9:\"site_name\";s:5:\"value\";s:7:\"Shelter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:2;s:3:\"key\";s:5:\"email\";s:5:\"value\";s:15:\"info@shelter.az\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:2;s:3:\"key\";s:5:\"email\";s:5:\"value\";s:15:\"info@shelter.az\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:3;s:3:\"key\";s:4:\"logo\";s:5:\"value\";s:30:\"storage/pictures/logo_main.png\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:3;s:3:\"key\";s:4:\"logo\";s:5:\"value\";s:30:\"storage/pictures/logo_main.png\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:4;s:3:\"key\";s:7:\"youtube\";s:5:\"value\";s:7:\"Youtube\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-21 12:34:56\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:4;s:3:\"key\";s:7:\"youtube\";s:5:\"value\";s:7:\"Youtube\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-21 12:34:56\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:5;s:3:\"key\";s:8:\"linkedin\";s:5:\"value\";s:8:\"Linkedin\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:5;s:3:\"key\";s:8:\"linkedin\";s:5:\"value\";s:8:\"Linkedin\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:6;s:3:\"key\";s:5:\"phone\";s:5:\"value\";s:18:\"(+994 12) 232 5679\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-24 05:46:48\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:6;s:3:\"key\";s:5:\"phone\";s:5:\"value\";s:18:\"(+994 12) 232 5679\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-24 05:46:48\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:7;s:3:\"key\";s:3:\"fax\";s:5:\"value\";s:19:\"(+994 12) 565 08 95\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:7;s:3:\"key\";s:3:\"fax\";s:5:\"value\";s:19:\"(+994 12) 565 08 95\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:8;s:3:\"key\";s:7:\"address\";s:5:\"value\";s:35:\"Azadliq Avenue 14, Baku, Azerbaijan\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-02 03:17:14\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:8;s:3:\"key\";s:7:\"address\";s:5:\"value\";s:35:\"Azadliq Avenue 14, Baku, Azerbaijan\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-02 03:17:14\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:9;s:3:\"key\";s:8:\"facebook\";s:5:\"value\";s:8:\"Facebook\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:9;s:3:\"key\";s:8:\"facebook\";s:5:\"value\";s:8:\"Facebook\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:10;s:3:\"key\";s:9:\"instagram\";s:5:\"value\";s:9:\"Instagram\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:10;s:3:\"key\";s:9:\"instagram\";s:5:\"value\";s:9:\"Instagram\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:10;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:11;s:3:\"key\";s:7:\"twitter\";s:5:\"value\";s:7:\"Twitter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:11;s:3:\"key\";s:7:\"twitter\";s:5:\"value\";s:7:\"Twitter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:11;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:12;s:3:\"key\";s:8:\"telegram\";s:5:\"value\";s:7:\"Telegra\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:12;s:3:\"key\";s:8:\"telegram\";s:5:\"value\";s:7:\"Telegra\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:12;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:13;s:3:\"key\";s:7:\"threads\";s:5:\"value\";s:7:\"Threads\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:13;s:3:\"key\";s:7:\"threads\";s:5:\"value\";s:7:\"Threads\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:13;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:14;s:3:\"key\";s:3:\"map\";s:5:\"value\";s:45:\"40° 24\' 33.3504\'\' N and 49° 52\' 1.5312\'\' E.\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:14;s:3:\"key\";s:3:\"map\";s:5:\"value\";s:45:\"40° 24\' 33.3504\'\' N and 49° 52\' 1.5312\'\' E.\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:14;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:15;s:3:\"key\";s:7:\"favicon\";s:5:\"value\";s:30:\"storage/pictures/logo_main.png\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:15;s:3:\"key\";s:7:\"favicon\";s:5:\"value\";s:30:\"storage/pictures/logo_main.png\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:15;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:16;s:3:\"key\";s:5:\"title\";s:5:\"value\";s:12:\"ADAS Shelter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:16;s:3:\"key\";s:5:\"title\";s:5:\"value\";s:12:\"ADAS Shelter\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:16;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:17;s:3:\"key\";s:11:\"description\";s:5:\"value\";s:20:\"ADAS Shelter Project\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:17;s:3:\"key\";s:11:\"description\";s:5:\"value\";s:20:\"ADAS Shelter Project\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:17;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:18;s:3:\"key\";s:8:\"keywords\";s:5:\"value\";s:25:\"shelter, azerbaijan, adas\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:18;s:3:\"key\";s:8:\"keywords\";s:5:\"value\";s:25:\"shelter, azerbaijan, adas\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-09-22 09:09:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:18;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:19;s:3:\"key\";s:11:\"footer_text\";s:5:\"value\";s:153:\"© Copyright 2024 shelter.az - All Right Reserved. Made by <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder</a>\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-28 07:56:59\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:19;s:3:\"key\";s:11:\"footer_text\";s:5:\"value\";s:153:\"© Copyright 2024 shelter.az - All Right Reserved. Made by <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder</a>\";s:10:\"created_at\";s:19:\"2024-09-22 09:09:08\";s:10:\"updated_at\";s:19:\"2024-10-28 07:56:59\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:19;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:20;s:3:\"key\";s:5:\"under\";s:5:\"value\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-09-22 14:57:25\";s:10:\"updated_at\";s:19:\"2024-09-22 14:57:25\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:20;s:3:\"key\";s:5:\"under\";s:5:\"value\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-09-22 14:57:25\";s:10:\"updated_at\";s:19:\"2024-09-22 14:57:25\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:3:\"key\";i:1;s:5:\"value\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}',1731928837);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Shelters','2024-10-16 06:54:25','2024-10-25 07:51:26','storage/pictures/categories/QHFIqV5d2DNbzpWlcdveSnQ4WV3z4lL2yGT4TDl3.jpeg'),(2,'Equipment and Accessories','2024-10-16 06:54:25','2024-10-25 07:53:52','storage/pictures/categories/gUsDNvhAxFnwe4Oj4MSQgW86DO5vXwVvboKPg5a0.jpeg');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactings`
--

DROP TABLE IF EXISTS `contactings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactings`
--

LOCK TABLES `contactings` WRITE;
/*!40000 ALTER TABLE `contactings` DISABLE KEYS */;
INSERT INTO `contactings` VALUES (6,'storage/pictures/contactings/contact_1727854863.jpg','Mick Donkin','sahib.shakhayev@hotmail.com','2024-10-01 23:41:03','2024-10-01 23:41:03'),(7,'storage/pictures/contactings/contact_1727855264.jpg','Kris Armstrong','parashard641@gmail.com','2024-10-01 23:47:46','2024-10-01 23:47:46'),(8,'storage/pictures/contactings/contact_1727855386.jpg','Daryl Shepherd','parashard641@gmail.com','2024-10-01 23:49:46','2024-10-01 23:49:46'),(9,'storage/pictures/contactings/contact_1727855547.jpg','Jahid Huseynli','jony.advpr@gmail.com','2024-10-01 23:52:27','2024-10-01 23:52:27'),(10,'storage/pictures/contactings/contact_1727855598.jpg','Leo Messi','parashard641@gmail.com','2024-10-01 23:53:18','2024-10-01 23:53:18'),(11,'storage/pictures/contactings/contact_1727855655.jpg','David Beckham','parashard641@gmail.com','2024-10-01 23:54:17','2024-10-01 23:54:17');
/*!40000 ALTER TABLE `contactings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `find_ways`
--

DROP TABLE IF EXISTS `find_ways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `find_ways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `find_ways_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `find_ways`
--

LOCK TABLES `find_ways` WRITE;
/*!40000 ALTER TABLE `find_ways` DISABLE KEYS */;
INSERT INTO `find_ways` VALUES (1,'google','Google',NULL,NULL),(2,'social-media','Social Media',NULL,NULL),(3,'friends','Friends or Relativies',NULL,NULL),(4,'news','News',NULL,NULL),(5,'ads','Ads',NULL,NULL),(6,'','Other',NULL,NULL);
/*!40000 ALTER TABLE `find_ways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'az','Azərbaycanca','2024-09-25 00:11:51','2024-10-25 03:36:57','AZ'),(2,'en','English','2024-09-25 00:11:51','2024-10-25 03:37:24','GB'),(3,'ru','Русский','2024-09-25 00:11:51','2024-10-25 03:37:29','RU');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_08_13_171134_create_password_resets_table',1),(5,'2024_08_13_174300_create_personal_access_tokens_table',1),(6,'2024_09_17_184540_create_about_us_table',1),(7,'2024_09_17_184541_create_brand_values_table',1),(8,'2024_09_17_184542_create_subbrands_table',1),(9,'2024_09_21_154257_create_services_table',1),(10,'2024_09_21_154718_create_projects_table',1),(11,'2024_09_21_183645_create_partners_table',1),(12,'2024_09_21_184906_create_contactings_table',1),(13,'2024_09_21_185435_create_blogs_table',1),(14,'2024_09_22_130620_create_settings_table',1),(15,'2024_09_25_075618_create_languages_table',1),(16,'2024_09_25_080316_create_translations_table',1),(18,'2024_09_26_114228_create_static_texts_table',1),(19,'2024_10_01_120541_add_article_image_to_blogs_table',1),(20,'2024_10_01_122501_add_article_image_to_projects_table',1),(21,'2024_10_01_123021_add_article_image_to_services_table',1),(22,'2024_10_16_080251_create_categories_table',2),(25,'2024_10_16_080252_create_subcategories_table',3),(26,'2024_10_16_080253_create_products_table',3),(27,'2024_09_26_114133_create_pages_table',4),(28,'2024_11_06_095935_create_find_ways_table',5),(29,'2024_11_15_213430_create_telescope_entries_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hero_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'home','Home','/','storage/pictures/pages/88dAXIwTilcDNZNCyG2joXK3jZTELLI6wc4hUyoI.jpg','Home','Services from us are trusted, reliable and professional. Please fill out the form completely, and we will get back to you as soon as possible.',1,'2024-09-27 02:11:40','2024-10-29 04:30:39'),(2,'services','Services','/services','storage/pictures/hero_2.jpg','Services','null',1,'2024-09-27 02:11:40','2024-10-29 04:30:57'),(3,'products','Products','/category','storage/pictures/pages/rn10qmRL5VS4F8MHBrXvjk1soCO2B80olwkgtn7V.jpg','Products','undefined',1,'2024-10-28 06:00:05','2024-10-28 07:02:17'),(4,'projects','Projects','projects','storage/pictures/pages/Drxt1PcJDIrBnPtdBuySrpNy7S16XkrV3FDDfwSg.jpeg','Projects','null',0,'2024-10-03 03:20:27','2024-10-28 06:00:49'),(6,'about','About Us','/about','storage/pictures/pages/iXficC5jMhBwnl3M1L0BWygwnlW501fJV9aP9e8Q.jpg','About Us','null',1,'2024-10-03 03:27:50','2024-10-28 07:04:13'),(44,'contact','Contact','/contact','storage/pictures/pages/D4Mex15qZTNCltUnGKKMtM3hdqHPGsVIfb0iS6NQ.jpg','Contact Us','Services from us are trusted, reliable and professional. Please fill out the form completely, and we will get back to you as soon as possible',1,'2024-10-28 07:05:37','2024-11-06 04:55:40'),(45,'blogs','Blogs','/blogs','storage/pictures/pages/j9eSRgTT9I3RXSyGAlKS0dIJBxr8opJz27YnJPdp.jpeg','Blogs','null',1,'2024-10-03 03:04:10','2024-10-28 07:07:09');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'storage/pictures/partners/partner_1727856303.png','Meta','https://meta.com','2024-10-02 00:05:03','2024-11-07 07:04:36'),(2,'storage/pictures/partners/partner_1727856949.png','Samsung','https://samsung.com','2024-10-02 00:15:49','2024-10-02 00:15:49'),(3,'storage/pictures/partners/partner_1727856975.png','Tesla','https://tesla.com','2024-10-02 00:16:15','2024-10-02 00:16:15'),(4,'storage/pictures/partners/partner_1727857016.png','Microsoft','https://microsoft.com','2024-10-02 00:16:56','2024-10-02 00:16:56'),(5,'storage/pictures/partners/partner_1727857066.png','Xiaomi','https://mi.com','2024-10-02 00:17:46','2024-10-02 00:17:46'),(6,'storage/pictures/partners/partner_1727857097.png','Google','https://google.com','2024-10-02 00:18:17','2024-10-02 00:18:17'),(7,'storage/pictures/partners/partner_1727857141.png','Apple','https://apple.com','2024-10-02 00:19:01','2024-10-02 00:19:01'),(8,'storage/pictures/partners/partner_1727857191.png','Visa','https://visa.com','2024-10-02 00:19:51','2024-10-02 00:19:51'),(9,'storage/pictures/partners/partner_1727857216.png','Intel','https://intel.com','2024-10-02 00:20:16','2024-10-02 00:20:16'),(10,'storage/pictures/partners/partner_1727857243.png','Oracle','https://oracle.com','2024-10-02 00:20:44','2024-10-02 00:20:44');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `client` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_subcategory_id_foreign` (`subcategory_id`),
  CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Product 12','storage/pictures/projects/project_58.jpg','This is the description for Product 1.','2024-01-15','Client 1','Location 12',1,'2024-10-17 07:46:16','2024-10-21 04:58:40'),(2,'Product 2','storage/pictures/projects/project_59.jpg','This is the description for Product 2.','2024-02-20','Client 2','Location 2',4,'2024-10-17 07:46:16','2024-10-17 07:46:16');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `client` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `article_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'storage/pictures/projects/66fe4bfc258c9.jpg','Electrical and Mechanical','2021-09-15','Industrial Company','New York, USA','home protection','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','2024-10-02 23:47:08','2024-10-03 00:01:17','storage/pictures/projects/articles/article_56.jpg'),(2,'storage/pictures/projects/66fe4bfd544ae.jpg','Air Conditioning and Ventilation','2021-09-15','Industrial Company','New York, USA','home protection','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','2024-10-02 23:47:09','2024-10-03 00:01:49','storage/pictures/projects/articles/article_57.jpg'),(3,'storage/pictures/projects/project_58.jpg','Plumbing and Water Engineering','2021-09-15','Industrial Company','New York, USA','home protection','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','2024-10-02 23:47:11','2024-10-03 00:02:00','storage/pictures/projects/articles/article_58.jpg'),(4,'storage/pictures/projects/project_59.jpg','IT and Data Networking','2021-09-15','Industrial Company','New York, USA','home protection','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','2024-10-02 23:47:13','2024-10-03 00:02:13','storage/pictures/projects/articles/article_59.jpg'),(5,'storage/pictures/projects/project_60.jpg','Fire Fighting','2021-09-15','Industrial Company','New York, USA','home protection','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','2024-10-02 23:47:15','2024-10-03 00:02:27','storage/pictures/projects/articles/article_60.jpg'),(6,'storage/pictures/projects/project_61.jpg','Security and CCTV','2021-09-15','Industrial Company','New York, USA','home protection','Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','2024-10-02 23:47:17','2024-10-03 00:02:39','storage/pictures/projects/articles/article_61.jpg');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text-title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `article_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'storage/pictures/services/66fe5cce8deb7.jpg','Electrical and Mechanical','Find a Handyman In DC For Your Next Task','Book Now','Lorem ipsum dolor sit amet consectetur...','2024-10-03 00:58:56','2024-10-03 00:58:56','storage/pictures/services/articles/66fe5cd0128d5.jpg'),(2,'storage/pictures/services/66fe5cd193d57.jpg','Air Conditioning and Ventilation','Find a Handyman In DC For Your Next Task','Book Now','Lorem ipsum dolor sit amet consectetur...','2024-10-03 00:58:59','2024-10-03 00:58:59','storage/pictures/services/articles/66fe5cd300ef4.jpg'),(3,'storage/pictures/services/66fe5cd476ba2.jpg','Refrigeration','Find a Handyman In DC For Your Next Task','Book Now','Lorem ipsum dolor sit amet consectetur...','2024-10-03 00:59:02','2024-10-03 00:59:02','storage/pictures/services/articles/66fe5cd6098bc.jpg'),(4,'storage/pictures/services/66fe5cd91e986.jpg','F Gas Regulation','Find a Handyman In DC For Your Next Task','Book Now','Lorem ipsum dolor sit amet consectetur...','2024-10-03 00:59:07','2024-10-03 00:59:07','storage/pictures/services/articles/66fe5cdb03790.jpg'),(5,'storage/pictures/services/66fe5cdccf565.jpg','Renewable Energy and Heating','Find a Handyman In DC For Your Next Task','Book Now','Lorem ipsum dolor sit amet consectetur...','2024-10-03 00:59:09','2024-10-03 00:59:09','storage/pictures/services/articles/66fe5cdd4e38b.jpg'),(6,'storage/pictures/services/66fe5cde18842.jpg','Electricity and Gas Metering','Find a Handyman In DC For Your Next Task','Book Now','Lorem ipsum dolor sit amet consectetur...','2024-10-03 00:59:12','2024-10-03 00:59:12','storage/pictures/services/articles/66fe5ce01b097.jpg'),(7,'storage/pictures/services/66fe5ce0b02ff.jpg','Waste Recycling','Find a Handyman In DC For Your Next Task','Book Now','Lorem ipsum dolor sit amet consectetur...','2024-10-03 00:59:13','2024-10-03 00:59:13','storage/pictures/services/articles/66fe5ce145b0f.jpg');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('6eVD9hGJomcNeswNRfon25d2gsFUeJAnFnuLimg6',NULL,'192.168.88.79','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoielFtV01BYlZwUWVPZ3ExQVdtT2JCS1oyR3M1cXpXNTFhMm9IMUZqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xOTIuMTY4Ljg4LjIyNTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731579573),('7FAZztMM5naav2e1NIogjYtwT6Tgw1jnVqz225Ch',NULL,'192.168.88.79','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicWdxcmFZYXBUYU5LMTNjcUlBaW9UVldwY3RlZ3FRSlZQcmh5VE11VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xOTIuMTY4Ljg4LjIyNTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731579570),('9dy0UkftmVuCrKCBEMlroEjbmYZI4IquZd2jRn8d',NULL,'::1','Mozilla/5.0 (Windows NT; Windows NT 10.0; az-Latn-AZ) WindowsPowerShell/5.1.22621.4391','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDZRNVpoaEVia1BobDl3MHA0cGdwUjBUbGVkNFJGTGJoWFFHSXQyMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731708278),('9q7MgVSFGHlcmiWCwHnDAO1NmNo313lFqvF3UGiV',NULL,'192.168.88.79','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU5NY0J4d2d1VXI2bFp5U0prb3g2Wm5hbmc4Z2hsRW1xTlV6bWNScSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4Ljg4Ljc5OjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1730361815),('BFI70ANmfvFj3yMUgtW70FOuqYcDihj2S8zCsVZt',NULL,'192.168.88.79','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlRxeG95WkZNV2lHV1N3NURWTUJETW1FWXJzbHdDUlZURDhQY2lLaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xOTIuMTY4Ljg4LjIyNTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731573724),('E0QsvgQzF2e1LuD294HazbxVLHz4UrXZsJR1S8tP',NULL,'::1','PostmanRuntime/7.42.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibW0yQnpCRVZnN0U1WGlZTWlOYVhqcWxLYmxGOUNzM3RsYmJxTmY3bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4OC90ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731784793),('HmIu1fyePT0kNvTdTmUluE6dd1smRzaWUoYABz0d',NULL,'192.168.88.79','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGZuSDE4WTlaZ0k3TzdtZlF3RFM1Z2ZYVG85Z3J0dXByVUM5MnNrayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xOTIuMTY4Ljg4Ljc5OjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1730361910),('HwE04TQ3Sa9H2l5qGTgqrAdz5SAI9jNqWJ3yWmGH',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDVMVHpYc21RTE9PZUpDemJ2b2dLV3VaNEE5VTJNZjJVOU1kNUZpWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4OCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731783656),('j9gX5mTgqg7ndWcRhuPrMhWnxgQfFfaL5wze8oM7',NULL,'::1','Mozilla/5.0 (Windows NT; Windows NT 10.0; az-Latn-AZ) WindowsPowerShell/5.1.22621.4391','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2NyN2tvZzEyZVo4QzNEOGhBeEdvYTd5VkswMXFRNklJYmdodVRQNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731708146),('lC3TAl9gtxrEOa2bfVMHme5Lwt2Cdzk1agyz4CHU',NULL,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiSUl2czJKYnJNNGE3OHlYOTIwa3RucEZTaDZvTEFoWnVveXNkb0VDNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731837997),('lPkIVT7AQn3H41Q9ShPrvcgT54lzaz465xC2f2h4',NULL,'192.168.88.225','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDhFN2dQencwVzZ4TWxYZnRReFZINERYaXBBSWJscmM5QTM1ZUF2biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xOTIuMTY4Ljg4LjIyNTo4MDg4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731924401),('mum5Kwk2VuQUxtmjdpv5PRAAX9VsLIoKswb7AAxf',NULL,'192.168.88.79','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibTJhOEZCRFliODdQVXdGWkRMODVvV0RtMEVkb2VRQnpxUEQ1UUxCUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xOTIuMTY4Ljg4LjIyNTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731573728),('NDTa94Nnj5nnkm5A8kuxUgckw7B2YjXd2vKpgavv',NULL,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0QwdHFkbzBJbEFkUGgyWU5nOE93eXE4Z1NxR2hDUUZ2STNvWHRBUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1731710376),('OJ3X696SLn462hy1NHGECVerBZpNzrsxzpmP7Qm1',NULL,'::1','Mozilla/5.0 (Windows NT; Windows NT 10.0; az-Latn-AZ) WindowsPowerShell/5.1.22621.4391','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTNXVFdMc0k5ZjVzcks0dnF5ZXpyNUxkc0h3YjlqYTZjSUdtbHNFNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731708194),('oQIyO1KOWoVZY9hfJu54B5gS440CFWBkBxDOsdEi',NULL,'::1','PostmanRuntime/7.42.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoid1VaY2syRW9HcElTeWJjZGZWeHRKMUVsYXF3elRPTXQxVkZEV09DZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4OCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731823051),('T18iSmi3yZMz2U1DFBT9CvM7byDHrEvrazSV4qFN',NULL,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHZ6bzloS3pkcG92VjJhUkdwOVZiTUlzaVNFVDd4NG5QMVVDY3FzZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4OCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731927299),('uJyHO1Zy3DgV7zTuEjgNVizxBMETfnkaEu1gvP3u',NULL,'::1','PostmanRuntime/7.42.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVRGSjBpQmV4UTB6TndVMzgyd1FBV25UVGh2cW1PTEFIVW9ZelRpcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1731710392),('UofRe3MZNzOgqYPDBucBYUVlaZiO7Hdhd7y1uzc7',NULL,'192.168.88.79','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTndESW9qa3JMWDJPeFFDTzZ0WnlLV3NPSW5vRUpTa01ObWFPdTJ1ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xOTIuMTY4Ljg4LjIyNTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731579892),('vzbupJKoDiv1o1pZgiwaCeOJiPXjOkNTylzorLFL',NULL,'::1','Mozilla/5.0 (Windows NT; Windows NT 10.0; az-Latn-AZ) WindowsPowerShell/5.1.22621.4391','YTozOntzOjY6Il90b2tlbiI7czo0MDoibWx4bU41b1NpMkFrcWVScU9QcTF1VDU2YmJQQXhiajlkbFh3eUJSNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731708266),('xDWb1TnkN3RWQIKRA3drWrBrzoq9Xlw14sMj2snj',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUE1R2xqRTNqaW93WWtrdUxnUHI4TElKdEV3aVJJRE50d2tta0Z2RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731704214),('Ybp1L7GRYClA2onbqQyToa2j9zunPFXA5ggJLvca',NULL,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3JmRnpFa21rZkxlU2dLSzA4cFpoeHFrd2l6TFdIZm1TbklkaGFwaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4OCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731822994),('zdRgayjKjv7tIce04xRaS891fK83y39hnWmoJ1nd',NULL,'::1','Mozilla/5.0 (Windows NT; Windows NT 10.0; az-Latn-AZ) WindowsPowerShell/5.1.22621.4391','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjhXMDhKR2VpSGRtTkdaanFwVzBFZlc4TEl0endJYlNEWmJvQkcyTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731708056);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`),
  KEY `idx_key` ((_utf8mb4'key'))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site_name','Shelter','2024-09-22 05:09:08','2024-09-22 05:09:08'),(2,'email','info@shelter.az','2024-09-22 05:09:08','2024-09-22 05:09:08'),(3,'logo','storage/pictures/logo_main.png','2024-09-22 05:09:08','2024-09-22 05:09:08'),(4,'youtube','Youtube','2024-09-22 05:09:08','2024-10-21 08:34:56'),(5,'linkedin','Linkedin','2024-09-22 05:09:08','2024-09-22 05:09:08'),(6,'phone','(+994 12) 232 5679','2024-09-22 05:09:08','2024-09-24 01:46:48'),(7,'fax','(+994 12) 565 08 95','2024-09-22 05:09:08','2024-09-22 05:09:08'),(8,'address','Azadliq Avenue 14, Baku, Azerbaijan','2024-09-22 05:09:08','2024-10-01 23:17:14'),(9,'facebook','Facebook','2024-09-22 05:09:08','2024-09-22 05:09:08'),(10,'instagram','Instagram','2024-09-22 05:09:08','2024-09-22 05:09:08'),(11,'twitter','Twitter','2024-09-22 05:09:08','2024-09-22 05:09:08'),(12,'telegram','Telegra','2024-09-22 05:09:08','2024-09-22 05:09:08'),(13,'threads','Threads','2024-09-22 05:09:08','2024-09-22 05:09:08'),(14,'map','40° 24\' 33.3504\'\' N and 49° 52\' 1.5312\'\' E.','2024-09-22 05:09:08','2024-09-22 05:09:08'),(15,'favicon','storage/pictures/logo_main.png','2024-09-22 05:09:08','2024-09-22 05:09:08'),(16,'title','ADAS Shelter','2024-09-22 05:09:08','2024-09-22 05:09:08'),(17,'description','ADAS Shelter Project','2024-09-22 05:09:08','2024-09-22 05:09:08'),(18,'keywords','shelter, azerbaijan, adas','2024-09-22 05:09:08','2024-09-22 05:09:08'),(19,'footer_text','© Copyright 2024 shelter.az - All Right Reserved. Made by <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder</a>','2024-09-22 05:09:08','2024-10-28 03:56:59'),(20,'under','1','2024-09-22 10:57:25','2024-09-22 10:57:25');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_texts`
--

DROP TABLE IF EXISTS `static_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `static_texts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `static_texts_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_texts`
--

LOCK TABLES `static_texts` WRITE;
/*!40000 ALTER TABLE `static_texts` DISABLE KEYS */;
INSERT INTO `static_texts` VALUES (1,'search','Search','2024-09-27 02:12:27','2024-09-27 05:12:06'),(2,'shelter','Shelter','2024-10-03 03:29:31','2024-10-03 03:29:31'),(3,'back-to-home','Back to home','2024-10-03 03:31:54','2024-10-03 03:31:54'),(4,'404-subtitle','Page Not Found','2024-10-03 03:32:29','2024-10-03 03:32:29'),(5,'404-desc','Sorry, we couldn’t find the page you’re looking for','2024-10-03 03:32:59','2024-10-03 03:32:59'),(6,'follow-us','Follow Us','2024-10-03 03:35:13','2024-10-03 03:35:13'),(7,'bt-make-an-enquiry','Make An Enquiry','2024-10-03 03:36:44','2024-10-03 03:36:44'),(8,'meet-team','<span class=\"best-team-text\">Meet Our <b>Best Team</b></span>','2024-10-03 03:38:59','2024-11-07 06:18:53'),(9,'our-partner','Our Partner','2024-10-03 03:39:48','2024-10-03 03:39:48'),(10,'bt-shedule-a-service','Schedule a Service','2024-10-03 03:40:37','2024-10-03 03:40:37'),(11,'home-banner-text','You will be satisfy with our work contact us today & help is on the way','2024-10-03 03:41:07','2024-10-03 03:41:07'),(12,'bt-book-now','Book Now','2024-10-03 03:42:00','2024-10-03 03:42:00'),(13,'link-view-all-blogs','View All Blogs','2024-10-03 03:43:30','2024-10-03 03:43:30'),(14,'bn-blog','Blog','2024-10-03 03:44:00','2024-10-03 03:44:00'),(15,'link-see-more','See More','2024-10-03 03:44:40','2024-10-03 03:44:40'),(16,'link-view-all-projects','View All Projects','2024-10-03 03:46:44','2024-10-03 03:46:44'),(17,'help','Need Help?','2024-10-03 03:47:21','2024-10-03 03:47:21'),(18,'link-view-all-services','View All Services','2024-10-03 03:50:01','2024-10-03 03:50:01'),(19,'client','Client','2024-10-03 03:50:53','2024-10-03 03:50:53'),(20,'category','Category','2024-10-03 03:51:14','2024-10-03 03:51:14'),(21,'location','Location','2024-10-03 03:51:43','2024-10-03 03:51:43'),(22,'date','Date','2024-10-03 03:52:33','2024-10-03 03:52:33'),(23,'services','Services','2024-10-30 05:12:08','2024-10-30 05:12:08'),(24,'bt-learn-more','Learn More','2024-11-05 06:17:50','2024-11-05 06:17:50'),(25,'shelters','Shelters','2024-11-06 03:30:54','2024-11-06 03:30:54'),(26,'pages','Pages','2024-11-06 04:24:10','2024-11-06 04:24:10'),(27,'contact-us','Contact Us','2024-11-06 04:27:29','2024-11-06 04:27:29'),(28,'get-in-touch','<div class=\"contact-hero-title\">Get in<span>Touch</span></div>','2024-11-06 04:59:46','2024-11-07 08:13:41'),(29,'name','Name','2024-11-06 05:04:54','2024-11-06 05:04:54'),(30,'email','Email','2024-11-06 05:06:03','2024-11-06 05:06:03'),(31,'phone-number','Phone Number','2024-11-06 05:06:38','2024-11-06 05:06:38'),(32,'how-find','How did you find us?','2024-11-06 05:07:45','2024-11-06 05:07:45'),(33,'bt-send','Send','2024-11-06 05:08:31','2024-11-06 05:08:31'),(34,'brand-values','Brand Values','2024-11-07 04:54:25','2024-11-07 04:54:25'),(35,'products','Products','2024-11-07 06:43:14','2024-11-07 06:43:14'),(36,'must-field','must be entered','2024-11-07 08:03:41','2024-11-07 08:03:41'),(37,'other','Other field','2024-11-07 08:04:43','2024-11-07 08:04:43'),(38,'your-request','Your Request','2024-11-14 05:00:06','2024-11-14 05:00:06'),(39,'fax','Fax','2024-11-14 05:02:09','2024-11-14 05:02:09'),(40,'all','All','2024-11-15 04:49:31','2024-11-15 04:49:31'),(41,'search-results','Search Results','2024-11-15 04:51:37','2024-11-15 04:51:37'),(42,'success-sent','Request Sent Successfully','2024-11-18 07:13:29','2024-11-18 07:13:29');
/*!40000 ALTER TABLE `static_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subbrands`
--

DROP TABLE IF EXISTS `subbrands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subbrands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_us_id` bigint unsigned NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subbrands_about_us_id_foreign` (`about_us_id`),
  CONSTRAINT `subbrands_about_us_id_foreign` FOREIGN KEY (`about_us_id`) REFERENCES `about_us` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subbrands`
--

LOCK TABLES `subbrands` WRITE;
/*!40000 ALTER TABLE `subbrands` DISABLE KEYS */;
INSERT INTO `subbrands` VALUES (1,1,'storage/pictures/about-us/about_us_logo_1.png','Subbrand 1 logo','2024-10-15 08:35:08','2024-11-07 05:48:33'),(2,1,'storage/pictures/about-us/about_us_logo_2.png','Subbrand 2 logo','2024-10-15 08:35:08','2024-10-15 08:35:08'),(3,1,'storage/pictures/subbrands/IlZqD1e05es2nM8N265pf92S0JzzbttCKqgbiY7i.png','Subbrand 3 logo','2024-10-01 22:29:24','2024-10-01 22:29:24'),(4,1,'storage/pictures/subbrands/7vMQRVRAulO4L8yV4hGOxso61fsiEraGrvK0ByAj.png','Subbrand 4 logo','2024-10-01 22:29:55','2024-10-01 22:34:25');
/*!40000 ALTER TABLE `subbrands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_category_id_foreign` (`category_id`),
  CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'Mini Bunker',1,'2024-10-16 06:54:25','2024-10-25 08:01:57','storage/pictures/categories/tjQ8UHccjKNA9VBL4WUZCAsO0Su6e7vEIqiBXzby.jpg'),(2,'Standard Bomb Shelter',1,'2024-10-16 06:54:25','2024-10-25 08:02:10','storage/pictures/categories/JqbxieePpCzOzIO3ZGIYcSxM36lzZFLFxQ8r8BeJ.jpeg'),(3,'Luxury Bunker',1,'2024-10-16 06:54:25','2024-10-25 08:02:39','storage/pictures/categories/kjqvx9xZM4eK1EBjoc0hx4mvoZPhdGe7l3qwB7GJ.jpg'),(4,'Air Filtration Systems',2,'2024-10-16 06:54:25','2024-10-25 08:04:59','storage/pictures/categories/u62zaHAKqadACVgAgkXLz7t1ZSBIqMQjmeMzZuvT.jpg'),(5,'Disinfection Chambers',2,'2024-10-16 06:54:25','2024-10-25 08:05:59','storage/pictures/categories/9lMquxfOQKpSNCUAPUTuoYjrXK0JZ4aN1UuMNuhr.jpg'),(6,'Water Supply Systems',2,'2024-10-16 06:54:25','2024-10-25 08:06:53','storage/pictures/categories/vTFgnPI4wJUqzpdrwBe5BS9z9F5zZkWBlZGym5a0.jpg');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_language_id_foreign` (`language_id`),
  KEY `idx_key` ((_utf8mb4'key')),
  CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (65,'About Shelter','Sığınacaq haqqında',1,NULL,NULL),(67,'Founded by Mick Donkin and Kris Armstrong in 2013. We incorporate 3 divisions: Smart-metering, Renewables and Recycling all from our head office in Sunderland.We employ a team of highly skilled engineers delivering multi-disciplinary projects which operate across the UK, offering a 24/7 service including emergency call out.','Mick Donkin və Kris Armstrong tərəfindən 2013-cü ildə təsis edilmişdir. Biz Sunderlanddəki baş ofisimizdən Smart-metrika, Bərpa olunan enerji və Təkrar emalı əhatə edən 3 şöbə birləşdiririk. Biz yüksək bacarıqlı mühəndislərdən ibarət komandamızla Böyük Britaniya ərazisində çoxşaxəli layihələr həyata keçiririk və təcili çağırışlar daxil olmaqla 24/7 xidmət təklif edirik.',1,NULL,NULL),(69,'Founded by Mick Donkin and Kris Armstrong in 2013. We incorporate 3 divisions: Smart-metering, Renewables and Recycling all from our head office in Sunderland.We employ a team of highly skilled engineers delivering multi-disciplinary projects which operate across the UK, offering a 24/7 service including emergency call out.We have a commitment to quality and a strong safety culture, ensuring that every job we do is completed correctly and safely. We pride oursleves on fostering a working culture that is based on our core values. This ensures the people that make EMS what it is can enjoy the best, most engaging and safe environment possible. It\'s the people and our values that we believe set us apart in the industry.','2013-cü ildə Mick Donkin və Kris Armstrong tərəfindən təsis edilmişdir. Biz Sunderlanddəki baş ofisimizdən Smart-metrika, Bərpa olunan enerji və Təkrar emalı əhatə edən 3 şöbə birləşdiririk. Biz yüksək bacarıqlı mühəndislərdən ibarət komandamızla Böyük Britaniya ərazisində çoxşaxəli layihələr həyata keçiririk və təcili çağırışlar daxil olmaqla 24/7 xidmət təklif edirik. Biz keyfiyyətə sadiqliyimiz və güclü təhlükəsizlik mədəniyyətimizlə hər bir işin düzgün və təhlükəsiz şəkildə yerinə yetirilməsini təmin edirik. EMS-i formalaşdıran insanların ən yaxşı, ən maraqlı və təhlükəsiz mühitdə işləyə bilmələrini təmin edən iş mühiti ilə fəxr edirik. İnanırıq ki, bizi sektorda fərqləndirən insanlar və dəyərlərimizdir.',1,NULL,NULL),(71,'About Shelter','О приюте',3,NULL,NULL),(72,'Founded by Mick Donkin and Kris Armstrong in 2013. We incorporate 3 divisions: Smart-metering, Renewables and Recycling all from our head office in Sunderland.We employ a team of highly skilled engineers delivering multi-disciplinary projects which operate across the UK, offering a 24/7 service including emergency call out.We have a commitment to quality and a strong safety culture, ensuring that every job we do is completed correctly and safely. We pride oursleves on fostering a working culture that is based on our core values. This ensures the people that make EMS what it is can enjoy the best, most engaging and safe environment possible. It\'s the people and our values that we believe set us apart in the industry.','Основана Миком Донкином и Крисом Армстронгом в 2013 году. Мы объединяем 3 подразделения: интеллектуальное измерение, возобновляемые источники энергии и переработку отходов, все из нашего головного офиса в Сандерленде. Мы привлекаем команду высококвалифицированных инженеров для реализации многопрофильных проектов по всей Великобритании, предлагая круглосуточное обслуживание, включая аварийные вызовы. Мы привержены качеству и сильной культуре безопасности, гарантируя, что каждая работа выполняется правильно и безопасно. Мы гордимся созданием рабочей культуры, основанной на наших основных ценностях. Это гарантирует, что люди, составляющие EMS, могут наслаждаться лучшей, самой увлекательной и безопасной средой. Мы верим, что именно люди и наши ценности выделяют нас в отрасли.',3,NULL,'2024-10-30 07:53:38'),(73,'Founded by Mick Donkin and Kris Armstrong in 2013. We incorporate 3 divisions: Smart-metering, Renewables and Recycling all from our head office in Sunderland.We employ a team of highly skilled engineers delivering multi-disciplinary projects which operate across the UK, offering a 24/7 service including emergency call out.','Основана Миком Донкином и Крисом Армстронгом в 2013 году. Мы объединяем 3 подразделения: интеллектуальное измерение, возобновляемые источники энергии и переработку отходов, все из нашего головного офиса в Сандерленде. Мы привлекаем команду высококвалифицированных инженеров для реализации многопрофильных проектов по всей Великобритании, предлагая круглосуточное обслуживание, включая аварийные вызовы.',3,NULL,NULL),(74,'Electrical and Mechanical','Elektrik və Mexaniki',1,NULL,NULL),(75,'New York, USA','Nyu York, ABŞ',1,NULL,NULL),(76,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','Placeholder Azerbaijani translation for the Lorem Ipsum text',1,NULL,NULL),(77,'Air Conditioning and Ventilation','Havalandırma və Kondisioner',1,NULL,NULL),(78,'Refrigeration','Soyuducu sistemləri',1,NULL,NULL),(79,'F Gas Regulation','F Qaz Qaydaları',1,NULL,NULL),(80,'Renewable Energy and Heating','Yenilənə bilən enerji və istilik',1,NULL,NULL),(81,'Electricity and Gas Metering','Elektrik və qaz ölçülməsi',1,NULL,NULL),(82,'Waste Recycling','Tullantıların təkrar emalı',1,NULL,NULL),(83,'Electrical and Mechanical','Электричество и механика',3,NULL,NULL),(84,'New York, USA','Нью-Йорк, США',3,NULL,NULL),(85,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','Placeholder Russian translation for the Lorem Ipsum text',3,NULL,NULL),(86,'Air Conditioning and Ventilation','Кондиционирование и вентиляция',3,NULL,NULL),(87,'Refrigeration','Холодильные системы',3,NULL,NULL),(88,'F Gas Regulation','Регулирование F-газа',3,NULL,NULL),(89,'Renewable Energy and Heating','Возобновляемая энергия и отопление',3,NULL,NULL),(90,'Electricity and Gas Metering','Электро- и газовое измерение',3,NULL,NULL),(91,'Waste Recycling','Переработка отходов',3,NULL,NULL),(92,'Integrity','Dürüstlük',1,NULL,NULL),(93,'Acting with strong ethics is a priority for everyone representing the organization as well as the company\'s behaviour as a whole.','Güclü etika ilə hərəkət etmək təşkilatı təmsil edən hər kəs üçün, həmçinin şirkətin ümumi davranışı üçün prioritetdir.',1,NULL,NULL),(94,'Honesty','Ədalət',1,NULL,NULL),(95,'It\'s not just the best policy, it\'s a core business practice to act in a transparent, trustworthy manner that earns the respect of colleagues, customers and the public.','Bu yalnız ən yaxşı siyasət deyil, həm də şəffaf və etibarlı şəkildə davranmaq, həmkarların, müştərilərin və ictimaiyyətin hörmətini qazanmaq üçün əsas iş təcrübəsidir.',1,NULL,NULL),(96,'FAIRNESS','Ədalətlilik',1,NULL,NULL),(97,'Treating everyone with the common decency we all deserve and expect.','Hər kəsə layiq olduğumuz və gözlədiyimiz ümumi ləyaqətlə yanaşmaq.',1,NULL,NULL),(98,'ACCOUNTABILITY','Məsuliyyət',1,NULL,NULL),(99,'Accepting responsibility for your actions (and inactions) is the ultimate way to build trust internally and externally.','Tədbirlərinizə (və tədbirsizliklərinizə) görə məsuliyyəti qəbul etmək daxildə və xaricdə etimad qazanmağın əsas yoludur.',1,NULL,NULL),(100,'COMMITMENT TO DELIVER','Təslim olmaq öhdəliyi',1,NULL,NULL),(101,'Creating a great customer experience begins with staying true to the words we speak and the bonds we make.','Möhtəşəm müştəri təcrübəsi yaratmaq, danışdığımız sözlərə və qurduğumuz bağlara sadiq qalmaqla başlayır.',1,NULL,NULL),(102,'DIVERSITY & INCLUSION','Müxtəliflik və daxiletmə',1,NULL,NULL),(103,'Organisations succeed by bringing different lived experiences and a range of backgrounds into a shared environment where everyone has equal opportunity.','Təşkilatlar müxtəlif həyat təcrübələrini və müxtəlif mənşələri hər kəsin bərabər imkanlara malik olduğu ortaq mühitə gətirərək uğur qazanırlar.',1,NULL,NULL),(104,'LEARNING','Öyrənmə',1,NULL,NULL),(105,'No one has all the answers. A culture of humility and continuous learning is a bedrock principle of successful companies.','Heç kim bütün cavablara malik deyil. Təvazökarlıq və davamlı öyrənmə mədəniyyəti uğurlu şirkətlərin əsas prinsipidir.',1,NULL,NULL),(106,'TEAMWORK','Komanda işi',1,NULL,NULL),(107,'When people work together, they can create something greater than themselves as individuals.','İnsanlar birlikdə işlədikdə, fərd olaraq özlərindən daha böyük bir şey yarada bilərlər.',1,NULL,NULL),(108,'Integrity','Целостность',3,NULL,NULL),(109,'Acting with strong ethics is a priority for everyone representing the organization as well as the company\'s behaviour as a whole.','Действие с сильной этикой является приоритетом для всех, представляющих организацию, а также для поведения компании в целом.',3,NULL,NULL),(110,'Honesty','Честность',3,NULL,NULL),(111,'It\'s not just the best policy, it\'s a core business practice to act in a transparent, trustworthy manner that earns the respect of colleagues, customers and the public.','Это не просто лучшая политика, это основная бизнес-практика действовать прозрачно и заслуживающим доверия образом, который завоевывает уважение коллег, клиентов и общественности.',3,NULL,NULL),(112,'FAIRNESS','Справедливость',3,NULL,NULL),(113,'Treating everyone with the common decency we all deserve and expect.','Относиться ко всем с должным уважением, которого мы все заслуживаем и ожидаем.',3,NULL,NULL),(114,'ACCOUNTABILITY','Ответственность',3,NULL,NULL),(115,'Accepting responsibility for your actions (and inactions) is the ultimate way to build trust internally and externally.','Принятие ответственности за свои действия (и бездействие) — это высший способ завоевать доверие как внутри, так и снаружи.',3,NULL,NULL),(116,'COMMITMENT TO DELIVER','Обязательство выполнить',3,NULL,NULL),(117,'Creating a great customer experience begins with staying true to the words we speak and the bonds we make.','Создание отличного опыта для клиентов начинается с верности словам, которые мы говорим, и обязательствам, которые мы даем.',3,NULL,NULL),(118,'DIVERSITY & INCLUSION','Разнообразие и инклюзия',3,NULL,NULL),(119,'Organisations succeed by bringing different lived experiences and a range of backgrounds into a shared environment where everyone has equal opportunity.','Организации достигают успеха, привлекая различные жизненные опыты и разнообразие происхождений в общую среду, где у всех равные возможности.',3,NULL,NULL),(120,'LEARNING','Обучение',3,NULL,NULL),(121,'No one has all the answers. A culture of humility and continuous learning is a bedrock principle of successful companies.','Никто не знает всех ответов. Культура смирения и непрерывного обучения является основополагающим принципом успешных компаний.',3,NULL,NULL),(122,'TEAMWORK','Командная работа',3,NULL,NULL),(123,'When people work together, they can create something greater than themselves as individuals.','Когда люди работают вместе, они могут создать что-то большее, чем они как личности.',3,NULL,NULL),(124,'Home','Ana səhifə',1,NULL,NULL),(125,'Services','Xidmətlər',1,NULL,NULL),(126,'Blogs','Bloqlar',1,NULL,NULL),(127,'Projects','Layihələr',1,NULL,NULL),(128,'Contact','Əlaqə',1,NULL,NULL),(129,'Services from us are trusted, reliable and professional. Please fill out the form completely, and we will get back to you as soon as possible.','Bizim xidmətlərimiz etibarlı, peşəkar və etibarlıdır. Xahiş edirik formu tam doldurun və ən qısa zamanda sizə cavab verəcəyik.',1,NULL,NULL),(130,'About Us','Haqqımızda',1,NULL,NULL),(131,'Home','Главная',3,NULL,NULL),(132,'Services','Услуги',3,NULL,NULL),(133,'Blogs','Блоги',3,NULL,NULL),(134,'Projects','Проекты',3,NULL,NULL),(135,'Contact','Контакт',3,NULL,NULL),(136,'Services from us are trusted, reliable and professional. Please fill out the form completely, and we will get back to you as soon as possible.','Наши услуги надёжны, профессиональны и заслуживают доверия. Пожалуйста, заполните форму полностью, и мы свяжемся с вами как можно скорее.',3,NULL,NULL),(137,'About Us','О нас',3,NULL,NULL),(138,'Electrical and Mechanical','Elektrik və Mexaniki',1,NULL,NULL),(139,'Industrial Company','Sənaye Şirkəti',1,NULL,NULL),(140,'home protection','evin qorunması',1,NULL,NULL),(141,'Air Conditioning and Ventilation','Havalandırma və Kondisioner',1,NULL,NULL),(142,'Plumbing and Water Engineering','Santexnika və Su Mühəndisliyi',1,NULL,NULL),(143,'IT and Data Networking','İT və Data Şəbəkələri',1,NULL,NULL),(144,'Fire Fighting','Yanğınsöndürmə',1,NULL,NULL),(145,'Security and CCTV','Təhlükəsizlik və Müşahidə Kameraları',1,NULL,NULL),(146,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','Placeholder for Azerbaijani translation for Lorem Ipsum text',1,NULL,NULL),(147,'Electrical and Mechanical','Электротехника и Механика',3,NULL,NULL),(148,'Industrial Company','Промышленная Компания',3,NULL,NULL),(149,'home protection','защита дома',3,NULL,NULL),(150,'Air Conditioning and Ventilation','Кондиционирование и Вентиляция',3,NULL,NULL),(151,'Plumbing and Water Engineering','Водопровод и Водное Инжиниринг',3,NULL,NULL),(152,'IT and Data Networking','ИТ и Сетевые Технологии',3,NULL,NULL),(153,'Fire Fighting','Пожаротушение',3,NULL,NULL),(154,'Security and CCTV','Безопасность и Видеонаблюдение',3,NULL,NULL),(155,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur порро facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.','Placeholder for Russian translation for Lorem Ipsum text',3,NULL,NULL),(156,'Find a Handyman In DC For Your Next Task','Növbəti işiniz üçün DC-də usta tapın',1,NULL,NULL),(157,'Find a Handyman In DC For Your Next Task','Найдите мастера в DC для вашей следующей задачи',3,NULL,NULL),(158,'Shelter','Sığınacaq',1,NULL,NULL),(159,'ADAS Shelter','ADAS Sığınacaq',1,NULL,NULL),(160,'ADAS Shelter Project','ADAS Sığınacaq Layihəsi',1,NULL,NULL),(161,'© Copyright 2024 sığınacaq.az - All Right Reserved. Made by WebCoder','© Copyright 2024 sığınacaq.az - Bütün Hüquqlar Qorunur. WebCoder tərəfindən yaradılmışdır.',1,NULL,NULL),(162,'40° 24\' 33.3504\'\' N and 49° 52\' 1.5312\'\' E.','40° 24\' 33.3504\'\' Ş və 49° 52\' 1.5312\'\' Q.',1,NULL,NULL),(163,'Shelter','Приют',3,NULL,NULL),(164,'ADAS Shelter','ADAS Приют',3,NULL,NULL),(165,'ADAS Shelter Project','Проект ADAS Приют',3,NULL,NULL),(166,'© Copyright 2024 sığınacaq.az - All Right Reserved. Made by WebCoder','© Copyright 2024 приют.az - Все права защищены. Создано WebCoder.',3,NULL,NULL),(167,'40° 24\' 33.3504\'\' N and 49° 52\' 1.5312\'\' E.','40° 24\' 33.3504\'\' С и 49° 52\' 1.5312\'\' В.',3,NULL,NULL),(168,'Search','Axtarış',1,NULL,NULL),(169,'Back to home','Ana Səyfəyə qayıt',1,NULL,NULL),(170,'Page Not Found','Səhifə Tapılmadı',1,NULL,NULL),(171,'Sorry, we couldn\'t find the page you \'re looking for','Üzr istəyirik, axtardığınız səhifəni tapa bilmədik',1,NULL,NULL),(172,'Follow Us','Bizi izlə',1,NULL,NULL),(173,'Make An Enquiry','Sorğu Göndərin',1,NULL,NULL),(174,'<span class=\"best-team-text\">Meet Our <b>Best Team</b></span>','<span class=\"best-team-text\">Ən Yaxşı <b>Komandamızı Tanıyın</b></span>',1,NULL,'2024-11-07 06:17:50'),(175,'Our Partner','Tərəfdaşımız',1,NULL,NULL),(176,'Schedule a Service','Xidmət Planlaşdırın',1,NULL,NULL),(177,'You will be satisfy with our work contact us today & help is on the way','Bizim işimizdən məmnun qalacaqsınız, bu gün bizimlə əlaqə saxlayın və kömək yolda olacaq',1,NULL,NULL),(178,'Book Now','İndi bron edin',1,NULL,NULL),(179,'View All Blogs','Bütün Bloqlara Bax',1,NULL,NULL),(180,'Blog','Bloq',1,NULL,NULL),(181,'See More','Daha çox bax',1,NULL,NULL),(182,'View All Projects','Bütün Layihələrə Bax',1,NULL,NULL),(183,'Need Help?','Kömək Lazımdır?',1,NULL,NULL),(184,'View All Services','Bütün Xidmətlərə Bax',1,NULL,NULL),(185,'Client','Müştəri',1,NULL,NULL),(186,'Category','Kateqoriya',1,NULL,NULL),(187,'Location','Məkan',1,NULL,NULL),(188,'Date','Tarix',1,NULL,NULL),(189,'Search','Поиск',3,NULL,NULL),(190,'Back to home','Домой',3,NULL,NULL),(191,'Page Not Found','Страница не найдена',3,NULL,NULL),(192,'Sorry, we couldn\'t find the page you \'re looking for','Извините, мы не можем найти страницу, которую вы ищете',3,NULL,NULL),(193,'Follow Us','Следите за нами',3,NULL,NULL),(194,'Make An Enquiry','Отправить запрос',3,NULL,NULL),(195,'<span class=\"best-team-text\">Meet Our <b>Best Team</b></span>','<span class=\"best-team-text\">Познакомьтесь с нашей <b>лучшей командой</b</span>',3,NULL,'2024-11-07 06:17:39'),(196,'Our Partner','Наш партнер',3,NULL,NULL),(197,'Schedule a Service','Запланировать услугу',3,NULL,NULL),(198,'You will be satisfy with our work contact us today & help is on the way','Вы будете довольны нашей работой, свяжитесь с нами сегодня, и помощь уже в пути',3,NULL,NULL),(199,'Book Now','Забронировать сейчас',3,NULL,NULL),(200,'View All Blogs','Посмотреть все блоги',3,NULL,NULL),(201,'Blog','Блог',3,NULL,NULL),(202,'See More','Смотреть больше',3,NULL,NULL),(203,'View All Projects','Посмотреть все проекты',3,NULL,NULL),(204,'Need Help?','Нужна помощь?',3,NULL,NULL),(205,'View All Services','Посмотреть все услуги',3,NULL,NULL),(206,'Client','Клиент',3,NULL,NULL),(207,'Category','Категория',3,NULL,NULL),(208,'Location','Местоположение',3,NULL,NULL),(209,'Date','Дата',3,NULL,NULL),(210,'Protection Center','Quruma Mərkəzi',1,'2024-10-25 09:01:19','2024-10-25 09:01:19'),(211,'Products','Товары',3,'2024-10-30 08:01:17','2024-10-30 08:02:59'),(212,'Shelters','Sığınacaqlar',1,'2024-10-30 08:03:43','2024-10-30 08:04:11'),(213,'Shelters','Приюты',3,'2024-10-30 08:05:01','2024-10-30 08:05:01'),(214,'Equipment and Accessories','Оборудование и аксессуары',3,'2024-10-30 08:08:24','2024-10-30 08:08:24'),(215,'Equipment and Accessories','Avadanlıq və Aksesuarlar',1,'2024-10-30 08:09:41','2024-10-30 08:09:41'),(216,'Learn More','Daha Ətraflı',1,'2024-11-05 06:18:20','2024-11-05 06:18:20'),(217,'Learn More','Узнать больше',3,'2024-11-05 06:19:02','2024-11-05 06:19:02'),(218,'Mini Bunker','Kiçik Bunker',1,'2024-11-06 03:47:11','2024-11-06 03:47:11'),(219,'Mini Bunker','Малый Бункер',3,'2024-11-06 03:47:49','2024-11-06 03:47:49'),(220,'Standard Bomb Shelter','Standart Bomba Sığınacağı',1,'2024-11-06 03:50:02','2024-11-06 03:50:02'),(221,'Standard Bomb Shelter','Стандартное бомбоубежище',3,'2024-11-06 03:51:16','2024-11-06 03:51:16'),(222,'Luxury Bunker','Луксовый бункер',3,'2024-11-06 03:52:42','2024-11-06 03:52:42'),(223,'Air Filtration Systems','Hava filtrləmə sistemləri',1,'2024-11-06 03:54:17','2024-11-06 03:54:17'),(224,'Air Filtration Systems','Системы фильтрации воздуха',3,'2024-11-06 03:55:35','2024-11-06 03:55:35'),(225,'Disinfection Chambers','Dezinfeksiya kameraları',1,'2024-11-06 03:56:54','2024-11-06 03:56:54'),(226,'Disinfection Chambers','Камеры Дезинфекции',3,'2024-11-06 03:57:30','2024-11-06 03:57:30'),(227,'Water Supply Systems','Su Təhcizatı Sistemləri',1,'2024-11-06 04:00:31','2024-11-06 04:00:31'),(228,'Water Supply Systems','Системы водоснабжения',3,'2024-11-06 04:01:24','2024-11-06 04:01:24'),(229,'Pages','Səyfələr',1,'2024-11-06 04:24:42','2024-11-06 04:24:42'),(230,'Pages','Страницы',3,'2024-11-06 04:25:34','2024-11-06 04:25:34'),(231,'Contact Us','Əlaqə',1,'2024-11-06 04:28:12','2024-11-06 04:28:12'),(232,'Contact Us','Свяжитесь с нами',3,'2024-11-06 04:28:45','2024-11-06 04:28:45'),(233,'Azadliq Avenue 14, Baku, Azerbaijan','Azadlıq Prospekti 14, Bakı, Azərbaycan',1,'2024-11-06 04:33:50','2024-11-06 04:33:50'),(234,'Azadliq Avenue 14, Baku, Azerbaijan','пропект Азадлыг 14, Баку, Азербайджан',3,'2024-11-06 04:34:46','2024-11-06 04:35:05'),(235,'© Copyright 2024 shelter.az - All Right Reserved. Made by <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder</a>','© 2024 shelter.az - Bütün hüqüqlar qorunur. <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder tərəfindən hazırlanıb</a>',1,'2024-11-06 04:37:12','2024-11-06 04:37:12'),(236,'© Copyright 2024 shelter.az - All Right Reserved. Made by <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder</a>','© 2024 shelter.az - Все права защишены. Разработан в <a href=\"https://webcoder.az/\" class=\"footer-link\" title=\"WebCoder Official Site\">WebCoder</a>',3,'2024-11-06 04:39:13','2024-11-06 04:39:13'),(237,'<div class=\"contact-hero-title\">Get in<span>Touch</span></div>','<div class=\"contact-hero-title\">Əlaqə<span>Saxlayın</span></div>',1,'2024-11-06 05:00:38','2024-11-07 08:15:28'),(238,'<div class=\"contact-hero-title\">Get in<span>Touch</span></div>','<div class=\"contact-hero-title\">Свяжитесь<span>с нами</span></div>',3,'2024-11-06 05:01:14','2024-11-07 08:16:17'),(239,'Services from us are trusted, reliable and professional. Please fill out the form completely, and we will get back to you as soon as possible','Bizim xidmətlər etibarlı, etibarlı və peşəkardır. Zəhmət olmasa formanı tam doldurun və biz ən qısa zamanda sizinlə əlaqə saxlayacağıq',1,'2024-11-06 05:02:26','2024-11-06 05:02:26'),(240,'Services from us are trusted, reliable and professional. Please fill out the form completely, and we will get back to you as soon as possible','Наши услуги заслуживают доверия, надежны и профессиональны. Пожалуйста, заполните форму полностью, и мы свяжемся с вами как можно скорее',3,'2024-11-06 05:03:25','2024-11-06 05:03:42'),(241,'Name','Ad',1,'2024-11-06 05:09:45','2024-11-06 05:09:45'),(242,'Name','Имя',3,'2024-11-06 05:10:19','2024-11-06 05:10:19'),(243,'Email','Elektron poçt',1,'2024-11-06 05:11:11','2024-11-06 05:11:11'),(244,'Email','Электронная почта',3,'2024-11-06 05:11:39','2024-11-06 05:11:39'),(245,'Phone number','Telefon Nömrəsi',1,'2024-11-06 05:12:35','2024-11-06 05:13:59'),(246,'Phone number','Номер телефона',3,'2024-11-06 05:13:12','2024-11-06 05:13:35'),(247,'How did you find us?','Bizi necə tapdız?',1,'2024-11-06 05:14:46','2024-11-06 05:14:46'),(248,'How did you find us?','Как вы нашли нас?',3,'2024-11-06 05:16:12','2024-11-06 05:16:12'),(249,'Send','Göndər',1,'2024-11-06 05:17:49','2024-11-06 05:17:49'),(250,'Send','Отправить',3,'2024-11-06 05:18:48','2024-11-06 05:18:48'),(251,'Brand Values','Dəyərlərimiz',1,'2024-11-07 04:55:03','2024-11-07 04:55:03'),(252,'Brand Values','Наши ценности',3,'2024-11-07 04:55:36','2024-11-07 04:55:36'),(253,'Social Media','Sosial Şəbəkə',1,'2024-11-07 05:17:50','2024-11-07 05:17:50'),(254,'Social Media','Социальные сети',3,'2024-11-07 05:18:28','2024-11-07 05:18:28'),(255,'Friends or Relativies','Dost-Tanışdan',1,'2024-11-07 05:19:28','2024-11-07 05:19:28'),(256,'Friends or Relativies','Друзья и знакомые',3,'2024-11-07 05:20:00','2024-11-07 05:20:00'),(257,'News','Xəbərlər',1,'2024-11-07 05:21:57','2024-11-07 05:21:57'),(258,'News','Новости',3,'2024-11-07 05:22:18','2024-11-07 05:22:18'),(259,'Ads','Reklamlar',1,'2024-11-07 05:22:56','2024-11-07 05:22:56'),(260,'Ads','Рекламы',3,'2024-11-07 05:23:20','2024-11-07 05:23:20'),(261,'Other','Digər',1,'2024-11-07 05:24:03','2024-11-07 05:24:03'),(262,'Other','Другое',3,'2024-11-07 05:24:25','2024-11-07 05:24:25'),(263,'Products','Məhsullar',1,'2024-11-07 06:44:50','2024-11-07 06:44:50'),(264,'Other field','Digər sahə',1,'2024-11-07 08:06:29','2024-11-07 08:06:29'),(265,'Other field','Другое поле',3,'2024-11-07 08:06:55','2024-11-07 08:06:55'),(266,'must be entered','mütləqdir',1,'2024-11-07 08:07:28','2024-11-07 08:07:28'),(267,'must be entered','обязателен',3,'2024-11-07 08:07:53','2024-11-07 08:07:53'),(268,'Your Request','Sizin Sorğunuz',1,'2024-11-14 05:00:53','2024-11-14 05:00:53'),(269,'Your Request','Ваш запрос',3,'2024-11-14 05:01:21','2024-11-14 05:01:21'),(270,'Fax','Факс',3,'2024-11-14 05:02:31','2024-11-14 05:02:31'),(271,'Search Results','Axtarış nəticələri',1,'2024-11-15 04:52:08','2024-11-15 04:52:08'),(272,'Search Results','Результаты поиска',3,'2024-11-15 04:52:40','2024-11-15 04:52:40'),(273,'All','Hamısı',1,'2024-11-15 04:53:16','2024-11-15 04:53:16'),(274,'All','Все',3,'2024-11-15 04:53:41','2024-11-15 04:53:41'),(275,'Request Sent Successfully','Məlumat uğurla göndərildi',1,'2024-11-18 07:15:25','2024-11-18 07:15:25'),(276,'Request Sent Successfully','Данные успешно отправлены',3,'2024-11-18 07:15:56','2024-11-18 07:15:56');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@shelter.az','$2y$12$dq3.z7P5avt7VBKKTrlyC.6Mu8zBkhs7ff3lpswl7w0zzDfIBD6yi',0,'2024-10-15 08:35:09','2024-10-15 08:35:09');
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

-- Dump completed on 2024-11-18 15:21:57
