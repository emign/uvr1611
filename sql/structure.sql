-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: uvr1611
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

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
-- Table structure for table `t_chartoptions`
--

DROP TABLE IF EXISTS `t_chartoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_chartoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chard_id` int(11) NOT NULL,
  `property` varchar(120) NOT NULL,
  `value` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_data`
--

DROP TABLE IF EXISTS `t_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `analog1` float DEFAULT NULL,
  `analog2` float DEFAULT NULL,
  `analog3` float DEFAULT NULL,
  `analog4` float DEFAULT NULL,
  `analog5` float DEFAULT NULL,
  `analog6` float DEFAULT NULL,
  `analog7` float DEFAULT NULL,
  `analog8` float DEFAULT NULL,
  `analog9` float DEFAULT NULL,
  `analog10` float DEFAULT NULL,
  `analog11` float DEFAULT NULL,
  `analog12` float DEFAULT NULL,
  `analog13` float DEFAULT NULL,
  `analog14` float DEFAULT NULL,
  `analog15` float DEFAULT NULL,
  `analog16` float DEFAULT NULL,
  `digital1` char(1) DEFAULT NULL,
  `digital2` char(1) DEFAULT NULL,
  `digital3` char(1) DEFAULT NULL,
  `digital4` char(1) DEFAULT NULL,
  `digital5` char(1) DEFAULT NULL,
  `digital6` char(1) DEFAULT NULL,
  `digital7` char(1) DEFAULT NULL,
  `digital8` char(1) DEFAULT NULL,
  `digital9` char(1) DEFAULT NULL,
  `digital10` char(1) DEFAULT NULL,
  `digital11` char(1) DEFAULT NULL,
  `digital12` char(1) DEFAULT NULL,
  `digital13` char(1) DEFAULT NULL,
  `digital14` char(1) DEFAULT NULL,
  `digital15` char(1) DEFAULT NULL,
  `digital16` char(1) DEFAULT NULL,
  `speed1` int(2) DEFAULT NULL,
  `speed2` int(2) DEFAULT NULL,
  `speed3` int(2) DEFAULT NULL,
  `speed4` int(2) DEFAULT NULL,
  `power1` float DEFAULT NULL,
  `power2` float DEFAULT NULL,
  `energy1` decimal(10,1) DEFAULT NULL,
  `energy2` decimal(10,1) DEFAULT NULL,
  `substraction1` float AS (analog10 - analog8) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`date`,`frame`)
) ENGINE=MyISAM AUTO_INCREMENT=262316 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_digital_counts`
--

DROP TABLE IF EXISTS `t_digital_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_digital_counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `digital1` int(3) DEFAULT NULL,
  `digital2` int(3) DEFAULT NULL,
  `digital3` int(3) DEFAULT NULL,
  `digital4` int(3) DEFAULT NULL,
  `digital5` int(3) DEFAULT NULL,
  `digital6` int(3) DEFAULT NULL,
  `digital7` int(3) DEFAULT NULL,
  `digital8` int(3) DEFAULT NULL,
  `digital9` int(3) DEFAULT NULL,
  `digital10` int(3) DEFAULT NULL,
  `digital11` int(3) DEFAULT NULL,
  `digital12` int(3) DEFAULT NULL,
  `digital13` int(3) DEFAULT NULL,
  `digital14` int(3) DEFAULT NULL,
  `digital15` int(3) DEFAULT NULL,
  `digital16` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`date`,`frame`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_digital_times`
--

DROP TABLE IF EXISTS `t_digital_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_digital_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `digital1` float DEFAULT NULL,
  `digital2` float DEFAULT NULL,
  `digital3` float DEFAULT NULL,
  `digital4` float DEFAULT NULL,
  `digital5` float DEFAULT NULL,
  `digital6` float DEFAULT NULL,
  `digital7` float DEFAULT NULL,
  `digital8` float DEFAULT NULL,
  `digital9` float DEFAULT NULL,
  `digital10` float DEFAULT NULL,
  `digital11` float DEFAULT NULL,
  `digital12` float DEFAULT NULL,
  `digital13` float DEFAULT NULL,
  `digital14` float DEFAULT NULL,
  `digital15` float DEFAULT NULL,
  `digital16` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`date`,`frame`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_energies`
--

DROP TABLE IF EXISTS `t_energies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_energies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `energy1` decimal(10,1) DEFAULT NULL,
  `energy2` decimal(10,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`date`,`frame`)
) ENGINE=MyISAM AUTO_INCREMENT=1789 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_max`
--

DROP TABLE IF EXISTS `t_max`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_max` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `analog1` float DEFAULT NULL,
  `analog2` float DEFAULT NULL,
  `analog3` float DEFAULT NULL,
  `analog4` float DEFAULT NULL,
  `analog5` float DEFAULT NULL,
  `analog6` float DEFAULT NULL,
  `analog7` float DEFAULT NULL,
  `analog8` float DEFAULT NULL,
  `analog9` float DEFAULT NULL,
  `analog10` float DEFAULT NULL,
  `analog11` float DEFAULT NULL,
  `analog12` float DEFAULT NULL,
  `analog13` float DEFAULT NULL,
  `analog14` float DEFAULT NULL,
  `analog15` float DEFAULT NULL,
  `analog16` float DEFAULT NULL,
  `speed1` int(2) DEFAULT NULL,
  `speed2` int(2) DEFAULT NULL,
  `speed3` int(2) DEFAULT NULL,
  `speed4` int(2) DEFAULT NULL,
  `power1` float DEFAULT NULL,
  `power2` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`date`,`frame`)
) ENGINE=MyISAM AUTO_INCREMENT=1789 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `schema` varchar(200) DEFAULT NULL,
  `view` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_min`
--

DROP TABLE IF EXISTS `t_min`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_min` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `analog1` float DEFAULT NULL,
  `analog2` float DEFAULT NULL,
  `analog3` float DEFAULT NULL,
  `analog4` float DEFAULT NULL,
  `analog5` float DEFAULT NULL,
  `analog6` float DEFAULT NULL,
  `analog7` float DEFAULT NULL,
  `analog8` float DEFAULT NULL,
  `analog9` float DEFAULT NULL,
  `analog10` float DEFAULT NULL,
  `analog11` float DEFAULT NULL,
  `analog12` float DEFAULT NULL,
  `analog13` float DEFAULT NULL,
  `analog14` float DEFAULT NULL,
  `analog15` float DEFAULT NULL,
  `analog16` float DEFAULT NULL,
  `speed1` int(2) DEFAULT NULL,
  `speed2` int(2) DEFAULT NULL,
  `speed3` int(2) DEFAULT NULL,
  `speed4` int(2) DEFAULT NULL,
  `power1` float DEFAULT NULL,
  `power2` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`date`,`frame`)
) ENGINE=MyISAM AUTO_INCREMENT=1789 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_names`
--

DROP TABLE IF EXISTS `t_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `type` enum('analog1','analog2','analog3','analog4','analog5','analog6','analog7','analog8','analog9','analog10','analog11','analog12','analog13','analog14','analog15','analog16','digital1','digital2','digital3','digital4','digital5','digital6','digital7','digital8','digital9','digital10','digital11','digital12','digital13','digital14','digital15','digital16','speed1','speed2','speed3','speed4','energy1','energy2','power1','power2','substraction1') NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `frame` (`frame`,`type`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_names_of_charts`
--

DROP TABLE IF EXISTS `t_names_of_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_names_of_charts` (
  `chart_id` int(11) NOT NULL,
  `type` enum('analog1','analog2','analog3','analog4','analog5','analog6','analog7','analog8','analog9','analog10','analog11','analog12','analog13','analog14','analog15','analog16','digital1','digital2','digital3','digital4','digital5','digital6','digital7','digital8','digital9','digital10','digital11','digital12','digital13','digital14','digital15','digital16','speed1','speed2','speed3','speed4','energy1','energy2','power1','power2','substraction1') NOT NULL,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`chart_id`,`type`,`frame`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_schema`
--

DROP TABLE IF EXISTS `t_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_schema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) NOT NULL,
  `frame` enum('frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8') NOT NULL,
  `type` enum('analog1','analog2','analog3','analog4','analog5','analog6','analog7','analog8','analog9','analog10','analog11','analog12','analog13','analog14','analog15','analog16','digital1','digital2','digital3','digital4','digital5','digital6','digital7','digital8','digital9','digital10','digital11','digital12','digital13','digital14','digital15','digital16','speed1','speed2','speed3','speed4','energy1','energy2','power1','power2','current_energy1','current_energy2','substraction1') NOT NULL,
  `format` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`frame`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `v_energies`
--

DROP TABLE IF EXISTS `v_energies`;
/*!50001 DROP VIEW IF EXISTS `v_energies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_energies` (
  `date` tinyint NOT NULL,
  `energy1` tinyint NOT NULL,
  `energy2` tinyint NOT NULL,
  `frame` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_max`
--

DROP TABLE IF EXISTS `v_max`;
/*!50001 DROP VIEW IF EXISTS `v_max`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_max` (
  `date` tinyint NOT NULL,
  `analog1` tinyint NOT NULL,
  `analog2` tinyint NOT NULL,
  `analog3` tinyint NOT NULL,
  `analog4` tinyint NOT NULL,
  `analog5` tinyint NOT NULL,
  `analog6` tinyint NOT NULL,
  `analog7` tinyint NOT NULL,
  `analog8` tinyint NOT NULL,
  `analog9` tinyint NOT NULL,
  `analog10` tinyint NOT NULL,
  `analog11` tinyint NOT NULL,
  `analog12` tinyint NOT NULL,
  `analog13` tinyint NOT NULL,
  `analog14` tinyint NOT NULL,
  `analog15` tinyint NOT NULL,
  `analog16` tinyint NOT NULL,
  `speed1` tinyint NOT NULL,
  `speed2` tinyint NOT NULL,
  `speed3` tinyint NOT NULL,
  `speed4` tinyint NOT NULL,
  `power1` tinyint NOT NULL,
  `power2` tinyint NOT NULL,
  `frame` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_min`
--

DROP TABLE IF EXISTS `v_min`;
/*!50001 DROP VIEW IF EXISTS `v_min`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_min` (
  `date` tinyint NOT NULL,
  `analog1` tinyint NOT NULL,
  `analog2` tinyint NOT NULL,
  `analog3` tinyint NOT NULL,
  `analog4` tinyint NOT NULL,
  `analog5` tinyint NOT NULL,
  `analog6` tinyint NOT NULL,
  `analog7` tinyint NOT NULL,
  `analog8` tinyint NOT NULL,
  `analog9` tinyint NOT NULL,
  `analog10` tinyint NOT NULL,
  `analog11` tinyint NOT NULL,
  `analog12` tinyint NOT NULL,
  `analog13` tinyint NOT NULL,
  `analog14` tinyint NOT NULL,
  `analog15` tinyint NOT NULL,
  `analog16` tinyint NOT NULL,
  `speed1` tinyint NOT NULL,
  `speed2` tinyint NOT NULL,
  `speed3` tinyint NOT NULL,
  `speed4` tinyint NOT NULL,
  `power1` tinyint NOT NULL,
  `power2` tinyint NOT NULL,
  `frame` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_minmaxdate`
--

DROP TABLE IF EXISTS `v_minmaxdate`;
/*!50001 DROP VIEW IF EXISTS `v_minmaxdate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_minmaxdate` (
  `date` tinyint NOT NULL,
  `min` tinyint NOT NULL,
  `max` tinyint NOT NULL,
  `frame` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_energies`
--

/*!50001 DROP TABLE IF EXISTS `v_energies`*/;
/*!50001 DROP VIEW IF EXISTS `v_energies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uvr1611`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_energies` AS select cast(`v_minmaxdate`.`date` as date) AS `date`,(`max`.`energy1` - `min`.`energy1`) AS `energy1`,(`max`.`energy2` - `min`.`energy2`) AS `energy2`,`v_minmaxdate`.`frame` AS `frame` from ((`v_minmaxdate` left join `t_data` `min` on(((`min`.`date` = `v_minmaxdate`.`min`) and (`min`.`frame` = `v_minmaxdate`.`frame`)))) left join `t_data` `max` on(((`max`.`date` = `v_minmaxdate`.`max`) and (`max`.`frame` = `v_minmaxdate`.`frame`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_max`
--

/*!50001 DROP TABLE IF EXISTS `v_max`*/;
/*!50001 DROP VIEW IF EXISTS `v_max`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uvr1611`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_max` AS select cast(`t_data`.`date` as date) AS `date`,max(`t_data`.`analog1`) AS `analog1`,max(`t_data`.`analog2`) AS `analog2`,max(`t_data`.`analog3`) AS `analog3`,max(`t_data`.`analog4`) AS `analog4`,max(`t_data`.`analog5`) AS `analog5`,max(`t_data`.`analog6`) AS `analog6`,max(`t_data`.`analog7`) AS `analog7`,max(`t_data`.`analog8`) AS `analog8`,max(`t_data`.`analog9`) AS `analog9`,max(`t_data`.`analog10`) AS `analog10`,max(`t_data`.`analog11`) AS `analog11`,max(`t_data`.`analog12`) AS `analog12`,max(`t_data`.`analog13`) AS `analog13`,max(`t_data`.`analog14`) AS `analog14`,max(`t_data`.`analog15`) AS `analog15`,max(`t_data`.`analog16`) AS `analog16`,max(`t_data`.`speed1`) AS `speed1`,max(`t_data`.`speed2`) AS `speed2`,max(`t_data`.`speed3`) AS `speed3`,max(`t_data`.`speed4`) AS `speed4`,max(`t_data`.`power1`) AS `power1`,max(`t_data`.`power2`) AS `power2`,`t_data`.`frame` AS `frame` from `t_data` where ((`t_data`.`date` >= cast((select max(`t_max`.`date`) from `t_max`) as date)) or ((select count(0) from `t_max`) = 0)) group by cast(`t_data`.`date` as date),`t_data`.`frame` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_min`
--

/*!50001 DROP TABLE IF EXISTS `v_min`*/;
/*!50001 DROP VIEW IF EXISTS `v_min`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uvr1611`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_min` AS select cast(`t_data`.`date` as date) AS `date`,min(`t_data`.`analog1`) AS `analog1`,min(`t_data`.`analog2`) AS `analog2`,min(`t_data`.`analog3`) AS `analog3`,min(`t_data`.`analog4`) AS `analog4`,min(`t_data`.`analog5`) AS `analog5`,min(`t_data`.`analog6`) AS `analog6`,min(`t_data`.`analog7`) AS `analog7`,min(`t_data`.`analog8`) AS `analog8`,min(`t_data`.`analog9`) AS `analog9`,min(`t_data`.`analog10`) AS `analog10`,min(`t_data`.`analog11`) AS `analog11`,min(`t_data`.`analog12`) AS `analog12`,min(`t_data`.`analog13`) AS `analog13`,min(`t_data`.`analog14`) AS `analog14`,min(`t_data`.`analog15`) AS `analog15`,min(`t_data`.`analog16`) AS `analog16`,min(`t_data`.`speed1`) AS `speed1`,min(`t_data`.`speed2`) AS `speed2`,min(`t_data`.`speed3`) AS `speed3`,min(`t_data`.`speed4`) AS `speed4`,min(`t_data`.`power1`) AS `power1`,min(`t_data`.`power2`) AS `power2`,`t_data`.`frame` AS `frame` from `t_data` where ((`t_data`.`date` >= cast((select max(`t_min`.`date`) from `t_min`) as date)) or ((select count(0) from `t_min`) = 0)) group by cast(`t_data`.`date` as date),`t_data`.`frame` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_minmaxdate`
--

/*!50001 DROP TABLE IF EXISTS `v_minmaxdate`*/;
/*!50001 DROP VIEW IF EXISTS `v_minmaxdate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uvr1611`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_minmaxdate` AS select `t_data`.`date` AS `date`,min(`t_data`.`date`) AS `min`,max(`t_data`.`date`) AS `max`,`t_data`.`frame` AS `frame` from `t_data` where ((`t_data`.`date` >= cast((select max(`t_energies`.`date`) from `t_energies`) as date)) or ((select count(0) from `t_energies`) = 0)) group by cast(`t_data`.`date` as date),`t_data`.`frame` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 19:54:53
