-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema animeplazti
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema animeplazti
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `animeplazti` DEFAULT CHARACTER SET utf8 ;
USE `animeplazti` ;

-- -----------------------------------------------------
-- Table `animeplazti`.`animes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animeplazti`.`animes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `animeplazti`.`autores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animeplazti`.`autores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `animeplazti`.`animes_autores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animeplazti`.`animes_autores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `anime_id` INT NOT NULL,
  `autor_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `animeplazti`.`temporadas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animeplazti`.`temporadas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(80) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `no_capitulos` INT NOT NULL,
  `estatus` VARCHAR(45) NULL DEFAULT 'FINALIZADO',
  `anime_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `animeplazti`.`capitulos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animeplazti`.`capitulos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `duracion` TIME NOT NULL,
  `capitulo_no` INT NOT NULL,
  `temporada_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 29
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `animeplazti`.`generos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animeplazti`.`generos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `animeplazti`.`personajes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animeplazti`.`personajes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `anime_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `animeplazti`.`temporadas_generos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animeplazti`.`temporadas_generos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `temporada_id` INT NOT NULL,
  `genero_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
