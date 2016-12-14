-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: eventweekly_cron
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Table structure for table `core_acl_access_list`
--

DROP TABLE IF EXISTS `core_acl_access_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_acl_access_list` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `role_id` smallint(3) NOT NULL,
  `resource_id` smallint(3) NOT NULL,
  `access_id` smallint(3) NOT NULL,
  `allowed` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_id` (`role_id`,`resource_id`,`access_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_acl_access_list`
--

LOCK TABLES `core_acl_access_list` WRITE;
/*!40000 ALTER TABLE `core_acl_access_list` DISABLE KEYS */;
INSERT INTO `core_acl_access_list` VALUES (1,1,1,1,1);
/*!40000 ALTER TABLE `core_acl_access_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_acl_resource`
--

DROP TABLE IF EXISTS `core_acl_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_acl_resource` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_acl_resource`
--

LOCK TABLES `core_acl_resource` WRITE;
/*!40000 ALTER TABLE `core_acl_resource` DISABLE KEYS */;
INSERT INTO `core_acl_resource` VALUES (1,'admin_area',NULL);
/*!40000 ALTER TABLE `core_acl_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_acl_resource_access`
--

DROP TABLE IF EXISTS `core_acl_resource_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_acl_resource_access` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `resource_id` smallint(3) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource_id` (`resource_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_acl_resource_access`
--

LOCK TABLES `core_acl_resource_access` WRITE;
/*!40000 ALTER TABLE `core_acl_resource_access` DISABLE KEYS */;
INSERT INTO `core_acl_resource_access` VALUES (1,1,'*');
/*!40000 ALTER TABLE `core_acl_resource_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_acl_role`
--

DROP TABLE IF EXISTS `core_acl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_acl_role` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_acl_role`
--

LOCK TABLES `core_acl_role` WRITE;
/*!40000 ALTER TABLE `core_acl_role` DISABLE KEYS */;
INSERT INTO `core_acl_role` VALUES (1,'admin',NULL),(2,'guest',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `core_acl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_acl_role_inherit`
--

DROP TABLE IF EXISTS `core_acl_role_inherit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_acl_role_inherit` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `role_id` smallint(3) NOT NULL,
  `inherit_role_id` smallint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_id` (`role_id`,`inherit_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_acl_role_inherit`
--

LOCK TABLES `core_acl_role_inherit` WRITE;
/*!40000 ALTER TABLE `core_acl_role_inherit` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_acl_role_inherit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_menu_item`
--

DROP TABLE IF EXISTS `core_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_menu_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `controller_id` varchar(200) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '1',
  `status` enum('active','not_active') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Menu Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_menu_item`
--

LOCK TABLES `core_menu_item` WRITE;
/*!40000 ALTER TABLE `core_menu_item` DISABLE KEYS */;
INSERT INTO `core_menu_item` VALUES (1,1,'',0,'','Settings','Project settings','',5,'active'),(2,1,'-1',1,'','User acccesses','','',1,'active'),(3,1,'6',2,'','Roles','','',1,'active'),(4,1,'-1',1,'','Menu','','',2,'active'),(5,1,'-1',1,'','Mvc','','',3,'active'),(7,1,'2',4,'','Items','','',2,'active'),(8,1,'3',5,'','Modules','','',1,'active'),(9,1,'4',5,'','Controllers','','',2,'active'),(10,1,'5',5,'','Actions','','',3,'active'),(11,1,'1',4,'','Menus','','',1,'active'),(12,1,'7',2,'','Accesses','','',4,'active'),(13,1,'8',2,'','Resources','','',2,'active'),(14,1,'9',2,'','Access list','','',5,'active'),(15,1,'',0,'','Cron','','',3,'active'),(16,1,'11',15,'','Job','','',0,'active'),(17,1,'12',15,'','Process','','',0,'active'),(18,1,'13',15,'','Log','','',0,'active'),(19,1,'14',15,'','Settings','Cron settings','',0,'active'),(20,1,'15',2,'','Users','','',5,'active');
/*!40000 ALTER TABLE `core_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_menu_menus`
--

DROP TABLE IF EXISTS `core_menu_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_menu_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Menu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_menu_menus`
--

LOCK TABLES `core_menu_menus` WRITE;
/*!40000 ALTER TABLE `core_menu_menus` DISABLE KEYS */;
INSERT INTO `core_menu_menus` VALUES (1,'admin');
/*!40000 ALTER TABLE `core_menu_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mvc_action`
--

DROP TABLE IF EXISTS `core_mvc_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mvc_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','not_active') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `controller_id` (`controller_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mvc_action`
--

LOCK TABLES `core_mvc_action` WRITE;
/*!40000 ALTER TABLE `core_mvc_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mvc_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mvc_controller`
--

DROP TABLE IF EXISTS `core_mvc_controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mvc_controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','not_active') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mvc_controller`
--

LOCK TABLES `core_mvc_controller` WRITE;
/*!40000 ALTER TABLE `core_mvc_controller` DISABLE KEYS */;
INSERT INTO `core_mvc_controller` VALUES (1,2,'menu-menus','active'),(2,2,'menu-item','active'),(3,2,'mvc-module','active'),(4,2,'mvc-controller','active'),(5,2,'mvc-action','active'),(6,2,'acl-role','active'),(7,2,'acl-access','active'),(8,2,'acl-resource','active'),(9,2,'acl-accessList','active'),(10,2,'acl-roleInherit','active'),(11,3,'job','active'),(12,3,'process','active'),(13,3,'log','active'),(14,3,'setting','active'),(15,4,'users','active');
/*!40000 ALTER TABLE `core_mvc_controller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mvc_module`
--

DROP TABLE IF EXISTS `core_mvc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mvc_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('active','not_active') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mvc_module`
--

LOCK TABLES `core_mvc_module` WRITE;
/*!40000 ALTER TABLE `core_mvc_module` DISABLE KEYS */;
INSERT INTO `core_mvc_module` VALUES (1,'admin','active'),(2,'extjs-cms','active'),(3,'cron','active'),(4,'user','active');
/*!40000 ALTER TABLE `core_mvc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_job`
--

DROP TABLE IF EXISTS `cron_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `command` varchar(200) NOT NULL,
  `second` varchar(100) NOT NULL,
  `minute` varchar(100) NOT NULL,
  `hour` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `week_day` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ttl` int(11) NOT NULL DEFAULT '0',
  `max_attempts` tinyint(2) NOT NULL DEFAULT '5',
  `description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_job`
--

LOCK TABLES `cron_job` WRITE;
/*!40000 ALTER TABLE `cron_job` DISABLE KEYS */;
INSERT INTO `cron_job` VALUES (2,'test one 2','./cron.php test one','*/10','*','*','*','*','*',0,0,5,''),(7,'test two','./cron.php test two','*/10','*','*','*','*','*',0,0,5,''),(8,'test three','./cron.php test three','*/10','*','*','*','*','*',0,0,5,'');
/*!40000 ALTER TABLE `cron_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_process`
--

DROP TABLE IF EXISTS `cron_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `command` varchar(255) NOT NULL,
  `action` varchar(40) NOT NULL,
  `pid` int(6) NOT NULL,
  `status` enum('run','running','completed','aborted','error','stopped','stop','waiting','finished') NOT NULL,
  `stime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` int(11) NOT NULL DEFAULT '0',
  `phash` varchar(40) NOT NULL DEFAULT '1',
  `attempt` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `phash` (`phash`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_process`
--

LOCK TABLES `cron_process` WRITE;
/*!40000 ALTER TABLE `cron_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_process_log`
--

DROP TABLE IF EXISTS `cron_process_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_process_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `process_id` (`process_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_process_log`
--

LOCK TABLES `cron_process_log` WRITE;
/*!40000 ALTER TABLE `cron_process_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_process_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_settings`
--

DROP TABLE IF EXISTS `cron_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(200) NOT NULL,
  `max_pool` int(11) NOT NULL DEFAULT '10',
  `min_free_memory_mb` int(11) NOT NULL DEFAULT '0',
  `min_free_memory_percentage` int(11) NOT NULL DEFAULT '10',
  `max_cpu_load` int(11) NOT NULL DEFAULT '40',
  `action_status` smallint(2) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_settings`
--

LOCK TABLES `cron_settings` WRITE;
/*!40000 ALTER TABLE `cron_settings` DISABLE KEYS */;
INSERT INTO `cron_settings` VALUES (1,'develop',20,0,10,40,1,1);
/*!40000 ALTER TABLE `cron_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_users`
--

DROP TABLE IF EXISTS `user_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(72) NOT NULL,
  `name` varchar(200) NOT NULL,
  `core_acl_role_id` smallint(1) NOT NULL,
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_users`
--

LOCK TABLES `user_users` WRITE;
/*!40000 ALTER TABLE `user_users` DISABLE KEYS */;
INSERT INTO `user_users` VALUES (1,'temafey@gmail.com','$2a$08$eTR7RK/I4j9VgBGHAFHBles3uCzqqZdbHQet0KiSRe82YLu76Nh4.','Artem',1,1);
/*!40000 ALTER TABLE `user_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-14 23:57:03
