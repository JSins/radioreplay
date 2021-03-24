-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: rdbms.strato.de    Database: dbs1679424
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `replay_commentmeta`
--

DROP TABLE IF EXISTS `replay_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_commentmeta`
--

LOCK TABLES `replay_commentmeta` WRITE;
/*!40000 ALTER TABLE `replay_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `replay_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_comments`
--

DROP TABLE IF EXISTS `replay_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_comments`
--

LOCK TABLES `replay_comments` WRITE;
/*!40000 ALTER TABLE `replay_comments` DISABLE KEYS */;
INSERT INTO `replay_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-03-22 20:23:57','2021-03-22 20:23:57','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `replay_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_links`
--

DROP TABLE IF EXISTS `replay_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_links`
--

LOCK TABLES `replay_links` WRITE;
/*!40000 ALTER TABLE `replay_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `replay_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_options`
--

DROP TABLE IF EXISTS `replay_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_options`
--

LOCK TABLES `replay_options` WRITE;
/*!40000 ALTER TABLE `replay_options` DISABLE KEYS */;
INSERT INTO `replay_options` VALUES (1,'siteurl','https://radioreplay.com/radioreplay/wordpress','yes'),(2,'home','https://radioreplay.com/radioreplay/wordpress','yes'),(3,'blogname','Radio RePLAY','yes'),(4,'blogdescription','Der Momente-Podcast','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','nutzlosundso@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:125:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:35:\"^podcast-download/([^/]*)/([^/]*)/?\";s:37:\"index.php?podcast_episode=$matches[1]\";s:33:\"^podcast-player/([^/]*)/([^/]*)/?\";s:56:\"index.php?podcast_episode=$matches[1]&podcast_ref=player\";s:23:\"^feed/podcast/([^/]*)/?\";s:49:\"index.php?feed=podcast&podcast_series=$matches[1]\";s:10:\"podcast/?$\";s:27:\"index.php?post_type=podcast\";s:48:\"podcast/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:44:\"index.php?post_type=podcast&feed=$matches[1]\";s:43:\"podcast/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:44:\"index.php?post_type=podcast&feed=$matches[1]\";s:27:\"podcast/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=podcast&paged=$matches[1]\";s:55:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"category/(.+?)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:52:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:47:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:53:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:48:\"type/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"podcast/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"podcast/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"podcast/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"podcast/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"podcast/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"podcast/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"podcast/([^/]+)/embed/?$\";s:40:\"index.php?podcast=$matches[1]&embed=true\";s:28:\"podcast/([^/]+)/trackback/?$\";s:34:\"index.php?podcast=$matches[1]&tb=1\";s:56:\"podcast/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:46:\"index.php?podcast=$matches[1]&feed=$matches[2]\";s:51:\"podcast/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:46:\"index.php?podcast=$matches[1]&feed=$matches[2]\";s:36:\"podcast/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?podcast=$matches[1]&paged=$matches[2]\";s:43:\"podcast/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?podcast=$matches[1]&cpage=$matches[2]\";s:32:\"podcast/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?podcast=$matches[1]&page=$matches[2]\";s:24:\"podcast/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"podcast/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"podcast/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"podcast/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"podcast/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"podcast/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"series/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:45:\"index.php?series=$matches[1]&feed=$matches[2]\";s:50:\"series/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:45:\"index.php?series=$matches[1]&feed=$matches[2]\";s:23:\"series/([^/]+)/embed/?$\";s:39:\"index.php?series=$matches[1]&embed=true\";s:35:\"series/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?series=$matches[1]&paged=$matches[2]\";s:17:\"series/([^/]+)/?$\";s:28:\"index.php?series=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:40:\"feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:35:\"(feed|rdf|rss|rss2|atom|podcast)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:49:\"comments/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"comments/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:52:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:47:\"search/(.+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:55:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:50:\"author/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:64:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:59:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:51:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:46:\"([0-9]{4})/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:96:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:91:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:85:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:80:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:85:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:48:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:43:\"(.?.+?)/(feed|rdf|rss|rss2|atom|podcast)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:2:{i:0;s:59:\"seriously-simple-podcasting/seriously-simple-podcasting.php\";i:1;s:27:\"svg-support/svg-support.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','radio-replay','yes'),(41,'stylesheet','radio-replay','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','49752','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','1','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1631996637','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'initial_db_version','49752','yes'),(99,'replay_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"manage_podcast\";b:1;s:12:\"edit_podcast\";b:1;s:12:\"read_podcast\";b:1;s:14:\"delete_podcast\";b:1;s:13:\"edit_podcasts\";b:1;s:20:\"edit_others_podcasts\";b:1;s:16:\"publish_podcasts\";b:1;s:21:\"read_private_podcasts\";b:1;s:15:\"delete_podcasts\";b:1;s:23:\"delete_private_podcasts\";b:1;s:25:\"delete_published_podcasts\";b:1;s:22:\"delete_others_podcasts\";b:1;s:21:\"edit_private_podcasts\";b:1;s:23:\"edit_published_podcasts\";b:1;s:15:\"create_podcasts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:49:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:14:\"manage_podcast\";b:1;s:12:\"edit_podcast\";b:1;s:12:\"read_podcast\";b:1;s:14:\"delete_podcast\";b:1;s:13:\"edit_podcasts\";b:1;s:20:\"edit_others_podcasts\";b:1;s:16:\"publish_podcasts\";b:1;s:21:\"read_private_podcasts\";b:1;s:15:\"delete_podcasts\";b:1;s:23:\"delete_private_podcasts\";b:1;s:25:\"delete_published_podcasts\";b:1;s:22:\"delete_others_podcasts\";b:1;s:21:\"edit_private_podcasts\";b:1;s:23:\"edit_published_podcasts\";b:1;s:15:\"create_podcasts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(100,'fresh_site','0','yes'),(101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(106,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:8:\"search-2\";i:1;s:25:\"recent-podcast-episodes-3\";}s:13:\"array_version\";i:3;}','yes'),(107,'cron','a:7:{i:1616624638;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616660638;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616703838;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616703845;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616703846;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617135838;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(116,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'recovery_keys','a:0:{}','yes'),(119,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:37:\"SSL-Überprüfung ist fehlgeschlagen.\";}}','yes'),(127,'_site_transient_timeout_browser_72766ab2b1c85af98adbbb9683600fdf','1617049445','no'),(128,'_site_transient_browser_72766ab2b1c85af98adbbb9683600fdf','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(129,'_site_transient_timeout_php_check_baf661bc1e7958f3dc9ec8c07cccafb4','1617049446','no'),(130,'_site_transient_php_check_baf661bc1e7958f3dc9ec8c07cccafb4','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),(134,'can_compress_scripts','1','no'),(149,'finished_updating_comment_type','1','yes'),(152,'theme_mods_twentytwentyone','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616444720;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(153,'current_theme','Radio_Replay','yes'),(154,'theme_mods_radio-replay','a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:5:\"blank\";s:11:\"custom_logo\";i:25;}','yes'),(155,'theme_switched','','yes'),(158,'recently_activated','a:0:{}','yes'),(163,'bodhi_svgs_plugin_version','2.3.18','yes'),(165,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/de_DE/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"de_DE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/de_DE/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1616620402;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}','no'),(166,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616620403;s:7:\"checked\";a:2:{s:59:\"seriously-simple-podcasting/seriously-simple-podcasting.php\";s:5:\"2.6.1\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.18\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:59:\"seriously-simple-podcasting/seriously-simple-podcasting.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/seriously-simple-podcasting\";s:4:\"slug\";s:27:\"seriously-simple-podcasting\";s:6:\"plugin\";s:59:\"seriously-simple-podcasting/seriously-simple-podcasting.php\";s:11:\"new_version\";s:5:\"2.6.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/seriously-simple-podcasting/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/seriously-simple-podcasting.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/seriously-simple-podcasting/assets/icon-256x256.png?rev=970355\";s:2:\"1x\";s:79:\"https://ps.w.org/seriously-simple-podcasting/assets/icon-128x128.png?rev=970355\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/seriously-simple-podcasting/assets/banner-1544x500.png?rev=1118552\";s:2:\"1x\";s:82:\"https://ps.w.org/seriously-simple-podcasting/assets/banner-772x250.png?rev=1118552\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/seriously-simple-podcasting/assets/banner-1544x500-rtl.png?rev=1284654\";s:2:\"1x\";s:86:\"https://ps.w.org/seriously-simple-podcasting/assets/banner-772x250-rtl.png?rev=1284654\";}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(167,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616620403;s:7:\"checked\";a:1:{s:12:\"radio-replay\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(168,'ss_podcasting_subscribe_options','a:4:{i:0;s:14:\"apple_podcasts\";i:1;s:8:\"stitcher\";i:2;s:15:\"google_podcasts\";i:3;s:7:\"spotify\";}','yes'),(169,'ss_podcasting_episode_description','excerpt','yes'),(170,'ss_podcasting_distribution_upgrade_disabled','true','yes'),(171,'ssp_version','2.6.1','yes'),(172,'ssp_categories_update_dismissed','true','yes'),(173,'widget_single-podcast-episode','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(174,'widget_recent-podcast-episodes','a:3:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:0:{}}','yes'),(175,'widget_podcast-playlist','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(176,'widget_podcast-series','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(177,'ssp_upgrade_page_visited','true','yes'),(178,'ss_podcasting_second_line_themes_edit-podcast','true','yes'),(179,'ssp_update_enclosures','run','yes'),(180,'ss_podcasting_use_post_types','','yes'),(181,'ss_podcasting_include_in_main_query','on','yes'),(182,'ss_podcasting_itunes_fields_enabled','','yes'),(185,'ss_podcasting_player_locations','a:1:{i:0;s:7:\"content\";}','yes'),(186,'ss_podcasting_player_content_location','below','yes'),(187,'ss_podcasting_player_content_visibility','all','yes'),(188,'ss_podcasting_player_meta_data_enabled','on','yes'),(189,'ss_podcasting_player_style','larger','yes'),(195,'_site_transient_timeout_theme_roots','1616622203','no'),(196,'_site_transient_theme_roots','a:1:{s:12:\"radio-replay\";s:7:\"/themes\";}','no'),(197,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":5,\"critical\":1}','yes');
/*!40000 ALTER TABLE `replay_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_postmeta`
--

DROP TABLE IF EXISTS `replay_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_postmeta`
--

LOCK TABLES `replay_postmeta` WRITE;
/*!40000 ALTER TABLE `replay_postmeta` DISABLE KEYS */;
INSERT INTO `replay_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_wp_trash_meta_status','publish'),(4,5,'_wp_trash_meta_time','1616444771'),(5,6,'_wp_trash_meta_status','publish'),(6,6,'_wp_trash_meta_time','1616444887'),(7,7,'_wp_trash_meta_status','publish'),(8,7,'_wp_trash_meta_time','1616444917'),(11,9,'_wp_trash_meta_status','publish'),(12,9,'_wp_trash_meta_time','1616444941'),(13,10,'inline_featured_image','0'),(14,10,'_edit_lock','1616445029:1'),(15,11,'inline_featured_image','0'),(16,11,'_edit_lock','1616444908:1'),(17,12,'_wp_attached_file','2021/03/anderebearebitung_mixdown.mp3'),(18,12,'_wp_attachment_metadata','a:19:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:1;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:128000;s:11:\"channelmode\";s:4:\"mono\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR128\";s:17:\"compression_ratio\";d:0.18140589569160998;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:85415205;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:5338;s:16:\"length_formatted\";s:7:\"1:28:58\";s:4:\"year\";s:4:\"2021\";s:4:\"date\";s:4:\"1702\";s:4:\"time\";s:4:\"2102\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),(19,13,'inline_featured_image','0'),(20,13,'_edit_lock','1616450622:1'),(21,14,'_wp_attached_file','2021/03/dopplereffektcover2.jpg'),(22,14,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:31:\"2021/03/dopplereffektcover2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"dopplereffektcover2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"dopplereffektcover2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"dopplereffektcover2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(23,13,'_edit_last','1'),(24,13,'episode_type','audio'),(25,13,'audio_file','https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/anderebearebitung_mixdown.mp3'),(26,13,'cover_image','https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/Cover1-vignette.jpg'),(27,13,'cover_image_id','19'),(28,13,'duration','1:28:58'),(29,13,'filesize','81.46M'),(30,13,'date_recorded',''),(31,13,'explicit',''),(32,13,'block',''),(33,13,'filesize_raw','85415205'),(34,13,'enclosure','https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/anderebearebitung_mixdown.mp3'),(35,13,'_thumbnail_id','19'),(38,16,'_wp_trash_meta_status','publish'),(39,16,'_wp_trash_meta_time','1616446516'),(42,18,'_wp_attached_file','2021/03/Cover1-big.jpg'),(43,18,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2021/03/Cover1-big.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Cover1-big-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Cover1-big-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Cover1-big-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Cover1-big-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(44,19,'_wp_attached_file','2021/03/Cover1-vignette.jpg'),(45,19,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:27:\"2021/03/Cover1-vignette.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Cover1-vignette-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Cover1-vignette-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Cover1-vignette-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(48,21,'_wp_trash_meta_status','publish'),(49,21,'_wp_trash_meta_time','1616450253'),(52,23,'_wp_attached_file','2021/03/radioreplayblue.svg'),(53,23,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:28:\"/2021/03/radioreplayblue.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:19:\"radioreplayblue.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"radioreplayblue.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"radioreplayblue.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"radioreplayblue.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"radioreplayblue.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"radioreplayblue.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),(54,24,'_edit_lock','1616450319:1'),(55,24,'_wp_trash_meta_status','publish'),(56,24,'_wp_trash_meta_time','1616450344'),(57,25,'_wp_attached_file','2021/03/Element-10logo.png'),(58,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1904;s:6:\"height\";i:700;s:4:\"file\";s:26:\"2021/03/Element-10logo.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Element-10logo-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Element-10logo-1024x376.png\";s:5:\"width\";i:1024;s:6:\"height\";i:376;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Element-10logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Element-10logo-768x282.png\";s:5:\"width\";i:768;s:6:\"height\";i:282;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"Element-10logo-1536x565.png\";s:5:\"width\";i:1536;s:6:\"height\";i:565;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(59,26,'_wp_trash_meta_status','publish'),(60,26,'_wp_trash_meta_time','1616450541'),(61,27,'inline_featured_image','0'),(62,27,'_edit_lock','1616450686:1'),(63,27,'_edit_last','1'),(64,27,'episode_type','audio'),(65,27,'audio_file','https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/anderebearebitung_mixdown.mp3'),(66,27,'cover_image','https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/Cover1-vignette.jpg'),(67,27,'cover_image_id','19'),(68,27,'duration','1:28:58'),(69,27,'filesize','81.46M'),(70,27,'date_recorded',''),(71,27,'explicit',''),(72,27,'block',''),(73,27,'filesize_raw','85415205'),(74,27,'enclosure','https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/anderebearebitung_mixdown.mp3'),(75,27,'_thumbnail_id','19');
/*!40000 ALTER TABLE `replay_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_posts`
--

DROP TABLE IF EXISTS `replay_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_posts`
--

LOCK TABLES `replay_posts` WRITE;
/*!40000 ALTER TABLE `replay_posts` DISABLE KEYS */;
INSERT INTO `replay_posts` VALUES (1,1,'2021-03-22 20:23:57','2021-03-22 20:23:57','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-03-22 20:23:57','2021-03-22 20:23:57','',0,'https://radioreplay.com/radioreplay/wordpress/?p=1',0,'post','',1),(2,1,'2021-03-22 20:23:57','2021-03-22 20:23:57','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://radioreplay.com/radioreplay/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-03-22 20:23:57','2021-03-22 20:23:57','',0,'https://radioreplay.com/radioreplay/wordpress/?page_id=2',0,'page','',0),(3,1,'2021-03-22 20:23:57','2021-03-22 20:23:57','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://radioreplay.com/radioreplay/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-03-22 20:23:57','2021-03-22 20:23:57','',0,'https://radioreplay.com/radioreplay/wordpress/?page_id=3',0,'page','',0),(4,1,'2021-03-22 20:24:06','0000-00-00 00:00:00','','Automatisch gespeicherter Entwurf','','auto-draft','open','open','','','','','2021-03-22 20:24:06','0000-00-00 00:00:00','',0,'https://radioreplay.com/radioreplay/wordpress/?p=4',0,'post','',0),(5,1,'2021-03-22 20:26:11','2021-03-22 20:26:11','{\n    \"blogdescription\": {\n        \"value\": \"Der Momente-Podcast\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 20:26:11\"\n    },\n    \"radio-replay::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 20:26:11\"\n    }\n}','','','trash','closed','closed','','3e4d8dde-9f13-453d-aca5-000a811e2c5a','','','2021-03-22 20:26:11','2021-03-22 20:26:11','',0,'https://radioreplay.com/radioreplay/wordpress/2021/03/22/3e4d8dde-9f13-453d-aca5-000a811e2c5a/',0,'customize_changeset','',0),(6,1,'2021-03-22 20:28:07','2021-03-22 20:28:07','{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 20:28:07\"\n    }\n}','','','trash','closed','closed','','fe9386d2-438c-4114-817b-7b322a262eef','','','2021-03-22 20:28:07','2021-03-22 20:28:07','',0,'https://radioreplay.com/radioreplay/wordpress/2021/03/22/fe9386d2-438c-4114-817b-7b322a262eef/',0,'customize_changeset','',0),(7,1,'2021-03-22 20:28:37','2021-03-22 20:28:37','{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-podcast-episodes-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 20:28:37\"\n    },\n    \"widget_recent-podcast-episodes[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 20:28:37\"\n    }\n}','','','trash','closed','closed','','3bfb0fcf-e542-4e73-b1bf-0dc7397a1b34','','','2021-03-22 20:28:37','2021-03-22 20:28:37','',0,'https://radioreplay.com/radioreplay/wordpress/2021/03/22/3bfb0fcf-e542-4e73-b1bf-0dc7397a1b34/',0,'customize_changeset','',0),(9,1,'2021-03-22 20:29:01','2021-03-22 20:29:01','{\n    \"radio-replay::custom_logo\": {\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 20:29:01\"\n    }\n}','','','trash','closed','closed','','5c4c1d2b-9024-46b4-82eb-d41350660ecb','','','2021-03-22 20:29:01','2021-03-22 20:29:01','',0,'https://radioreplay.com/radioreplay/wordpress/2021/03/22/5c4c1d2b-9024-46b4-82eb-d41350660ecb/',0,'customize_changeset','',0),(10,1,'2021-03-22 20:29:28','0000-00-00 00:00:00','','Automatisch gespeicherter Entwurf','','auto-draft','open','closed','','','','','2021-03-22 20:29:28','0000-00-00 00:00:00','',0,'https://radioreplay.com/radioreplay/wordpress/?post_type=podcast&p=10',0,'podcast','',0),(11,1,'2021-03-22 20:30:43','0000-00-00 00:00:00','','Automatisch gespeicherter Entwurf','','auto-draft','open','closed','','','','','2021-03-22 20:30:43','0000-00-00 00:00:00','',0,'https://radioreplay.com/radioreplay/wordpress/?post_type=podcast&p=11',0,'podcast','',0),(12,1,'2021-03-22 20:32:47','2021-03-22 20:32:47','\"anderebearebitung_mixdown\". Veröffentlicht: 2021.','anderebearebitung_mixdown','','inherit','open','closed','','anderebearebitung_mixdown','','','2021-03-22 22:04:11','2021-03-22 22:04:11','',0,'https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/anderebearebitung_mixdown.mp3',0,'attachment','audio/mpeg',0),(13,1,'2021-03-22 20:33:39','2021-03-22 20:33:39','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<!-- /wp:paragraph -->','Die erste Podcastfolge!','','publish','open','closed','','die-erste-podcastfolge','','','2021-03-22 21:54:12','2021-03-22 21:54:12','',0,'https://radioreplay.com/radioreplay/wordpress/?post_type=podcast&#038;p=13',0,'podcast','',0),(14,1,'2021-03-22 20:33:17','2021-03-22 20:33:17','','dopplereffektcover2','','inherit','open','closed','','dopplereffektcover2','','','2021-03-22 20:33:17','2021-03-22 20:33:17','',13,'https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/dopplereffektcover2.jpg',0,'attachment','image/jpeg',0),(16,1,'2021-03-22 20:55:16','2021-03-22 20:55:16','{\n    \"radio-replay::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 20:55:16\"\n    }\n}','','','trash','closed','closed','','3da64f80-9a13-437b-bb3a-566558c03159','','','2021-03-22 20:55:16','2021-03-22 20:55:16','',0,'https://radioreplay.com/radioreplay/wordpress/2021/03/22/3da64f80-9a13-437b-bb3a-566558c03159/',0,'customize_changeset','',0),(18,1,'2021-03-22 21:52:48','2021-03-22 21:52:48','','Cover1-big','','inherit','open','closed','','cover1-big','','','2021-03-22 21:52:48','2021-03-22 21:52:48','',13,'https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/Cover1-big.jpg',0,'attachment','image/jpeg',0),(19,1,'2021-03-22 21:53:53','2021-03-22 21:53:53','','Cover1-vignette','','inherit','open','closed','','cover1-vignette','','','2021-03-22 21:53:53','2021-03-22 21:53:53','',13,'https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/Cover1-vignette.jpg',0,'attachment','image/jpeg',0),(21,1,'2021-03-22 21:57:33','2021-03-22 21:57:33','{\n    \"radio-replay::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 21:57:33\"\n    }\n}','','','trash','closed','closed','','435b8d5b-1d59-462c-af49-86ce1e22a5a4','','','2021-03-22 21:57:33','2021-03-22 21:57:33','',0,'https://radioreplay.com/radioreplay/wordpress/2021/03/22/435b8d5b-1d59-462c-af49-86ce1e22a5a4/',0,'customize_changeset','',0),(23,1,'2021-03-22 21:58:02','2021-03-22 21:58:02','','radioreplayblue','','inherit','open','closed','','radioreplayblue','','','2021-03-22 21:58:02','2021-03-22 21:58:02','',0,'https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/radioreplayblue.svg',0,'attachment','image/svg+xml',0),(24,1,'2021-03-22 21:59:04','2021-03-22 21:59:04','{\n    \"radio-replay::custom_logo\": {\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 21:58:30\"\n    }\n}','','','trash','closed','closed','','86fd0d1d-98aa-478b-8422-c1a61751c56c','','','2021-03-22 21:59:04','2021-03-22 21:59:04','',0,'https://radioreplay.com/radioreplay/wordpress/?p=24',0,'customize_changeset','',0),(25,1,'2021-03-22 22:02:16','2021-03-22 22:02:16','','Element 10logo','','inherit','open','closed','','element-10logo','','','2021-03-22 22:02:16','2021-03-22 22:02:16','',0,'https://radioreplay.com/radioreplay/wordpress/wp-content/uploads/2021/03/Element-10logo.png',0,'attachment','image/png',0),(26,1,'2021-03-22 22:02:21','2021-03-22 22:02:21','{\n    \"radio-replay::custom_logo\": {\n        \"value\": 25,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 22:02:21\"\n    }\n}','','','trash','closed','closed','','ff0079fb-8b6a-4e35-bed8-7a8803ecd10a','','','2021-03-22 22:02:21','2021-03-22 22:02:21','',0,'https://radioreplay.com/radioreplay/wordpress/2021/03/22/ff0079fb-8b6a-4e35-bed8-7a8803ecd10a/',0,'customize_changeset','',0),(27,1,'2021-03-22 22:04:21','2021-03-22 22:04:21','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>\n<!-- /wp:paragraph -->','Die zweite Folge! WOW!','','publish','open','closed','','die-zweite-folge-wow','','','2021-03-22 22:04:33','2021-03-22 22:04:33','',0,'https://radioreplay.com/radioreplay/wordpress/?post_type=podcast&#038;p=27',0,'podcast','',0);
/*!40000 ALTER TABLE `replay_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_term_relationships`
--

DROP TABLE IF EXISTS `replay_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_term_relationships`
--

LOCK TABLES `replay_term_relationships` WRITE;
/*!40000 ALTER TABLE `replay_term_relationships` DISABLE KEYS */;
INSERT INTO `replay_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `replay_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_term_taxonomy`
--

DROP TABLE IF EXISTS `replay_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_term_taxonomy`
--

LOCK TABLES `replay_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `replay_term_taxonomy` DISABLE KEYS */;
INSERT INTO `replay_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `replay_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_termmeta`
--

DROP TABLE IF EXISTS `replay_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_termmeta`
--

LOCK TABLES `replay_termmeta` WRITE;
/*!40000 ALTER TABLE `replay_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `replay_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_terms`
--

DROP TABLE IF EXISTS `replay_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_terms`
--

LOCK TABLES `replay_terms` WRITE;
/*!40000 ALTER TABLE `replay_terms` DISABLE KEYS */;
INSERT INTO `replay_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `replay_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_usermeta`
--

DROP TABLE IF EXISTS `replay_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_usermeta`
--

LOCK TABLES `replay_usermeta` WRITE;
/*!40000 ALTER TABLE `replay_usermeta` DISABLE KEYS */;
INSERT INTO `replay_usermeta` VALUES (1,1,'nickname','jonas@admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'replay_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'replay_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','0'),(16,1,'session_tokens','a:1:{s:64:\"add8cc31b998f164b811af73c2454a36f20029b74bc60dd5eed9906f6e144b9a\";a:4:{s:10:\"expiration\";i:1617654244;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1616444644;}}'),(17,1,'replay_dashboard_quick_press_last_post_id','4'),(18,1,'replay_user-settings','libraryContent=browse'),(19,1,'replay_user-settings-time','1616444943');
/*!40000 ALTER TABLE `replay_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_users`
--

DROP TABLE IF EXISTS `replay_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_users`
--

LOCK TABLES `replay_users` WRITE;
/*!40000 ALTER TABLE `replay_users` DISABLE KEYS */;
INSERT INTO `replay_users` VALUES (1,'jonas@admin','$P$B08X81D8SBfNiEzvcCb2XMb9diRkcD1','jonasadmin','nutzlosundso@gmail.com','https://radioreplay.com/radioreplay/wordpress','2021-03-22 20:23:57','',0,'jonas@admin');
/*!40000 ALTER TABLE `replay_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 23:21:38
