CREATE DATABASE IF NOT EXISTS happiness;

USE happiness;

DROP TABLE IF EXISTS happiness_score;

CREATE TABLE IF NOT EXISTS `happiness_score` (
  `country_id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(100) NOT NULL,
  `RANK` INT NOT NULL,
  `happiness_score` FLOAT NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE (`country`))
  ENGINE = InnoDB;


DROP TABLE IF EXISTS economics;

CREATE TABLE IF NOT EXISTS `economics` (
  `economics_id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(100) NULL,
  `gdp_per_capita` FLOAT NULL,
  `inflation` FLOAT NULL,
  `unemployment` FLOAT NULL,
  INDEX `fk_country_idx` (`country` ASC) VISIBLE,
  PRIMARY KEY (`economics_id`),
  CONSTRAINT `fk_country_economics`
    FOREIGN KEY (`country`)
    REFERENCES `happiness_score` (`country`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


DROP TABLE IF EXISTS governance;

CREATE TABLE IF NOT EXISTS `governance` (
  `governance_id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(100) NULL,
  `country_code` CHAR(3) NULL,
  `corruption` FLOAT NULL,
  `government_effectiveness` FLOAT NULL,
  `political_stability` FLOAT NULL,
  `regulatory_quality` FLOAT NULL,
  `rule_of_law` FLOAT NULL,
  `accountability` FLOAT NULL,
  INDEX `fk_country_idx` (`country` ASC) VISIBLE,
  PRIMARY KEY (`governance_id`),
  CONSTRAINT `fk_country_governance`
    FOREIGN KEY (`country`)
    REFERENCES `happiness_score` (`country`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


DROP TABLE IF EXISTS climate;

CREATE TABLE IF NOT EXISTS `climate` (
  `climate_id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(100) NULL,
  `precipitation` FLOAT NULL,
  INDEX `fk_country_idx` (`country` ASC) VISIBLE,
  PRIMARY KEY (`climate_id`),
  CONSTRAINT `fk_country_climate`
    FOREIGN KEY (`country`)
    REFERENCES `happiness_score` (`country`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InclimatenoDB;


DROP TABLE IF EXISTS health;

CREATE TABLE IF NOT EXISTS `health` (
  `health_id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(100) NULL,
  `life_expectancy` FLOAT NULL,
  PRIMARY KEY (`health_id`),
  INDEX `fk_country_health_idx` (`country` ASC) VISIBLE,
  CONSTRAINT `fk_country_health`
    FOREIGN KEY (`country`)
    REFERENCES `happiness_score` (`country`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


DROP TABLE IF EXISTS social;

CREATE TABLE IF NOT EXISTS `social` (
  `social_id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(100) NULL,
  `average_working_hours` FLOAT NULL,
  `household_size` FLOAT NULL,
  `education` FLOAT NULL,
  INDEX `fk_country_idx` (`country` ASC) VISIBLE,
  PRIMARY KEY (`social_id`),
  CONSTRAINT `fk_country_social`
    FOREIGN KEY (`country`)
    REFERENCES `happiness_score` (`country`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


