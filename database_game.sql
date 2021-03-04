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

-- Dump completed on 2021-03-04 10:20:05
