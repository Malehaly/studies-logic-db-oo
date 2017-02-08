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
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk - primary key (é a primeira col de uma tabela. ela inseri os id\'s de cada linha)\nnn - not null (evita valores nulos e suas repetições)\nuq - unique (não deixa que a numeração se repita - não precisa no pk, por default é unique)\nb - binary (serve para armazenar conteúdo dentro do BD - é desuso, se salva o path)\nun - unsigned (evita o datatype conter números negativos)\nzf - zero fill (completa com zero à esquerda para números com limites altos. exe.: \nsmallint unsigned máximo é 65535, assim o id 1 está 00001 - desuso tbm)\nai - auto increment (incrementa a coluna passada em 1 para cada nova linha)\ng - generated ',
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
  `valor` DECIMAL(7,2) UNSIGNED NULL COMMENT 'nao usar float para monetario. o float arredonda valores diferentemente por isso pode ocasiosar erros.\ndecial ( , ) - primeiro espaço é onumero total de numeros, segundo espaço é quantos numeros antes da virgula.\nmysql sempre define decimal como signed. não adianta marcar UN.\nno diagrama representa retangulo vazio valores que podem ser nulos.',
  `tipo_id` SMALLINT UNSIGNED NULL COMMENT 'pode ter uma PF com valor nulo, por exemplo se a loja tivesse um novo produto que seu tipo não está cadastrado.\n',
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
  `nome` VARCHAR(45) NOT NULL,
  `sigla` CHAR(2) NOT NULL COMMENT 'char é não variável. o dado DEVE ter 2 characters. nao menos, se tiver mais irá cortar.',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC),
  UNIQUE INDEX `sigla_UNIQUE` (`sigla` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_dez`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`cidade` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(140) NOT NULL,
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
  `endereco` VARCHAR(140) NOT NULL,
  `cep` VARCHAR(10) NOT NULL,
  `cidade_id` SMALLINT UNSIGNED NOT NULL,
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
  `dt_venda` DATETIME NOT NULL COMMENT 'palavra reservada: data;',
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
-- Table `loja_dez`.`venda_has_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_dez`.`venda_has_produto` (
  `venda_id` INT UNSIGNED NOT NULL,
  `produto_id` INT UNSIGNED NOT NULL,
  `quantidade` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`venda_id`, `produto_id`),
  INDEX `fk_venda_has_produto_produto1_idx` (`produto_id` ASC),
  INDEX `fk_venda_has_produto_venda1_idx` (`venda_id` ASC),
  CONSTRAINT `fk_venda_has_produto_venda1`
    FOREIGN KEY (`venda_id`)
    REFERENCES `loja_dez`.`venda` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venda_has_produto_produto1`
    FOREIGN KEY (`produto_id`)
    REFERENCES `loja_dez`.`produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
