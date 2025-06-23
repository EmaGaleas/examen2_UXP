CREATE SCHEMA IF NOT EXISTS `foodApp`;
USE `foodApp`;

CREATE TABLE `restaurants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `restaurant_availability` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `restaurant_id` INT NOT NULL,
  `schedule_time` DATETIME NOT NULL,
  `reserved` TINYINT NOT NULL DEFAULT 0,
  `reserved_by` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_id_idx` (`restaurant_id`),
  CONSTRAINT `fk_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




/*
-- Query: SELECT * FROM foodApp.restaurants
LIMIT 0, 1000

-- Date: 2023-06-19 11:57
*/
INSERT INTO `restaurants` (`id`,`name`,`description`) VALUES (1,'La Casca','Consumo en el lugar · Terraza o mesas al aire libre · Retiro desde el coche');
INSERT INTO `restaurants` (`id`,`name`,`description`) VALUES (2,'Portal de las carnes','Disfrute de las mejores carnes y vinos en un ambiente único de la ciudad de San Pedro Sula,');
INSERT INTO `restaurants` (`id`,`name`,`description`) VALUES (3,'Factory Steak & Lobster','Experience the best steak and lobster in San Pedro Sula at Factory Steak and Lobster');


/*
-- Query: SELECT * FROM foodApp.resturant_availability
LIMIT 0, 1000

-- Date: 2023-06-19 11:59
*/
INSERT INTO `restaurant_availability` (`id`,`restaurant_id`,`schedule_time`,`reserved`,`reserved_by`) VALUES (1,1,'2023-06-20 08:00:00',0,NULL);
INSERT INTO `restaurant_availability` (`id`,`restaurant_id`,`schedule_time`,`reserved`,`reserved_by`) VALUES (2,1,'2023-06-20 09:00:00',0,NULL);
INSERT INTO `restaurant_availability` (`id`,`restaurant_id`,`schedule_time`,`reserved`,`reserved_by`) VALUES (3,2,'2023-06-21 10:00:00',0,NULL);
INSERT INTO `restaurant_availability` (`id`,`restaurant_id`,`schedule_time`,`reserved`,`reserved_by`) VALUES (4,2,'2023-06-21 11:00:00',0,NULL);
INSERT INTO `restaurant_availability` (`id`,`restaurant_id`,`schedule_time`,`reserved`,`reserved_by`) VALUES (5,3,'2023-06-22 07:00:00',0,NULL);
INSERT INTO `restaurant_availability` (`id`,`restaurant_id`,`schedule_time`,`reserved`,`reserved_by`) VALUES (6,3,'2023-06-22 09:00:00',0,NULL);
INSERT INTO `restaurant_availability` (`id`,`restaurant_id`,`schedule_time`,`reserved`,`reserved_by`) VALUES (7,1,'2021-06-20 08:00:00',0,NULL);




