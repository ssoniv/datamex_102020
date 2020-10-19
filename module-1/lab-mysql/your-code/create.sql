CREATE TABLE `Cars` (
  `VIN` int NOT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
) 

CREATE TABLE `Costumer` (
  `ID` int NOT NULL,
  `costumer` varchar(50) DEFAULT NULL,
  `phone` char(12) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) 

CREATE TABLE `invoice` (
  `invoice_num` int NOT NULL,
  `inoice_date` date DEFAULT NULL,
  `cars` varchar(255) DEFAULT NULL,
  `costumer` varchar(255) DEFAULT NULL,
  `salesperson` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`invoice_num`)
) 

CREATE TABLE `sales_person` (
  `staff_ID` int NOT NULL,
  `sales_name` varchar(50) DEFAULT NULL,
  `store` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staff_ID`)
) 
