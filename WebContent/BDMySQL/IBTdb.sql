CREATE DATABASE IF NOT EXISTS `IBTdb`;
USE `IBTdb`;

CREATE TABLE IF NOT EXISTS `IBTdb`.`users` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(255) NULL,
  `lastName` VARCHAR(255) NULL,
  `birthday` DATE NULL,
  `phone` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `country` VARCHAR(255) NULL,
  `city` VARCHAR(255) NULL,
  `region` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

--

INSERT INTO `users` (firstName, lastName, birthday, phone, email, country, city, region) VALUES('test1Name', 'last1Name', '2017-01-01', '0777776611', 'test1@mail.ua', 'country1', 'city1', 'region1');
INSERT INTO `users` (firstName, lastName, birthday, phone, email, country, city, region) VALUES('test2Name', 'last2Name', '2017-02-02', '0777776622', 'test2@mail.ua', 'country2', 'city2', 'region2');
INSERT INTO `users` (firstName, lastName, birthday, phone, email, country, city, region) VALUES('test3Name', 'last3Name', '2017-03-03', '0777776633', 'test3@mail.ua', 'country3', 'city3', 'region3');
INSERT INTO `users` (firstName, lastName, birthday, phone, email, country, city, region) VALUES('test4Name', 'last4Name', '2017-04-04', '0777776644', 'test4@mail.ua', 'country4', 'city4', 'region4');
INSERT INTO `users` (firstName, lastName, birthday, phone, email, country, city, region) VALUES('test5Name', 'last5Name', '2017-05-05', '0777776655', 'test5@mail.ua', 'country5', 'city5', 'region5');