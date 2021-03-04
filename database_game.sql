-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gameserver
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `buff_template`
--

DROP TABLE IF EXISTS `buff_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buff_template` (
  `buff` smallint unsigned NOT NULL,
  `group` smallint unsigned DEFAULT NULL,
  `item_type` tinyint unsigned DEFAULT NULL,
  `item_index` smallint unsigned DEFAULT NULL,
  `name` text,
  `description` text,
  `send` tinyint DEFAULT NULL,
  `debuff` tinyint DEFAULT NULL,
  `effect_1` tinyint unsigned DEFAULT NULL,
  `value_1` float DEFAULT NULL,
  `effect_2` tinyint unsigned DEFAULT NULL,
  `value_2` float DEFAULT NULL,
  `duration` int unsigned DEFAULT NULL,
  PRIMARY KEY (`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buff_template`
--

LOCK TABLES `buff_template` WRITE;
/*!40000 ALTER TABLE `buff_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `buff_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_category`
--

DROP TABLE IF EXISTS `cash_shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_category` (
  `id` smallint unsigned NOT NULL,
  `name` text,
  `parent` tinyint unsigned DEFAULT NULL,
  `main` tinyint unsigned DEFAULT NULL,
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_category`
--

LOCK TABLES `cash_shop_category` WRITE;
/*!40000 ALTER TABLE `cash_shop_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_package`
--

DROP TABLE IF EXISTS `cash_shop_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_package` (
  `package` int unsigned NOT NULL,
  `category` int unsigned DEFAULT NULL,
  `position` tinyint unsigned DEFAULT NULL,
  `name` text,
  `description` text,
  `display_item` smallint unsigned DEFAULT NULL,
  `flags` int unsigned DEFAULT NULL,
  `price_type` tinyint unsigned DEFAULT NULL,
  `start_date` bigint DEFAULT NULL,
  `end_date` bigint DEFAULT NULL,
  PRIMARY KEY (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_package`
--

LOCK TABLES `cash_shop_package` WRITE;
/*!40000 ALTER TABLE `cash_shop_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_product`
--

DROP TABLE IF EXISTS `cash_shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_product` (
  `product` int unsigned NOT NULL,
  `package` int unsigned DEFAULT NULL,
  `option` int unsigned DEFAULT NULL,
  `name` text,
  `price` int unsigned DEFAULT NULL,
  `buy_type` tinyint unsigned DEFAULT NULL,
  `use_type` tinyint unsigned DEFAULT NULL,
  `flags` int unsigned DEFAULT NULL,
  `duration` bigint DEFAULT NULL,
  `item_type` tinyint unsigned DEFAULT NULL,
  `item_index` smallint unsigned DEFAULT NULL,
  `item_durability` int DEFAULT NULL,
  `item_skill` tinyint unsigned DEFAULT NULL,
  `item_luck` tinyint unsigned DEFAULT NULL,
  `item_option` tinyint unsigned DEFAULT NULL,
  `item_excellent` tinyint unsigned DEFAULT NULL,
  `item_ancient` tinyint unsigned DEFAULT NULL,
  `count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_product`
--

LOCK TABLES `cash_shop_product` WRITE;
/*!40000 ALTER TABLE `cash_shop_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_base`
--

DROP TABLE IF EXISTS `character_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_base` (
  `race` tinyint unsigned NOT NULL,
  `stat_strength` int unsigned DEFAULT NULL,
  `stat_agility` int unsigned DEFAULT NULL,
  `stat_vitality` int unsigned DEFAULT NULL,
  `stat_energy` int unsigned DEFAULT NULL,
  `stat_leadership` int unsigned DEFAULT NULL,
  `life` int DEFAULT NULL,
  `mana` int DEFAULT NULL,
  `level_to_life` float DEFAULT NULL,
  `level_to_mana` float DEFAULT NULL,
  `vitality_to_life` float DEFAULT NULL,
  `energy_to_mana` float DEFAULT NULL,
  `world` smallint unsigned DEFAULT NULL,
  `level` smallint DEFAULT NULL,
  `points` int DEFAULT NULL,
  `recovery_life` float DEFAULT NULL,
  `recovery_mana` float DEFAULT NULL,
  `recovery_shield` float DEFAULT NULL,
  `recovery_stamina` float DEFAULT NULL,
  `level_up_points` int unsigned DEFAULT NULL,
  `plus_level_up_points` int unsigned DEFAULT NULL,
  `master_level_up_points` int unsigned DEFAULT NULL,
  `majestic_level_up_points` int unsigned DEFAULT NULL,
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_base`
--

LOCK TABLES `character_base` WRITE;
/*!40000 ALTER TABLE `character_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_bonus`
--

DROP TABLE IF EXISTS `character_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_bonus` (
  `server` smallint unsigned NOT NULL,
  `level_min` smallint DEFAULT NULL,
  `level_max` smallint DEFAULT NULL,
  `experience_rate` smallint DEFAULT NULL,
  `drop_rate` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_bonus`
--

LOCK TABLES `character_bonus` WRITE;
/*!40000 ALTER TABLE `character_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_adjust`
--

DROP TABLE IF EXISTS `character_experience_adjust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_adjust` (
  `level_min` smallint DEFAULT NULL,
  `level_max` smallint DEFAULT NULL,
  `experience_rate` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_adjust`
--

LOCK TABLES `character_experience_adjust` WRITE;
/*!40000 ALTER TABLE `character_experience_adjust` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_adjust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_bonus`
--

DROP TABLE IF EXISTS `character_experience_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_bonus` (
  `race_1` tinyint unsigned NOT NULL,
  `race_2` tinyint unsigned DEFAULT NULL,
  `race_3` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_bonus`
--

LOCK TABLES `character_experience_bonus` WRITE;
/*!40000 ALTER TABLE `character_experience_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_table`
--

DROP TABLE IF EXISTS `character_experience_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_table` (
  `level_min` smallint DEFAULT NULL,
  `level_max` smallint DEFAULT NULL,
  `experience_rate` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_table`
--

LOCK TABLES `character_experience_table` WRITE;
/*!40000 ALTER TABLE `character_experience_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_formula`
--

DROP TABLE IF EXISTS `character_formula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_formula` (
  `type` tinyint unsigned NOT NULL,
  `class` tinyint unsigned DEFAULT NULL,
  `level_mul` float DEFAULT NULL,
  `level_div` float DEFAULT NULL,
  `stat_strength_mul` float DEFAULT NULL,
  `stat_strength_div` float DEFAULT NULL,
  `stat_agility_mul` float DEFAULT NULL,
  `stat_agility_div` float DEFAULT NULL,
  `stat_vitality_mul` float DEFAULT NULL,
  `stat_vitality_div` float DEFAULT NULL,
  `stat_energy_mul` float DEFAULT NULL,
  `stat_energy_div` float DEFAULT NULL,
  `stat_leadership_mul` float DEFAULT NULL,
  `stat_leadership_div` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_formula`
--

LOCK TABLES `character_formula` WRITE;
/*!40000 ALTER TABLE `character_formula` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_formula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_helper`
--

DROP TABLE IF EXISTS `character_helper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_helper` (
  `race` tinyint unsigned NOT NULL,
  `stage` int DEFAULT NULL,
  `duration` int unsigned DEFAULT NULL,
  `cost` int unsigned DEFAULT NULL,
  `cost_interval` int unsigned DEFAULT NULL,
  `next_stage` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_helper`
--

LOCK TABLES `character_helper` WRITE;
/*!40000 ALTER TABLE `character_helper` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_helper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_item`
--

DROP TABLE IF EXISTS `character_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_item` (
  `race` tinyint unsigned NOT NULL,
  `slot` tinyint unsigned DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL,
  `index` smallint unsigned DEFAULT NULL,
  `level` tinyint unsigned DEFAULT NULL,
  `durability` tinyint unsigned DEFAULT NULL,
  `skill` tinyint unsigned DEFAULT NULL,
  `luck` tinyint unsigned DEFAULT NULL,
  `option` tinyint unsigned DEFAULT NULL,
  `excellent` tinyint unsigned DEFAULT NULL,
  `ancient` tinyint unsigned DEFAULT NULL,
  `duration` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_item`
--

LOCK TABLES `character_item` WRITE;
/*!40000 ALTER TABLE `character_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_max_level_reward`
--

DROP TABLE IF EXISTS `character_max_level_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_max_level_reward` (
  `class` tinyint unsigned NOT NULL,
  `max_level` smallint DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL,
  `index` smallint unsigned DEFAULT NULL,
  `level` tinyint unsigned DEFAULT NULL,
  `durability` tinyint unsigned DEFAULT NULL,
  `skill` tinyint unsigned DEFAULT NULL,
  `luck` tinyint unsigned DEFAULT NULL,
  `option` tinyint unsigned DEFAULT NULL,
  `excellent` tinyint unsigned DEFAULT NULL,
  `ancient` tinyint unsigned DEFAULT NULL,
  `harmony` tinyint unsigned DEFAULT NULL,
  `option_380` tinyint unsigned DEFAULT NULL,
  `socket_1` smallint unsigned DEFAULT NULL,
  `socket_2` smallint unsigned DEFAULT NULL,
  `socket_3` smallint unsigned DEFAULT NULL,
  `socket_4` smallint unsigned DEFAULT NULL,
  `socket_5` smallint unsigned DEFAULT NULL,
  `socket_bonus` tinyint unsigned DEFAULT NULL,
  `flags` int unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_max_level_reward`
--

LOCK TABLES `character_max_level_reward` WRITE;
/*!40000 ALTER TABLE `character_max_level_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_max_level_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skill`
--

DROP TABLE IF EXISTS `character_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_skill` (
  `race` tinyint unsigned NOT NULL,
  `skill` smallint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skill`
--

LOCK TABLES `character_skill` WRITE;
/*!40000 ALTER TABLE `character_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_specialization`
--

DROP TABLE IF EXISTS `character_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_specialization` (
  `race` tinyint unsigned NOT NULL,
  `stat` tinyint unsigned DEFAULT NULL,
  `required_stat` tinyint unsigned DEFAULT NULL,
  `required_stat_min` int DEFAULT NULL,
  `required_stat_max` int DEFAULT NULL,
  `percent_min` tinyint unsigned DEFAULT NULL,
  `percent_max` tinyint unsigned DEFAULT NULL,
  `required_stat_limit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_specialization`
--

LOCK TABLES `character_specialization` WRITE;
/*!40000 ALTER TABLE `character_specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_stat_fruit`
--

DROP TABLE IF EXISTS `character_stat_fruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_stat_fruit` (
  `race` tinyint unsigned NOT NULL,
  `min_level` smallint DEFAULT NULL,
  `max_level` smallint DEFAULT NULL,
  `total_add_points` smallint unsigned DEFAULT NULL,
  `total_minus_points` smallint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_stat_fruit`
--

LOCK TABLES `character_stat_fruit` WRITE;
/*!40000 ALTER TABLE `character_stat_fruit` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stat_fruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheat_scan_whitelist`
--

DROP TABLE IF EXISTS `cheat_scan_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cheat_scan_whitelist` (
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheat_scan_whitelist`
--

LOCK TABLES `cheat_scan_whitelist` WRITE;
/*!40000 ALTER TABLE `cheat_scan_whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheat_scan_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_contribution_reward`
--

DROP TABLE IF EXISTS `event_contribution_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_contribution_reward` (
  `event_id` tinyint unsigned NOT NULL,
  `event_ground` tinyint unsigned DEFAULT NULL,
  `contribution_min` int DEFAULT NULL,
  `contribution_max` int DEFAULT NULL,
  `reward_box` smallint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_contribution_reward`
--

LOCK TABLES `event_contribution_reward` WRITE;
/*!40000 ALTER TABLE `event_contribution_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_contribution_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_devil_square_ranking`
--

DROP TABLE IF EXISTS `event_devil_square_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_devil_square_ranking` (
  `ground` tinyint unsigned NOT NULL,
  `position` tinyint unsigned NOT NULL,
  `experience` int DEFAULT NULL,
  `zen` int unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_devil_square_ranking`
--

LOCK TABLES `event_devil_square_ranking` WRITE;
/*!40000 ALTER TABLE `event_devil_square_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_devil_square_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_doppelganger_level`
--

DROP TABLE IF EXISTS `event_doppelganger_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_doppelganger_level` (
  `guid` int unsigned NOT NULL,
  `level_min` smallint DEFAULT NULL,
  `level_max` smallint DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `larva_rate` smallint unsigned DEFAULT NULL,
  `larva_count` int DEFAULT NULL,
  `silver_chest_item_bag` text,
  `golden_chest_item_bag` text,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_doppelganger_level`
--

LOCK TABLES `event_doppelganger_level` WRITE;
/*!40000 ALTER TABLE `event_doppelganger_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_doppelganger_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_doppelganger_monster_settings`
--

DROP TABLE IF EXISTS `event_doppelganger_monster_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_doppelganger_monster_settings` (
  `monster` smallint unsigned NOT NULL,
  `level` smallint DEFAULT NULL,
  `life` int DEFAULT NULL,
  `attack_min` int DEFAULT NULL,
  `attack_max` int DEFAULT NULL,
  `attack_rate` int DEFAULT NULL,
  `defense` int DEFAULT NULL,
  `defense_rate` int DEFAULT NULL,
  `item_bag` text,
  PRIMARY KEY (`monster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_doppelganger_monster_settings`
--

LOCK TABLES `event_doppelganger_monster_settings` WRITE;
/*!40000 ALTER TABLE `event_doppelganger_monster_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_doppelganger_monster_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_dungeon`
--

DROP TABLE IF EXISTS `event_dungeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_dungeon` (
  `id` tinyint unsigned NOT NULL,
  `world` smallint unsigned DEFAULT NULL,
  `flags` int unsigned DEFAULT NULL,
  `gate` smallint unsigned DEFAULT NULL,
  `main_chest_x` smallint DEFAULT NULL,
  `main_chest_y` smallint DEFAULT NULL,
  `chest1_x` smallint DEFAULT NULL,
  `chest1_y` smallint DEFAULT NULL,
  `chest2_x` smallint DEFAULT NULL,
  `chest2_y` smallint DEFAULT NULL,
  `chest3_x` smallint DEFAULT NULL,
  `chest3_y` smallint DEFAULT NULL,
  `chest4_x` smallint DEFAULT NULL,
  `chest4_y` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_dungeon`
--

LOCK TABLES `event_dungeon` WRITE;
/*!40000 ALTER TABLE `event_dungeon` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_dungeon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_dungeon_level`
--

DROP TABLE IF EXISTS `event_dungeon_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_dungeon_level` (
  `id` smallint unsigned NOT NULL,
  `min_level` smallint DEFAULT NULL,
  `max_level` smallint DEFAULT NULL,
  `level` float DEFAULT NULL,
  `hp` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_success` float DEFAULT NULL,
  `defense_success` float DEFAULT NULL,
  `elemental_damage` float DEFAULT NULL,
  `elemental_defense` float DEFAULT NULL,
  `elemental_attack_success` float DEFAULT NULL,
  `elemental_defense_success` float DEFAULT NULL,
  `item_bag` text,
  `item_bag_boss` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_dungeon_level`
--

LOCK TABLES `event_dungeon_level` WRITE;
/*!40000 ALTER TABLE `event_dungeon_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_dungeon_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_enter_count`
--

DROP TABLE IF EXISTS `event_enter_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_enter_count` (
  `event_id` tinyint unsigned NOT NULL,
  `count` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_enter_count`
--

LOCK TABLES `event_enter_count` WRITE;
/*!40000 ALTER TABLE `event_enter_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_enter_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_level`
--

DROP TABLE IF EXISTS `event_imperial_fortress_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_level` (
  `guid` int unsigned NOT NULL,
  `level_min` smallint DEFAULT NULL,
  `level_max` smallint DEFAULT NULL,
  `experience` int DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_level`
--

LOCK TABLES `event_imperial_fortress_level` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_monster_settings`
--

DROP TABLE IF EXISTS `event_imperial_fortress_monster_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_monster_settings` (
  `level` int unsigned NOT NULL,
  `monster_id` smallint unsigned DEFAULT NULL,
  `monster_level` smallint unsigned DEFAULT NULL,
  `monster_life` int DEFAULT NULL,
  `monster_mana` int DEFAULT NULL,
  `monster_shield` int DEFAULT NULL,
  `monster_stamina` int DEFAULT NULL,
  `monster_attack_min` int DEFAULT NULL,
  `monster_attack_max` int DEFAULT NULL,
  `monster_attack_rate` int DEFAULT NULL,
  `monster_defense` int DEFAULT NULL,
  `monster_defense_rate` int DEFAULT NULL,
  `monster_item_bag` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_monster_settings`
--

LOCK TABLES `event_imperial_fortress_monster_settings` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_monster_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_monster_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_trap`
--

DROP TABLE IF EXISTS `event_imperial_fortress_trap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_trap` (
  `day` tinyint unsigned NOT NULL,
  `x1` smallint DEFAULT NULL,
  `y1` smallint DEFAULT NULL,
  `x2` smallint DEFAULT NULL,
  `y2` smallint DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `element` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_trap`
--

LOCK TABLES `event_imperial_fortress_trap` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_trap` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_trap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_invasion_data`
--

DROP TABLE IF EXISTS `event_invasion_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_invasion_data` (
  `invasion` int unsigned NOT NULL,
  `name` text,
  `on_notify` text,
  `on_start` text,
  `on_end` text,
  `on_timeout` text,
  `on_kill_boss` text,
  PRIMARY KEY (`invasion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_invasion_data`
--

LOCK TABLES `event_invasion_data` WRITE;
/*!40000 ALTER TABLE `event_invasion_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_invasion_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_invasion_group`
--

DROP TABLE IF EXISTS `event_invasion_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_invasion_group` (
  `invasion` int unsigned NOT NULL,
  `group` int unsigned NOT NULL,
  `id` int unsigned DEFAULT NULL,
  `rate` tinyint unsigned DEFAULT NULL,
  `flag` int unsigned DEFAULT NULL,
  `world` smallint unsigned DEFAULT NULL,
  `x1` smallint DEFAULT NULL,
  `y1` smallint DEFAULT NULL,
  `x2` smallint DEFAULT NULL,
  `y2` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_invasion_group`
--

LOCK TABLES `event_invasion_group` WRITE;
/*!40000 ALTER TABLE `event_invasion_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_invasion_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_jewel_bingo_reward`
--

DROP TABLE IF EXISTS `event_jewel_bingo_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_jewel_bingo_reward` (
  `type` tinyint unsigned NOT NULL,
  `score_min` int DEFAULT NULL,
  `score_max` int DEFAULT NULL,
  `item` smallint unsigned DEFAULT NULL,
  `level` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_jewel_bingo_reward`
--

LOCK TABLES `event_jewel_bingo_reward` WRITE;
/*!40000 ALTER TABLE `event_jewel_bingo_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_jewel_bingo_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_area`
--

DROP TABLE IF EXISTS `event_labyrinth_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_area` (
  `index` tinyint unsigned NOT NULL,
  `stage` tinyint unsigned DEFAULT NULL,
  `row_count` tinyint unsigned DEFAULT NULL,
  `column_count` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_area`
--

LOCK TABLES `event_labyrinth_area` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_area_data`
--

DROP TABLE IF EXISTS `event_labyrinth_area_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_area_data` (
  `area_index` tinyint unsigned NOT NULL,
  `sub_index` tinyint unsigned DEFAULT NULL,
  `index` tinyint unsigned DEFAULT NULL,
  `world_index` tinyint unsigned DEFAULT NULL,
  `area_type` tinyint unsigned DEFAULT NULL,
  `mission_id` tinyint unsigned DEFAULT NULL,
  `gate_1` tinyint unsigned DEFAULT NULL,
  `gate_2` tinyint unsigned DEFAULT NULL,
  `gate_3` tinyint unsigned DEFAULT NULL,
  `gate_4` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_area_data`
--

LOCK TABLES `event_labyrinth_area_data` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_area_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_area_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_info`
--

DROP TABLE IF EXISTS `event_labyrinth_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_info` (
  `index` tinyint unsigned NOT NULL,
  `world` smallint unsigned NOT NULL,
  `x1` smallint DEFAULT NULL,
  `y1` smallint DEFAULT NULL,
  `x2` smallint DEFAULT NULL,
  `y2` smallint DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_info`
--

LOCK TABLES `event_labyrinth_info` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_level`
--

DROP TABLE IF EXISTS `event_labyrinth_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_level` (
  `id` smallint unsigned NOT NULL,
  `level` int DEFAULT NULL,
  `first_score` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_level`
--

LOCK TABLES `event_labyrinth_level` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_mission`
--

DROP TABLE IF EXISTS `event_labyrinth_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_mission` (
  `area_type` tinyint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `mission_type_1` tinyint unsigned DEFAULT NULL,
  `mission_value_1` int DEFAULT NULL,
  `mission_type_2` tinyint unsigned DEFAULT NULL,
  `mission_value_2` int DEFAULT NULL,
  `mission_type_3` tinyint unsigned DEFAULT NULL,
  `mission_value_3` int DEFAULT NULL,
  `mission_type_4` tinyint unsigned DEFAULT NULL,
  `mission_value_4` int DEFAULT NULL,
  `mission_type_5` tinyint unsigned DEFAULT NULL,
  `mission_value_5` int DEFAULT NULL,
  `mission_type_6` tinyint unsigned DEFAULT NULL,
  `mission_value_6` int DEFAULT NULL,
  `monster_1` smallint unsigned DEFAULT NULL,
  `count_1` int DEFAULT NULL,
  `monster_2` smallint unsigned DEFAULT NULL,
  `count_2` int DEFAULT NULL,
  `monster_3` smallint unsigned DEFAULT NULL,
  `count_3` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_mission`
--

LOCK TABLES `event_labyrinth_mission` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_monster`
--

DROP TABLE IF EXISTS `event_labyrinth_monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_monster` (
  `id` smallint unsigned NOT NULL,
  `level` float DEFAULT NULL,
  `hp` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_success_rate` float DEFAULT NULL,
  `defense_success_rate` float DEFAULT NULL,
  `elemental_damage` float DEFAULT NULL,
  `elemental_defense` float DEFAULT NULL,
  `elemental_attack_success_rate` float DEFAULT NULL,
  `elemental_defense_success_rate` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_monster`
--

LOCK TABLES `event_labyrinth_monster` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_reward`
--

DROP TABLE IF EXISTS `event_labyrinth_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_reward` (
  `category` tinyint unsigned NOT NULL,
  `rank` tinyint unsigned DEFAULT NULL,
  `class` tinyint unsigned DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL,
  `index` smallint unsigned DEFAULT NULL,
  `level` tinyint unsigned DEFAULT NULL,
  `durability` tinyint unsigned DEFAULT NULL,
  `skill` tinyint unsigned DEFAULT NULL,
  `luck` tinyint unsigned DEFAULT NULL,
  `option` tinyint unsigned DEFAULT NULL,
  `excellent` tinyint unsigned DEFAULT NULL,
  `ancient` tinyint unsigned DEFAULT NULL,
  `db_flags` int unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_reward`
--

LOCK TABLES `event_labyrinth_reward` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_level`
--

DROP TABLE IF EXISTS `event_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_level` (
  `id` tinyint unsigned NOT NULL,
  `ground` tinyint unsigned DEFAULT NULL,
  `normal_level_min` smallint DEFAULT NULL,
  `normal_level_max` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_level`
--

LOCK TABLES `event_level` WRITE;
/*!40000 ALTER TABLE `event_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_manager`
--

DROP TABLE IF EXISTS `event_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_manager` (
  `server` smallint unsigned NOT NULL,
  `event_id` tinyint unsigned DEFAULT NULL,
  `invasion` int unsigned DEFAULT NULL,
  `duration` int unsigned DEFAULT NULL,
  `notify_time` int unsigned DEFAULT NULL,
  `hour` tinyint unsigned DEFAULT NULL,
  `minute` tinyint unsigned DEFAULT NULL,
  `day_of_week` tinyint unsigned DEFAULT NULL,
  `day_of_month` tinyint unsigned DEFAULT NULL,
  `season_event` tinyint unsigned DEFAULT NULL,
  `exclusive_server` smallint NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_manager`
--

LOCK TABLES `event_manager` WRITE;
/*!40000 ALTER TABLE `event_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mini_bomb_reward`
--

DROP TABLE IF EXISTS `event_mini_bomb_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mini_bomb_reward` (
  `score_min` smallint unsigned NOT NULL,
  `score_max` smallint unsigned DEFAULT NULL,
  `item` smallint unsigned DEFAULT NULL,
  `level` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mini_bomb_reward`
--

LOCK TABLES `event_mini_bomb_reward` WRITE;
/*!40000 ALTER TABLE `event_mini_bomb_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_mini_bomb_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mu_roomy_reward`
--

DROP TABLE IF EXISTS `event_mu_roomy_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mu_roomy_reward` (
  `type` tinyint unsigned NOT NULL,
  `score_min` smallint unsigned DEFAULT NULL,
  `score_max` smallint unsigned DEFAULT NULL,
  `item` smallint unsigned DEFAULT NULL,
  `level` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mu_roomy_reward`
--

LOCK TABLES `event_mu_roomy_reward` WRITE;
/*!40000 ALTER TABLE `event_mu_roomy_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_mu_roomy_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_numeric_baseball_reward`
--

DROP TABLE IF EXISTS `event_numeric_baseball_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_numeric_baseball_reward` (
  `score_min` int NOT NULL,
  `score_max` int NOT NULL,
  `item` smallint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_numeric_baseball_reward`
--

LOCK TABLES `event_numeric_baseball_reward` WRITE;
/*!40000 ALTER TABLE `event_numeric_baseball_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_numeric_baseball_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_season_manager`
--

DROP TABLE IF EXISTS `event_season_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_season_manager` (
  `event` tinyint unsigned NOT NULL,
  `name` text,
  `start_date` bigint unsigned DEFAULT NULL,
  `end_date` bigint unsigned DEFAULT NULL,
  `ocurrence` int unsigned DEFAULT NULL,
  `duration` int unsigned DEFAULT NULL,
  `start_message` text,
  `end_message` text,
  PRIMARY KEY (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_season_manager`
--

LOCK TABLES `event_season_manager` WRITE;
/*!40000 ALTER TABLE `event_season_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_season_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tormented_square_ranking`
--

DROP TABLE IF EXISTS `event_tormented_square_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_tormented_square_ranking` (
  `ground` tinyint unsigned NOT NULL,
  `rank` tinyint unsigned NOT NULL,
  `reward` smallint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tormented_square_ranking`
--

LOCK TABLES `event_tormented_square_ranking` WRITE;
/*!40000 ALTER TABLE `event_tormented_square_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_tormented_square_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tormented_square_stage`
--

DROP TABLE IF EXISTS `event_tormented_square_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_tormented_square_stage` (
  `ground` tinyint unsigned NOT NULL,
  `stage` tinyint unsigned NOT NULL,
  `standby` int NOT NULL,
  `duration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tormented_square_stage`
--

LOCK TABLES `event_tormented_square_stage` WRITE;
/*!40000 ALTER TABLE `event_tormented_square_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_tormented_square_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evomon`
--

DROP TABLE IF EXISTS `evomon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evomon` (
  `id` tinyint unsigned NOT NULL,
  `monster` smallint unsigned DEFAULT NULL,
  `level` tinyint unsigned DEFAULT NULL,
  `life` int DEFAULT NULL,
  `attack_damage_min` int DEFAULT NULL,
  `attack_damage_max` int DEFAULT NULL,
  `attack_success_rate` int DEFAULT NULL,
  `defense` int DEFAULT NULL,
  `defense_success_rate` int DEFAULT NULL,
  `next_id` tinyint unsigned DEFAULT NULL,
  `next_id_rate` smallint unsigned DEFAULT NULL,
  `special_rate` smallint unsigned DEFAULT NULL,
  `special_monster` smallint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evomon`
--

LOCK TABLES `evomon` WRITE;
/*!40000 ALTER TABLE `evomon` DISABLE KEYS */;
/*!40000 ALTER TABLE `evomon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evomon_reward`
--

DROP TABLE IF EXISTS `evomon_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evomon_reward` (
  `score_min` int unsigned NOT NULL,
  `score_max` int NOT NULL,
  `reward_type` tinyint unsigned DEFAULT NULL,
  `reward_index` smallint unsigned DEFAULT NULL,
  `reward_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evomon_reward`
--

LOCK TABLES `evomon_reward` WRITE;
/*!40000 ALTER TABLE `evomon_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `evomon_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_majestic`
--

DROP TABLE IF EXISTS `experience_majestic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_majestic` (
  `level` smallint unsigned NOT NULL,
  `experience` bigint NOT NULL,
  `accumulated_experience` bigint NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_majestic`
--

LOCK TABLES `experience_majestic` WRITE;
/*!40000 ALTER TABLE `experience_majestic` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_majestic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_master`
--

DROP TABLE IF EXISTS `experience_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_master` (
  `level` smallint unsigned NOT NULL,
  `experience` bigint NOT NULL,
  `accumulated_experience` bigint NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_master`
--

LOCK TABLES `experience_master` WRITE;
/*!40000 ALTER TABLE `experience_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_normal`
--

DROP TABLE IF EXISTS `experience_normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_normal` (
  `level` smallint unsigned NOT NULL,
  `experience` bigint NOT NULL,
  `accumulated_experience` bigint NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_normal`
--

LOCK TABLES `experience_normal` WRITE;
/*!40000 ALTER TABLE `experience_normal` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_normal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_text`
--

DROP TABLE IF EXISTS `filter_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_text` (
  `word` text NOT NULL,
  `flags` tinyint unsigned NOT NULL,
  `action` tinyint unsigned NOT NULL,
  `replace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_text`
--

LOCK TABLES `filter_text` WRITE;
/*!40000 ALTER TABLE `filter_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formula_data`
--

DROP TABLE IF EXISTS `formula_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formula_data` (
  `type` tinyint unsigned NOT NULL,
  `id` smallint unsigned NOT NULL,
  `formula` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formula_data`
--

LOCK TABLES `formula_data` WRITE;
/*!40000 ALTER TABLE `formula_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `formula_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gate_template`
--

DROP TABLE IF EXISTS `gate_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gate_template` (
  `id` smallint unsigned NOT NULL,
  `flag` tinyint unsigned DEFAULT NULL,
  `world` smallint unsigned DEFAULT NULL,
  `x1` smallint DEFAULT NULL,
  `y1` smallint DEFAULT NULL,
  `x2` smallint DEFAULT NULL,
  `y2` smallint DEFAULT NULL,
  `target_id` smallint unsigned DEFAULT NULL,
  `direction` tinyint unsigned NOT NULL,
  `min_level` smallint DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gate_template`
--

LOCK TABLES `gate_template` WRITE;
/*!40000 ALTER TABLE `gate_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gate_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_kill_point`
--

DROP TABLE IF EXISTS `gen_kill_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_kill_point` (
  `type` tinyint unsigned NOT NULL,
  `min` smallint DEFAULT NULL,
  `max` smallint DEFAULT NULL,
  `points_add_1` int DEFAULT NULL,
  `points_add_2` int DEFAULT NULL,
  `points_add_3` int DEFAULT NULL,
  `points_add_4` int DEFAULT NULL,
  `points_add_5` int DEFAULT NULL,
  `points_dec_1` int DEFAULT NULL,
  `points_dec_2` int DEFAULT NULL,
  `points_dec_3` int DEFAULT NULL,
  `points_dec_4` int DEFAULT NULL,
  `points_dec_5` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_kill_point`
--

LOCK TABLES `gen_kill_point` WRITE;
/*!40000 ALTER TABLE `gen_kill_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_kill_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_ranking`
--

DROP TABLE IF EXISTS `gen_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_ranking` (
  `family` tinyint unsigned NOT NULL,
  `level` tinyint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `value` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_ranking`
--

LOCK TABLES `gen_ranking` WRITE;
/*!40000 ALTER TABLE `gen_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_reward`
--

DROP TABLE IF EXISTS `gen_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_reward` (
  `family` tinyint unsigned NOT NULL,
  `level` tinyint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `reward_type` int unsigned DEFAULT NULL,
  `reward_index` int unsigned DEFAULT NULL,
  `reward_level` int unsigned DEFAULT NULL,
  `reward_count` int unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_reward`
--

LOCK TABLES `gen_reward` WRITE;
/*!40000 ALTER TABLE `gen_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goblin_points_data`
--

DROP TABLE IF EXISTS `goblin_points_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goblin_points_data` (
  `monster_level_min` smallint NOT NULL,
  `monster_level_max` smallint NOT NULL,
  `player_level_min` smallint NOT NULL,
  `player_level_max` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goblin_points_data`
--

LOCK TABLES `goblin_points_data` WRITE;
/*!40000 ALTER TABLE `goblin_points_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `goblin_points_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc_non_pk_time`
--

DROP TABLE IF EXISTS `misc_non_pk_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misc_non_pk_time` (
  `server` smallint unsigned NOT NULL,
  `start_hour` tinyint unsigned DEFAULT NULL,
  `start_minute` tinyint unsigned DEFAULT NULL,
  `end_hour` tinyint unsigned DEFAULT NULL,
  `end_minute` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc_non_pk_time`
--

LOCK TABLES `misc_non_pk_time` WRITE;
/*!40000 ALTER TABLE `misc_non_pk_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `misc_non_pk_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster` (
  `server` smallint unsigned NOT NULL,
  `guid` smallint unsigned NOT NULL,
  `id` smallint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `world` smallint unsigned NOT NULL,
  `x1` smallint NOT NULL,
  `y1` smallint NOT NULL,
  `x2` smallint NOT NULL,
  `y2` smallint NOT NULL,
  `direction` tinyint NOT NULL,
  `spawn_delay` int unsigned NOT NULL DEFAULT '0',
  `spawn_distance` tinyint unsigned DEFAULT NULL,
  `respawn_time_min` int unsigned DEFAULT NULL,
  `respawn_time_max` int unsigned DEFAULT NULL,
  `respawn_id` int unsigned DEFAULT NULL,
  `move_distance` tinyint NOT NULL DEFAULT '0',
  `npc_function` text,
  `item_bag` text,
  `script_name` text,
  `elemental_attribute` tinyint unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_respawn_location`
--

DROP TABLE IF EXISTS `monster_respawn_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_respawn_location` (
  `server` smallint unsigned NOT NULL,
  `group` int unsigned DEFAULT NULL,
  `world` smallint unsigned DEFAULT NULL,
  `x1` smallint DEFAULT NULL,
  `y1` smallint DEFAULT NULL,
  `x2` smallint DEFAULT NULL,
  `y2` smallint DEFAULT NULL,
  `direction` tinyint DEFAULT NULL,
  `instance` int DEFAULT NULL,
  `rate` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_respawn_location`
--

LOCK TABLES `monster_respawn_location` WRITE;
/*!40000 ALTER TABLE `monster_respawn_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_respawn_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_template`
--

DROP TABLE IF EXISTS `monster_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_template` (
  `id` smallint unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `model` smallint unsigned DEFAULT NULL,
  `size` float DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL,
  `min_level` smallint DEFAULT NULL,
  `max_level` smallint DEFAULT NULL,
  `life` int DEFAULT NULL,
  `mana` int DEFAULT NULL,
  `shield` int DEFAULT NULL,
  `stamina` int DEFAULT NULL,
  `attack_min_damage` int DEFAULT NULL,
  `attack_max_damage` int DEFAULT NULL,
  `magic_min_damage` int DEFAULT NULL,
  `magic_max_damage` int DEFAULT NULL,
  `critical_damage_rate` int DEFAULT NULL,
  `critical_damage_add` int DEFAULT NULL,
  `excellent_damage_rate` int DEFAULT NULL,
  `excellent_damage_add` int DEFAULT NULL,
  `attack_success` int DEFAULT NULL,
  `defense` int DEFAULT NULL,
  `defense_magic` int DEFAULT NULL,
  `defense_success` int DEFAULT NULL,
  `move_range` int unsigned DEFAULT NULL,
  `move_speed` int unsigned DEFAULT NULL,
  `attack_range` int unsigned DEFAULT NULL,
  `attack_speed` int DEFAULT NULL,
  `view_range` int unsigned DEFAULT NULL,
  `resistance_ice` tinyint unsigned DEFAULT NULL,
  `resistance_poison` tinyint unsigned DEFAULT NULL,
  `resistance_lightning` tinyint unsigned DEFAULT NULL,
  `resistance_fire` tinyint unsigned DEFAULT NULL,
  `resistance_earth` tinyint unsigned DEFAULT NULL,
  `resistance_wind` tinyint unsigned DEFAULT NULL,
  `resistance_water` tinyint unsigned DEFAULT NULL,
  `respawn_time_min` int unsigned DEFAULT NULL,
  `respawn_time_max` int unsigned DEFAULT NULL,
  `item_rate` int DEFAULT NULL,
  `zen_rate` int DEFAULT NULL,
  `item_max_level` int DEFAULT NULL,
  `regen_power_life` float DEFAULT NULL,
  `regen_time_life` int unsigned DEFAULT NULL,
  `regen_power_mana` float DEFAULT NULL,
  `regen_time_mana` int unsigned DEFAULT NULL,
  `regen_power_shield` float DEFAULT NULL,
  `regen_time_shield` int unsigned DEFAULT NULL,
  `regen_power_stamina` float DEFAULT NULL,
  `regen_time_stamina` int unsigned DEFAULT NULL,
  `faction` tinyint unsigned DEFAULT NULL,
  `faction_level` tinyint unsigned DEFAULT NULL,
  `script_name` text,
  `elemental_attribute` tinyint unsigned DEFAULT NULL,
  `elemental_pattern` int DEFAULT NULL,
  `elemental_defense` int DEFAULT NULL,
  `elemental_damage_min` int DEFAULT NULL,
  `elemental_damage_max` int DEFAULT NULL,
  `elemental_attack_rate` int DEFAULT NULL,
  `elemental_defense_rate` int DEFAULT NULL,
  `radiance_immune` tinyint unsigned DEFAULT NULL,
  `debuff_resistance` int DEFAULT NULL,
  `debuff_defense` int DEFAULT NULL,
  `critical_damage_resistance` tinyint unsigned DEFAULT NULL,
  `excellent_damage_resistance` tinyint unsigned DEFAULT NULL,
  `damage_absorb` tinyint unsigned DEFAULT NULL,
  `elite` tinyint DEFAULT NULL,
  `disabled` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_template`
--

LOCK TABLES `monster_template` WRITE;
/*!40000 ALTER TABLE `monster_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `server` smallint unsigned NOT NULL,
  `notice` text,
  `type` tinyint unsigned DEFAULT NULL,
  `world` smallint unsigned DEFAULT NULL,
  `flag` tinyint unsigned DEFAULT NULL,
  `time` int unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_mu`
--

DROP TABLE IF EXISTS `quest_mu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_mu` (
  `ID` smallint unsigned NOT NULL,
  `Name` text,
  `Server` tinyint unsigned DEFAULT NULL,
  `Day` tinyint unsigned DEFAULT NULL,
  `TemplateType1` tinyint unsigned DEFAULT NULL,
  `Chapter` tinyint unsigned DEFAULT NULL,
  `Category` tinyint unsigned DEFAULT NULL,
  `Importance` tinyint unsigned DEFAULT NULL,
  `StartType` tinyint unsigned DEFAULT NULL,
  `StartSubType` smallint unsigned DEFAULT NULL,
  `LevelMin` smallint unsigned DEFAULT NULL,
  `LevelMax` smallint unsigned DEFAULT NULL,
  `RepeatCycle` tinyint DEFAULT NULL,
  `PrecedenceQuest` smallint DEFAULT NULL,
  `StartItemType` tinyint DEFAULT NULL,
  `StartItemIndex` smallint DEFAULT NULL,
  `CheckGens` tinyint DEFAULT NULL,
  `Zen` int DEFAULT NULL,
  `DarkWizard` tinyint unsigned DEFAULT NULL,
  `DarkKnight` tinyint unsigned DEFAULT NULL,
  `FairyElf` tinyint unsigned DEFAULT NULL,
  `MagicGladiator` tinyint unsigned DEFAULT NULL,
  `DarkLord` tinyint unsigned DEFAULT NULL,
  `Summoner` tinyint unsigned DEFAULT NULL,
  `RageFighter` tinyint unsigned DEFAULT NULL,
  `GrowLancer` tinyint unsigned DEFAULT NULL,
  `RuneWizard` tinyint unsigned DEFAULT NULL,
  `Slayer` tinyint unsigned DEFAULT NULL,
  `GunCrusher` tinyint unsigned DEFAULT NULL,
  `AddClass1` tinyint unsigned DEFAULT NULL,
  `TemplateType2` tinyint unsigned DEFAULT NULL,
  `ObjectiveType` tinyint unsigned DEFAULT NULL,
  `ObjectiveMainType` smallint DEFAULT NULL,
  `ObjectiveMainSubType` smallint DEFAULT NULL,
  `TargetNumber` smallint DEFAULT NULL,
  `TargetMaxLevel` smallint DEFAULT NULL,
  `DropRate` smallint DEFAULT NULL,
  `GateID` smallint unsigned DEFAULT NULL,
  `MapID` smallint unsigned DEFAULT NULL,
  `X` tinyint unsigned DEFAULT NULL,
  `Y` tinyint unsigned DEFAULT NULL,
  `RewardExperience` int DEFAULT NULL,
  `RewardZen` int DEFAULT NULL,
  `RewardGensPoints` tinyint unsigned DEFAULT NULL,
  `quest_mucol` varchar(45) DEFAULT NULL,
  `RewardItemType01` tinyint DEFAULT NULL,
  `RewardItemIndex01` smallint DEFAULT NULL,
  `RewardItemCount01` smallint DEFAULT NULL,
  `RewardItemType02` tinyint DEFAULT NULL,
  `RewardItemIndex02` smallint DEFAULT NULL,
  `RewardItemCount02` smallint DEFAULT NULL,
  `RewardItemType03` tinyint DEFAULT NULL,
  `RewardItemIndex03` smallint DEFAULT NULL,
  `RewardItemCount03` smallint DEFAULT NULL,
  `RewardType` smallint DEFAULT NULL,
  `RewardSubType` smallint DEFAULT NULL,
  `RewardNumber` smallint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_mu`
--

LOCK TABLES `quest_mu` WRITE;
/*!40000 ALTER TABLE `quest_mu` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_mu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04 16:24:40
