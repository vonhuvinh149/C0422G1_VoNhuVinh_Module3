drop database if exists furama_svl;

create database furama_svl;

use furama_svl;

--  nhân viên

create table employee(
id int auto_increment primary key,
name varchar(55),
date_of_birth date,
id_card int ,
salary double,
phone_number varchar(45),
email varchar(55),
address varchar(255)
constraint 
);

create table `position`(
id int primary key,
name varchar(45)
);

create table education_degree (
id int primary key ,
name varchar(45)
);

create table division(
id int primary key ,
name varchar(45)
);

