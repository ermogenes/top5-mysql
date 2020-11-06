-- MySQL Script generated by MySQL Workbench
-- Fri Nov  6 08:34:04 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema top5
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `top5` ;

-- -----------------------------------------------------
-- Schema top5
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `top5` DEFAULT CHARACTER SET utf8 ;
USE `top5` ;

-- -----------------------------------------------------
-- Table `top5`.`top`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `top5`.`top` ;

CREATE TABLE IF NOT EXISTS `top5`.`top` (
  `id` VARCHAR(36) NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `curtidas` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `top5`.`item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `top5`.`item` ;

CREATE TABLE IF NOT EXISTS `top5`.`item` (
  `top_id` VARCHAR(36) NOT NULL,
  `posicao` INT NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `curtidas` INT NOT NULL,
  PRIMARY KEY (`top_id`, `posicao`),
  INDEX `fk_item_top_idx` (`top_id` ASC) VISIBLE,
  CONSTRAINT `fk_item_top`
    FOREIGN KEY (`top_id`)
    REFERENCES `top5`.`top` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `top5`.`top`
-- -----------------------------------------------------
START TRANSACTION;
USE `top5`;
INSERT INTO `top5`.`top` (`id`, `titulo`, `curtidas`) VALUES ('31319dcf-d281-4f92-a834-8aa166be2a9c', 'Pratos Japoneses', 0);
INSERT INTO `top5`.`top` (`id`, `titulo`, `curtidas`) VALUES ('eaf375a4-59e6-40c4-8ce3-2b58820b74f4', 'Linguagens de Programação', 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `top5`.`item`
-- -----------------------------------------------------
START TRANSACTION;
USE `top5`;
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('31319dcf-d281-4f92-a834-8aa166be2a9c', 1, 'Temaki', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('31319dcf-d281-4f92-a834-8aa166be2a9c', 2, 'Oniguiri', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('31319dcf-d281-4f92-a834-8aa166be2a9c', 3, 'Sashimi', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('31319dcf-d281-4f92-a834-8aa166be2a9c', 4, 'Tempura', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('31319dcf-d281-4f92-a834-8aa166be2a9c', 5, 'Uramaki', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('eaf375a4-59e6-40c4-8ce3-2b58820b74f4', 1, 'C#', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('eaf375a4-59e6-40c4-8ce3-2b58820b74f4', 2, 'JavaScript', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('eaf375a4-59e6-40c4-8ce3-2b58820b74f4', 3, 'Python', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('eaf375a4-59e6-40c4-8ce3-2b58820b74f4', 4, 'Scala', 0);
INSERT INTO `top5`.`item` (`top_id`, `posicao`, `nome`, `curtidas`) VALUES ('eaf375a4-59e6-40c4-8ce3-2b58820b74f4', 5, 'Elixir', 0);

COMMIT;

