SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tbl_artists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_artists` (
  `id_artist` INT NOT NULL AUTO_INCREMENT,
  `name_rtist` VARCHAR(45) NULL,
  PRIMARY KEY (`id_artist`),
  INDEX `id_artist` ())
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_albums`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_albums` (
  `id_albums` INT NOT NULL AUTO_INCREMENT,
  `id_artist` INT NULL,
  `albom` VARCHAR(45) NULL,
  `year` INT NULL,
  PRIMARY KEY (`id_albums`),
  INDEX `id_artist` (),
  INDEX `id_alboms` (),
  INDEX `id_artist_idx` (`id_artist` ASC),
  CONSTRAINT `id_artist`
    FOREIGN KEY (`id_artist`)
    REFERENCES `mydb`.`tbl_artists` (`id_artist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_tracks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_tracks` (
  `id_track` INT NOT NULL AUTO_INCREMENT,
  `albom_id` INT NULL,
  `track` VARCHAR(45) NULL,
  `length` FLOAT NULL,
  PRIMARY KEY (`id_track`),
  INDEX `albom_id_idx` (`albom_id` ASC),
  CONSTRAINT `albom_id`
    FOREIGN KEY (`albom_id`)
    REFERENCES `mydb`.`tbl_albums` (`id_albums`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
