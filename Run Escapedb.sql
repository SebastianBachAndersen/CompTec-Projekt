-- --------------------------------------------------------
-- Vært:                         127.0.0.1
-- Server-version:               10.1.32-MariaDB - mariadb.org binary distribution
-- ServerOS:                     Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for run escape
CREATE DATABASE IF NOT EXISTS `run escape` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `run escape`;

-- Dumping structure for tabel run escape.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `combatxp` int(11) NOT NULL DEFAULT '0',
  `firemakingxp` int(11) NOT NULL DEFAULT '0',
  `woodcuttingxp` int(11) NOT NULL DEFAULT '0',
  `questpoint` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='\r\n';

-- Dumping data for table run escape.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `combatxp`, `firemakingxp`, `woodcuttingxp`, `questpoint`) VALUES
	(4, '123', '0', 0, 0, 0, 0),
	(5, '12455', '0', 0, 0, 0, 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
