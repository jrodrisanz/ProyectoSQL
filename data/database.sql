-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cinema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cinema
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `videoclub`;
USE `videoclub` ;


-- -----------------------------------------------------
-- Table `cinema`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`categoria` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `cinema`.`pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`pelicula` (
  `film_id` INT NOT NULL,
  `title` VARCHAR(70) NULL,
  `description` VARCHAR(200) NULL,
  `language_id` VARCHAR(45) NULL,
  `rental_duration` INT NULL,
  `rental_rate` FLOAT NULL,
  `length` INT NULL,
  `replacement_cost` FLOAT NULL,
  `rating` VARCHAR(45) NULL,
  `special_features` VARCHAR(45) NULL,
  `category_id` INT NULL,
  PRIMARY KEY (`film_id`),
  FOREIGN KEY (`category_id`) REFERENCES categoria(`category_id`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `cinema`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`actor` (
  `actor_id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`actor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cinema`.`old_HDD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`old_HDD` (
  `id` INT NOT NULL,
  `actor_id` INT NULL,
  `film_id` INT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`actor_id`) REFERENCES actor(`actor_id`),
  FOREIGN KEY (`film_id`) REFERENCES pelicula(`film_id`)
  )
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `cinema`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`inventario` (
  `inventory_id` INT NOT NULL,
  `film_id` INT NULL,
  `store_id` INT NULL,
  PRIMARY KEY (`inventory_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cinema`.`alquiler`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`alquiler` (
  `rental_id` INT NOT NULL,
  `rental_date` DATE NULL,
  `inventory_id` INT NULL,
  `customer_id` VARCHAR(45) NULL,
  `return_date` DATE NULL,
  `staff_id` INT NULL,
  PRIMARY KEY (`rental_id`),
  FOREIGN KEY (`inventory_id`) REFERENCES pelicula(`film_id`)
  )
ENGINE = InnoDB;




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET UNIQUE_CHECKS=0;


