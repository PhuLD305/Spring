CREATE DATABASE  IF NOT EXISTS search_address CHARACTER SET UTF8 COLLATE UTF8_VIETNAMESE_CI;
use search_address;
CREATE TABLE tbl_prefecture (
	prefecture_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    prefecture_kana VARCHAR(100) NOT NULL,
	prefecture VARCHAR(100) NOT NULL,
    prefecture_code VARCHAR(2) NOT NULL UNIQUE KEY,
    UNIQUE KEY (prefecture_kana, prefecture)
    );

CREATE TABLE tbl_city (
    city_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(5) NOT NULL UNIQUE KEY,
    city_kana VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    prefecture_id INT NOT NULL,
    UNIQUE KEY (city_kana, city, prefecture_id)
);
    
CREATE TABLE tbl_area (
	area_id int primary key not null auto_increment,
    area_kana longtext not null,
    area longtext not null ,
    city_id int not null ,
    chome_area int not null default(0),
    koaza_area int not null default(0),
    multi_post_area int not null default(0),
    post_id int not null,
    old_post_id int not null
    );
    
CREATE TABLE tbl_post (
	post_id int primary key not null auto_increment,
    post_code varchar(7) not null unique,
    update_show int not null default(0),
    change_reason int not null default(0),
    multi_area int not null default(0)
    );
    
CREATE TABLE tbl_old_post (
    old_post_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    old_post_code VARCHAR(5) NOT NULL UNIQUE
);
    
