-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.50 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for supermarket
CREATE DATABASE IF NOT EXISTS `supermarket` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `supermarket`;

-- Dumping structure for table supermarket.history
CREATE TABLE IF NOT EXISTS `history` (
  `name` varchar(15) NOT NULL,
  `quantity` int(5) NOT NULL,
  `famount` int(10) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `dateandtime` varchar(50) NOT NULL,
  `vegetables` varchar(50) DEFAULT NULL,
  `fruits` varchar(50) DEFAULT NULL,
  `cosmetics` varchar(50) DEFAULT NULL,
  `stationary` varchar(50) DEFAULT NULL,
  `clothes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table supermarket.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `itemcode` varchar(10) NOT NULL,
  `itemname` varchar(20) DEFAULT NULL,
  `itemquantity` int(5) DEFAULT NULL,
  `itemprice` int(5) DEFAULT NULL,
  `itemcategory` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`itemcode`),
  UNIQUE KEY `itemname` (`itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table supermarket.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
