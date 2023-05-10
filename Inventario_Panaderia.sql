-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Inventario_Panaderia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Inventario_Panaderia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Inventario_Panaderia` DEFAULT CHARACTER SET utf8mb3 ;
USE `Inventario_Panaderia` ;

-- -----------------------------------------------------
-- Table `Inventario_Panaderia`.`Tabla_Proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario_Panaderia`.`Tabla_Proveedor` (
  `ID` INT NOT NULL,
  `Nombre_Proveedor` VARCHAR(100) NOT NULL,
  `Fecha_Entrega` DATETIME NOT NULL,
  `Tipo_Producto` VARCHAR(45) NOT NULL,
  `Precio` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventario_Panaderia`.`Tabla_Tipo_Panes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario_Panaderia`.`Tabla_Tipo_Panes` (
  `ID` INT NOT NULL,
  `Tipo_Pan` VARCHAR(45) NOT NULL,
  `Tipo_Sabor` VARCHAR(45) NOT NULL,
  `Cantidad` INT NOT NULL,
  `Fecha_Vencimiento` DATETIME NOT NULL,
  `Tipo_Empaque` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventario_Panaderia`.`Tabla_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario_Panaderia`.`Tabla_producto` (
  `ID` INT NOT NULL,
  `Nombre` VARCHAR(80) NOT NULL,
  `Descripcion` VARCHAR(200) NOT NULL,
  `Cantidad_Disponible` INT NOT NULL,
  `Precio` DOUBLE NOT NULL,
  `Tabla_Proveedor_ID` INT NOT NULL,
  `Tabla_Tipo_Panes_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `Tabla_Proveedor_ID`, `Tabla_Tipo_Panes_ID`),
  INDEX `fk_Tabla_producto_Tabla_Proveedor_idx` (`Tabla_Proveedor_ID` ASC) VISIBLE,
  INDEX `fk_Tabla_producto_Tabla_Tipo_Panes1_idx` (`Tabla_Tipo_Panes_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Tabla_producto_Tabla_Proveedor`
    FOREIGN KEY (`Tabla_Proveedor_ID`)
    REFERENCES `Inventario_Panaderia`.`Tabla_Proveedor` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tabla_producto_Tabla_Tipo_Panes1`
    FOREIGN KEY (`Tabla_Tipo_Panes_ID`)
    REFERENCES `Inventario_Panaderia`.`Tabla_Tipo_Panes` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventario_Panaderia`.`Tabla_MateriaPrima`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario_Panaderia`.`Tabla_MateriaPrima` (
  `ID` INT NOT NULL,
  `Ingredientes` VARCHAR(85) NOT NULL,
  `Cantidades` INT NOT NULL,
  `Costo` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventario_Panaderia`.`Tabla_MateriaPrima_has_Tabla_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario_Panaderia`.`Tabla_MateriaPrima_has_Tabla_producto` (
  `Tabla_MateriaPrima_ID` INT NOT NULL,
  `Tabla_producto_ID` INT NOT NULL,
  `Tabla_producto_Tabla_Proveedor_ID` INT NOT NULL,
  `Tabla_producto_Tabla_Tipo_Panes_ID` INT NOT NULL,
  PRIMARY KEY (`Tabla_MateriaPrima_ID`, `Tabla_producto_ID`, `Tabla_producto_Tabla_Proveedor_ID`, `Tabla_producto_Tabla_Tipo_Panes_ID`),
  INDEX `fk_Tabla_MateriaPrima_has_Tabla_producto_Tabla_producto1_idx` (`Tabla_producto_ID` ASC, `Tabla_producto_Tabla_Proveedor_ID` ASC, `Tabla_producto_Tabla_Tipo_Panes_ID` ASC) VISIBLE,
  INDEX `fk_Tabla_MateriaPrima_has_Tabla_producto_Tabla_MateriaPrima_idx` (`Tabla_MateriaPrima_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Tabla_MateriaPrima_has_Tabla_producto_Tabla_MateriaPrima1`
    FOREIGN KEY (`Tabla_MateriaPrima_ID`)
    REFERENCES `Inventario_Panaderia`.`Tabla_MateriaPrima` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tabla_MateriaPrima_has_Tabla_producto_Tabla_producto1`
    FOREIGN KEY (`Tabla_producto_ID` , `Tabla_producto_Tabla_Proveedor_ID` , `Tabla_producto_Tabla_Tipo_Panes_ID`)
    REFERENCES `Inventario_Panaderia`.`Tabla_producto` (`ID` , `Tabla_Proveedor_ID` , `Tabla_Tipo_Panes_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
