-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema loja_dez
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema loja_dez
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `loja_dez` DEFAULT CHARACTER SET utf8 ;
USE `loja_dez` ;

-- -----------------------------------------------------
-- Table `loja_dez`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`tipo` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_dez`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`produto` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(120) NOT NULL,
  `quantidade` INT UNSIGNED NOT NULL,
  `valor` DECIMAL(7,2) NULL,
  `tipo_id` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produto_tipo_idx` (`tipo_id` ASC),
  CONSTRAINT `fk_produto_tipo`
    FOREIGN KEY (`tipo_id`)
    REFERENCES `loja_dez`.`tipo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_dez`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`estado` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(40) NOT NULL,
  `sigla` CHAR(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC),
  UNIQUE INDEX `sigla_UNIQUE` (`sigla` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_dez`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`cidade` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(80) NOT NULL,
  `estado_id` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cidade_estado1_idx` (`estado_id` ASC),
  CONSTRAINT `fk_cidade_estado1`
    FOREIGN KEY (`estado_id`)
    REFERENCES `loja_dez`.`estado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_dez`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`cliente` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(140) NOT NULL,
  `rg` VARCHAR(12) NOT NULL,
  `endereco` VARCHAR(180) NOT NULL,
  `cep` VARCHAR(10) NOT NULL,
  `cidade_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `rg_UNIQUE` (`rg` ASC),
  INDEX `fk_cliente_cidade1_idx` (`cidade_id` ASC),
  CONSTRAINT `fk_cliente_cidade1`
    FOREIGN KEY (`cidade_id`)
    REFERENCES `loja_dez`.`cidade` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_dez`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`venda` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `dt_venda` DATETIME NOT NULL,
  `cliente_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_venda_cliente1_idx` (`cliente_id` ASC),
  CONSTRAINT `fk_venda_cliente1`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `loja_dez`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_dez`.`produto_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`produto_venda` (
  `produto_id` INT UNSIGNED NOT NULL,
  `venda_id` INT UNSIGNED NOT NULL,
  `quantidade` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`produto_id`, `venda_id`),
  INDEX `fk_produto_has_venda_venda1_idx` (`venda_id` ASC),
  INDEX `fk_produto_has_venda_produto1_idx` (`produto_id` ASC),
  CONSTRAINT `fk_produto_has_venda_produto1`
    FOREIGN KEY (`produto_id`)
    REFERENCES `loja_dez`.`produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_has_venda_venda1`
    FOREIGN KEY (`venda_id`)
    REFERENCES `loja_dez`.`venda` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
