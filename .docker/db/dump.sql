# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: streamdemoapi
# Generation Time: 2017-03-05 19:04:52 +0000
# ************************************************************

/*!40101 SET NAMES utf8 */;

# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` (`id`, `payment_method`)
VALUES
  (1,'cc'),
  (2,'cash');

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `customer_id` bigint(20) DEFAULT NULL,
  `age` tinyint(1) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `customer_id`, `age`, `city`, `email`, `firstname`, `lastname`)
VALUES
  (X'541445E201D511E7B48838CB533F418A',1,28,'New York','spiderman@marvel.comics','Spider','Man'),
  (X'6B321CCC01D511E7B48838CB533F418A',NULL,46,'New York','ironman@marvel.comics','Iron','Man'),
  (X'EA662B1E01D511E7B48838CB533F418A',NULL,44,'Fawcett City','captainmarvel@marvel.comics','Captain','Marvel');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
