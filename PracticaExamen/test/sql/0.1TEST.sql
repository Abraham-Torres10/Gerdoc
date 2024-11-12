-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `Id_producto` INT NOT NULL,
  `Producto` VARCHAR(45) NULL,
  `Precio` DOUBLE NULL,
  `Clave` INT NULL,
  FOREIGN KEY (`Clave`) REFERENCES `mydb`.`marca`(`Clave`),
  PRIMARY KEY (`Id_producto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`marca` (
  `clave` INT NOT NULL,
  `marca` VARCHAR(100) NOT NULL,
  `table1_Id_producto` INT NOT NULL,
  PRIMARY KEY (`clave`),
  INDEX `fk_marca_table1_idx` (`table1_Id_producto` ASC) VISIBLE,
  CONSTRAINT `fk_marca_table1`
    FOREIGN KEY (`table1_Id_producto`)
    REFERENCES `mydb`.`table1` (`Id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
