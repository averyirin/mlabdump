-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: mlab
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `updatedby_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `keywords` longtext COLLATE utf8_unicode_ci,
  `active_version` double DEFAULT '1',
  `created` date NOT NULL,
  `updated` datetime NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `published` int(11) DEFAULT '0',
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tags` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name_index` (`name`),
  KEY `path_index` (`path`),
  KEY `created_index` (`created`),
  KEY `updated_index` (`updated`),
  KEY `enabled_index` (`enabled`),
  KEY `active_version_index` (`active_version`),
  KEY `updatedby_id_index` (`updatedby_id`),
  KEY `template_id_index` (`template_id`),
  KEY `user_id_index` (`user_id`),
  KEY `uid_index` (`uid`),
  CONSTRAINT `FK_C96E70CF5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `template` (`id`),
  CONSTRAINT `FK_C96E70CFA43E35E8` FOREIGN KEY (`updatedby_id`) REFERENCES `usr` (`id`),
  CONSTRAINT `FK_C96E70CFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `usr` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (4,1,1,1,'Hello World App','0089be5fXc74bX4567X8d02Xaf592f5c10ed','The best app in the world','hello, app, best',1,'2018-03-01','2018-03-01 13:46:36',1,0,'com.test.apps.0089be5fXc74bX4567X8d02Xaf592f5c10ed','[\"General\",null,null]'),(14,1,1,1,'New Created App','614f95edXa7e2X4c77Xbbc9X78c65ec8f9fc','Test created app','test, created, app',1,'2018-04-05','2018-04-05 13:24:46',1,0,'com.test.apps.614f95edXa7e2X4c77Xbbc9X78c65ec8f9fc','[\"General\",null,null]'),(15,1,1,1,'test','39ffd5e0Xa62fX4252X8fc3X15197552058e','test app','test, app',1,'2018-04-06','2018-04-06 14:57:03',1,0,'com.test.apps.39ffd5e0Xa62fX4252X8fc3X15197552058e','[\"General\",null,null]'),(16,1,1,1,'New App','1734bf8bXeaeaX4b2cX92b4X1f8f9a2d49f0','A brand new app to do more testing','please, fix',1,'2018-04-06','2018-04-06 15:22:40',1,0,'com.test.apps.1734bf8bXeaeaX4b2cX92b4X1f8f9a2d49f0','[\"General\",null,null]'),(18,1,1,1,'MPC LSC','7c7f3fe0X5173X4138X81a5Xa08fd9786070','Mlab is an app creation framework that enables non-programmers to create mobile applications and for distribution through private app markets (CAF App Store). It facilitates creations, distribution and maintenance of apps (and the content in those apps)','tutorial, MPCLSC',1,'2018-04-20','2018-04-20 09:24:31',1,0,'com.test.apps.7c7f3fe0X5173X4138X81a5Xa08fd9786070','[\"General\",null,null]');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_version`
--

DROP TABLE IF EXISTS `app_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) DEFAULT NULL,
  `version` double NOT NULL DEFAULT '1',
  `enabled` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `app_index` (`app_id`),
  KEY `enabled_index` (`enabled`),
  KEY `version_index` (`version`),
  CONSTRAINT `FK_111` FOREIGN KEY (`app_id`) REFERENCES `app` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_version`
--

LOCK TABLES `app_version` WRITE;
/*!40000 ALTER TABLE `app_version` DISABLE KEYS */;
INSERT INTO `app_version` VALUES (4,4,1,1),(14,14,1,1),(15,15,1,1),(16,16,1,1),(18,18,1,1);
/*!40000 ALTER TABLE `app_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_groups`
--

DROP TABLE IF EXISTS `apps_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apps_groups` (
  `app_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`app_id`,`group_id`),
  KEY `IDX_4ADA29A77987212D` (`app_id`),
  KEY `IDX_4ADA29A7FE54D947` (`group_id`),
  CONSTRAINT `FK_4ADA29A77987212D` FOREIGN KEY (`app_id`) REFERENCES `app` (`id`),
  CONSTRAINT `FK_4ADA29A7FE54D947` FOREIGN KEY (`group_id`) REFERENCES `grp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_groups`
--

LOCK TABLES `apps_groups` WRITE;
/*!40000 ALTER TABLE `apps_groups` DISABLE KEYS */;
INSERT INTO `apps_groups` VALUES (4,1),(14,1),(15,1),(16,1),(18,1);
/*!40000 ALTER TABLE `apps_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `root` int(11) DEFAULT NULL,
  `lvl` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_64C19C1727ACA70` (`parent_id`),
  KEY `name_index` (`name`),
  KEY `enabled_index` (`enabled`),
  CONSTRAINT `FK_64C19C1727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `version` double DEFAULT NULL,
  `order_by` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name_index` (`name`),
  KEY `enabled_index` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,'audio','Add audio file','audio',1,0.9,1),(2,'chapter','Chapter heading','chapter',1,1.1,2),(3,'eventcal','Google Event Calendar','eventcal',1,0.9,3),(4,'googlemap','Basic Google map with markers','googlemap',1,1.2,4),(5,'h1','Headlines for your content','h1',1,1.1,5),(6,'img','Image with caption','img',1,1.1,6),(7,'img_text','Image with text','img_text',1,1.1,7),(8,'index','Index of the pages in this app','index',1,1.1,8),(9,'mysql_basic','Store data from the current component on a MySQL server','mysql_basic',1,1.1,9),(10,'ol','Ordered (numbered) list','ol',1,1.1,10),(11,'p','Body text','p',1,1.1,11),(12,'quiz','Quiz','quiz',1,0.3,12),(13,'sof','Geneva Convention','sof',1,1.1,13),(14,'table','Table - add and remove columns and rows','table',1,1.1,14),(15,'ul','Bullet point list','ul',1,1.1,15),(16,'video','Add video file','video',1,0.9,16),(17,'youtube','YouTube','youtube',1,1.1,17);
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_groups`
--

DROP TABLE IF EXISTS `components_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `credential` text COLLATE utf8_unicode_ci,
  `access_state` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_index` (`component_id`),
  KEY `group_index` (`group_id`),
  CONSTRAINT `FK_178B28C3E2ABAFFF` FOREIGN KEY (`component_id`) REFERENCES `component` (`id`),
  CONSTRAINT `FK_178B28C3FE54D947` FOREIGN KEY (`group_id`) REFERENCES `grp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_groups`
--

LOCK TABLES `components_groups` WRITE;
/*!40000 ALTER TABLE `components_groups` DISABLE KEYS */;
INSERT INTO `components_groups` VALUES (1,1,1,NULL,3),(2,2,1,NULL,3),(3,3,1,NULL,3),(4,4,1,NULL,3),(5,5,1,NULL,3),(6,6,1,NULL,3),(7,7,1,NULL,3),(8,8,1,NULL,3),(9,9,1,NULL,3),(10,10,1,NULL,3),(11,11,1,NULL,3),(12,12,1,NULL,3),(13,13,1,NULL,3),(14,14,1,NULL,3),(15,15,1,NULL,3),(16,16,1,NULL,3),(17,17,1,NULL,3);
/*!40000 ALTER TABLE `components_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp`
--

DROP TABLE IF EXISTS `grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `categories` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FFD56EFF5E237E06` (`name`),
  KEY `name_index` (`name`),
  KEY `is_default_index` (`is_default`),
  KEY `enabled_index` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp`
--

LOCK TABLES `grp` WRITE;
/*!40000 ALTER TABLE `grp` DISABLE KEYS */;
INSERT INTO `grp` VALUES (1,'General','General group for app access',1,1,'a:0:{}','[{\"text\":\"General\",\"children\":[{\"text\":\"Information\"},{\"text\":\"Teaching\"}]}]');
/*!40000 ALTER TABLE `grp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `route_index` (`route`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (1,'app/builder','This is a list of applications');
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_html` longtext COLLATE utf8_unicode_ci,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `help` longtext COLLATE utf8_unicode_ci,
  `parent_id` int(11) NOT NULL,
  `order_by` int(11) NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `filter_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_php` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id_index` (`parent_id`),
  KEY `order_by_index` (`order_by`),
  KEY `filter_role_index` (`filter_role`),
  KEY `filter_url_index` (`filter_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `compatible_with` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `version` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_index` (`name`),
  KEY `compatible_with_index` (`compatible_with`),
  KEY `enabled_index` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
INSERT INTO `template` VALUES (1,'basic_nologo','Template for initial user by guests, no logo',NULL,'basic_nologo',1,NULL);
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates_groups`
--

DROP TABLE IF EXISTS `templates_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates_groups` (
  `template_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`template_id`,`group_id`),
  KEY `IDX_F43FD2D35DA0FB8` (`template_id`),
  KEY `IDX_F43FD2D3FE54D947` (`group_id`),
  CONSTRAINT `FK_F43FD2D35DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `template` (`id`),
  CONSTRAINT `FK_F43FD2D3FE54D947` FOREIGN KEY (`group_id`) REFERENCES `grp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates_groups`
--

LOCK TABLES `templates_groups` WRITE;
/*!40000 ALTER TABLE `templates_groups` DISABLE KEYS */;
INSERT INTO `templates_groups` VALUES (1,1);
/*!40000 ALTER TABLE `templates_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates_groups_data`
--

DROP TABLE IF EXISTS `templates_groups_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates_groups_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_state` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `template_id` (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `access_state` (`access_state`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates_groups_data`
--

LOCK TABLES `templates_groups_data` WRITE;
/*!40000 ALTER TABLE `templates_groups_data` DISABLE KEYS */;
INSERT INTO `templates_groups_data` VALUES (1,1,1,3);
/*!40000 ALTER TABLE `templates_groups_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `created` date NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A87C621CE2ABAFFF` (`component_id`),
  UNIQUE KEY `UNIQ_A87C621CA76ED395` (`user_id`),
  UNIQUE KEY `UNIQ_A87C621C7987212D` (`app_id`),
  KEY `created_index` (`created`),
  KEY `action_index` (`action`),
  CONSTRAINT `FK_A87C621C7987212D` FOREIGN KEY (`app_id`) REFERENCES `app` (`id`),
  CONSTRAINT `FK_A87C621CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `usr` (`id`),
  CONSTRAINT `FK_A87C621CE2ABAFFF` FOREIGN KEY (`component_id`) REFERENCES `component` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_FF8AB7E0A76ED395` (`user_id`),
  KEY `IDX_FF8AB7E0FE54D947` (`group_id`),
  CONSTRAINT `FK_FF8AB7E0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `usr` (`id`),
  CONSTRAINT `FK_FF8AB7E0FE54D947` FOREIGN KEY (`group_id`) REFERENCES `grp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr`
--

DROP TABLE IF EXISTS `usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `updated` datetime NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `locale` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1762498C92FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_1762498CA0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_1762498CC05FB297` (`confirmation_token`),
  KEY `email_index` (`email`),
  KEY `password_index` (`password`),
  KEY `created_index` (`created`),
  KEY `updated_index` (`updated`),
  KEY `username_index` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr`
--

LOCK TABLES `usr` WRITE;
/*!40000 ALTER TABLE `usr` DISABLE KEYS */;
INSERT INTO `usr` VALUES (1,'admin','jD6qXCCKgI2obhT6P6yRu9jtYpYG5MagSSjP1SnOo5ElazbS17nawe1lBMaF3Cx6FDgYM58ByPKD1vykhoZFgA==','/75LO6S3.V32Q1XeKYF4lDxxR0FgTQqTJ0JkfwfmHpw','2017-01-01','2018-04-20 08:10:55','admin','admin','admin',1,'2018-04-20 08:10:55',0,0,NULL,NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}',0,NULL,'en_GB');
/*!40000 ALTER TABLE `usr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-15 11:55:50
