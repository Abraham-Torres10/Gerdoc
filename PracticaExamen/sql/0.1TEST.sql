-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema TEST
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema TEST
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TEST` DEFAULT CHARACTER SET utf8 ;
USE `TEST` ;

-- -----------------------------------------------------
-- Table `TEST`.`ARTICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TEST`.`ARTICULO` (
  `Clave` INT NOT NULL,
  `articulo` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `precio` INT NULL,
  PRIMARY KEY (`Clave`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TEST`.`USUARIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TEST`.`USUARIOS` (
  `user_name` VARCHAR(45) NOT NULL,
  `user_pass` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TEST`.`ROL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TEST`.`ROL` (
  `USUARIOS_user_name` VARCHAR(45) NOT NULL,
  `user_rol` VARCHAR(45) NOT NULL,
  INDEX `fk_ROL_USUARIOS_idx` (`USUARIOS_user_name` ASC) VISIBLE,
  PRIMARY KEY (`USUARIOS_user_name`, `user_rol`),
  CONSTRAINT `fk_ROL_USUARIOS`
    FOREIGN KEY (`USUARIOS_user_name`)
    REFERENCES `TEST`.`USUARIOS` (`user_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
