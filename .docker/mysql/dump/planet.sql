CREATE DATABASE IF NOT EXISTS universe;

USE universe;

DROP TABLE IF EXISTS `planet`;
CREATE TABLE `planet` (
	`id_planet` INT(11) PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255) DEFAULT ''
);

INSERT INTO `planet` (`name`) VALUES ('Mercury');
INSERT INTO `planet` (`name`) VALUES ('Venus');
INSERT INTO `planet` (`name`) VALUES ('Earth');
INSERT INTO `planet` (`name`) VALUES ('Mars');
INSERT INTO `planet` (`name`) VALUES ('Jupiter');
INSERT INTO `planet` (`name`) VALUES ('Saturn');
INSERT INTO `planet` (`name`) VALUES ('Uranus');
INSERT INTO `planet` (`name`) VALUES ('Neptune');