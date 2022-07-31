CREATE DATABASE IF NOT EXISTS universe;

USE universe;

DROP TABLE IF EXISTS `comet`;
CREATE TABLE `comet` (
	`id_comet` INT(11) PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255) DEFAULT ''
);

INSERT INTO `comet` (`name`) VALUES ('Halley\'s Comet');
INSERT INTO `comet` (`name`) VALUES ('Shoemaker Levy-9');
INSERT INTO `comet` (`name`) VALUES ('Hyakutake');
INSERT INTO `comet` (`name`) VALUES ('Hale Bopp');
INSERT INTO `comet` (`name`) VALUES ('Comet Borrelly');
INSERT INTO `comet` (`name`) VALUES ('Comet Encke');
INSERT INTO `comet` (`name`) VALUES ('Tempel-Tuttel');
INSERT INTO `comet` (`name`) VALUES ('Comet Wild 2');
INSERT INTO `comet` (`name`) VALUES ('Comet Tempel 1');
INSERT INTO `comet` (`name`) VALUES ('Churyumov-Gerasimenko');