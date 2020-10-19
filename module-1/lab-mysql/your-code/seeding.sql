# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.21)
# Database: lab_mysql
# Generation Time: 2020-10-19 22:17:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Cars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Cars`;

CREATE TABLE `Cars` (
  `VIN` int NOT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;

INSERT INTO `Cars` (`VIN`, `manufacturer`, `model`, `year`, `color`)
VALUES
	(123,'Volvo','V60_Cross_Country','2019','Gray'),
	(126,'Volvo','V60','2019','Gray'),
	(245,'Toyota','RAV4','2018','Silver'),
	(303,'Volkswagen','Tiguan','2019','Blue'),
	(304,'Peugeot','Rifter','2019','Red'),
	(305,'Ford','Fusion','2018','White');

/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Costumer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Costumer`;

CREATE TABLE `Costumer` (
  `ID` int NOT NULL,
  `costumer` varchar(50) DEFAULT NULL,
  `phone` char(12) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `Costumer` WRITE;
/*!40000 ALTER TABLE `Costumer` DISABLE KEYS */;

INSERT INTO `Costumer` (`ID`, `costumer`, `phone`, `address`, `city`, `state`, `zip`)
VALUES
	(10001,'Pablo Picasso','636176382','Paseo de la Chopera 14','Madrid','Ma','28045'),
	(20001,'Abraham Lincoln','3059077086','120 SW 8th St','Miami','FL','33130'),
	(30001,'Napoléon Bonaparte','331797400','40 Rue du Colisée','Paris','Il','75008');

/*!40000 ALTER TABLE `Costumer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table invoice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `invoice_num` int NOT NULL,
  `inoice_date` date DEFAULT NULL,
  `cars` varchar(255) DEFAULT NULL,
  `costumer` varchar(255) DEFAULT NULL,
  `salesperson` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`invoice_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;

INSERT INTO `invoice` (`invoice_num`, `inoice_date`, `cars`, `costumer`, `salesperson`)
VALUES
	(526,'2017-12-10','3','0','5'),
	(5104,'2019-01-01','2','2','7'),
	(9038,'2018-12-31','0','1','3');

/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sales_person
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_person`;

CREATE TABLE `sales_person` (
  `staff_ID` int NOT NULL,
  `sales_name` varchar(50) DEFAULT NULL,
  `store` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `sales_person` WRITE;
/*!40000 ALTER TABLE `sales_person` DISABLE KEYS */;

INSERT INTO `sales_person` (`staff_ID`, `sales_name`, `store`)
VALUES
	(1,'Petey Cruiser','Madrid '),
	(2,'Anna Sthesia','Barcelona'),
	(3,' Paul Molive',' Berlin'),
	(4,' Gail Forcewind',' Paris'),
	(5,' Paige Turner','Mimia'),
	(6,' Bob Frapples','Mexico City'),
	(7,' Walter Melon ','Amsterdam'),
	(8,' Shonda Leer','São Paulo');

/*!40000 ALTER TABLE `sales_person` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
