/*
   +------------------------------------------------------------------------------------------------+
   | [BASIC DATABASE]  Final Project								    |							    
   |												    |												
   |			    Database for ICT-BI8 student management  			            |		   
   +------------------------------------------------------------------------------------------------+
   | Group 4:   									            |									     
   |												    |											
   |			 --= ID =--		 --= Members =--			            |
   |			USTHBI8-160		PHAN	Manh Tung			            |					
   |			USTHBI8-069		NGUYEN	Tri Huan				    |				
   |			USTHBI8-045		PHAM	Viet Minh Duc				    |				
   |			USTHBI8-084		TRUONG	Quoc Khanh				    |	
   +------------------------------------------------------------------------------------------------+
*/

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `bi8student` ;
CREATE SCHEMA IF NOT EXISTS `bi8student` DEFAULT CHARACTER SET latin1 ;
USE `bi8student` ;

-- -----------------
-- Table 'student'
-- -----------------

CREATE TABLE IF NOT EXISTS student(
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(60) NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
phone VARCHAR(20) NOT NULL,
birth_date DATE NOT NULL,
sex ENUM('M', 'F') NOT NULL,
date_entered TIMESTAMP,
student_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

-- -----------------
-- Table 'class'
-- ------------------

CREATE TABLE IF NOT EXISTS class(
	name VARCHAR(30) NOT NULL,
	class_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);


-- -----------------
-- Table 'test'
-- -----------------

CREATE TABLE IF NOT EXISTS test(
	date DATE NOT NULL,
	type ENUM('midterm', 'final') NOT NULL,
	class_id INT UNSIGNED NOT NULL,
	test_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);


-- -----------------
-- Table 'score'
-- -----------------

CREATE TABLE IF NOT EXISTS score(
	student_id INT UNSIGNED NOT NULL,
	test_id INT UNSIGNED NOT NULL,
	score INT NOT NULL,
	PRIMARY KEY(test_id, student_id));

-- -----------------
-- Table 'absence'
-- -----------------

CREATE TABLE IF NOT EXISTS absence(
	student_id INT UNSIGNED NOT NULL,
	test_id INT UNSIGNED NOT NULL,
	PRIMARY KEY(student_id, test_id));


