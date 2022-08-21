-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema utezshop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema utezshop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `utezshop` DEFAULT CHARACTER SET utf8mb3 ;
USE `utezshop` ;

-- -----------------------------------------------------
-- Table `utezshop`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `utezshop`.`roles` (
  `id_roles` BIGINT NOT NULL AUTO_INCREMENT,
  `rol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_roles`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `utezshop`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `utezshop`.`admin` (
  `id_admins` BIGINT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `psw` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `roles_id_roles` BIGINT NOT NULL,
  PRIMARY KEY (`id_admins`),
  INDEX `fk_admin_roles1_idx` (`roles_id_roles` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `utezshop`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `utezshop`.`category` (
  `id_category` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_category`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `utezshop`.`offers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `utezshop`.`offers` (
  `id_offers` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  `discount` INT NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `banner` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_offers`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `utezshop`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `utezshop`.`products` (
  `id_products` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `description_long` LONGTEXT NULL DEFAULT NULL,
  `status` INT NOT NULL,
  `image` VARCHAR(255) NOT NULL,
  `delete` BINARY NOT NULL,
  `category_id_category` BIGINT NOT NULL,
  `offers_id_offers` BIGINT NULL,
  PRIMARY KEY (`id_products`),
  INDEX `fk_products_category1_idx` (`category_id_category` ASC) VISIBLE,
  INDEX `fk_products_offers1_idx` (`offers_id_offers` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `utezshop`.`images`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `utezshop`.`images` (
  `id_image` INT NOT NULL AUTO_INCREMENT,
  `image` VARCHAR(255) NOT NULL,
  `products_id_products` BIGINT NOT NULL,
  PRIMARY KEY (`id_image`),
  INDEX `fk_images_products1_idx` (`products_id_products` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `utezshop`.`products_combination`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `utezshop`.`products_combination` (
  `id_combinations` BIGINT NOT NULL AUTO_INCREMENT,
  `color` VARCHAR(45) NOT NULL,
  `size` VARCHAR(45) NOT NULL,
  `price` DECIMAL(10,0) NOT NULL,
  `pieces` INT NOT NULL,
  `products_id_products` BIGINT NOT NULL,
  PRIMARY KEY (`id_combinations`),
  INDEX `fk_products_combination_products_idx` (`products_id_products` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
