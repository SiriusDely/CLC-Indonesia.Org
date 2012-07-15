SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `clc_id_db` DEFAULT CHARACTER SET latin1 ;
USE `clc_id_db` ;

-- -----------------------------------------------------
-- Table `clc_id_db`.`clcers`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `clc_id_db`.`clcers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(100) NOT NULL ,
  `password` VARCHAR(255) NOT NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  `status` TINYINT(4) NOT NULL ,
  `registered` DATETIME NULL DEFAULT NULL ,
  `last_login` DATETIME NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `clc_id_db`.`admins`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `clc_id_db`.`admins` (
  `nama_lengkap` VARCHAR(100) NULL DEFAULT NULL ,
  `clcers_id` INT(11) NOT NULL ,
  PRIMARY KEY (`clcers_id`) ,
  CONSTRAINT `fk_alumni_users`
    FOREIGN KEY (`clcers_id` )
    REFERENCES `clc_id_db`.`clcers` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `clc_id_db`.`categories`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `clc_id_db`.`categories` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(100) NOT NULL ,
  `description` VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `clc_id_db`.`comments`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `clc_id_db`.`comments` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(100) NULL DEFAULT NULL ,
  `email` VARCHAR(100) NULL DEFAULT NULL ,
  `address` VARCHAR(100) NULL DEFAULT NULL ,
  `message` VARCHAR(255) NULL DEFAULT NULL ,
  `status` TINYINT(4) NULL DEFAULT NULL ,
  `clcers_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_comments_users1` (`clcers_id` ASC) ,
  CONSTRAINT `fk_comments_users1`
    FOREIGN KEY (`clcers_id` )
    REFERENCES `clc_id_db`.`clcers` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `clc_id_db`.`pages`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `clc_id_db`.`pages` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(255) NOT NULL ,
  `permalink` VARCHAR(255) NOT NULL ,
  `body` TEXT NOT NULL ,
  `status` TINYINT(4) NOT NULL ,
  `clcers_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_pages_users1` (`clcers_id` ASC) ,
  CONSTRAINT `fk_pages_users1`
    FOREIGN KEY (`clcers_id` )
    REFERENCES `clc_id_db`.`clcers` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `clc_id_db`.`posts`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `clc_id_db`.`posts` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(255) NOT NULL ,
  `permalink` VARCHAR(255) NOT NULL ,
  `body` TEXT NOT NULL ,
  `status` TINYINT(4) NOT NULL ,
  `clcers_id` INT(11) NOT NULL ,
  `categories_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_posts_users1` (`clcers_id` ASC) ,
  INDEX `fk_posts_categories1` (`categories_id` ASC) ,
  CONSTRAINT `fk_posts_users1`
    FOREIGN KEY (`clcers_id` )
    REFERENCES `clc_id_db`.`clcers` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_posts_categories1`
    FOREIGN KEY (`categories_id` )
    REFERENCES `clc_id_db`.`categories` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `clc_id_db`.`contributors`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `clc_id_db`.`contributors` (
  `nama_lengkap` VARCHAR(100) NOT NULL ,
  `clcers_id` INT(11) NOT NULL ,
  PRIMARY KEY (`clcers_id`) ,
  CONSTRAINT `fk_students_users1`
    FOREIGN KEY (`clcers_id` )
    REFERENCES `clc_id_db`.`clcers` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `clc_id_db`.`spectators`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `clc_id_db`.`spectators` (
  `nama_lengkap` VARCHAR(100) NOT NULL ,
  `clcers_id` INT(11) NOT NULL ,
  PRIMARY KEY (`clcers_id`) ,
  CONSTRAINT `fk_teachers_users1`
    FOREIGN KEY (`clcers_id` )
    REFERENCES `clc_id_db`.`clcers` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
