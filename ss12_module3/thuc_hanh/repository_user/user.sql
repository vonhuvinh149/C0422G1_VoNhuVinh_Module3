drop database if exists users ;

CREATE DATABASE users;
USE users;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 `name` varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

insert into users(`name`,email,country) values ("vinh" , "vonhuvinh@gmail.com","việt nam");
insert into users(`name`,email,country) values ("nhân" , "trongnhan@gmail.com","việt nam");
insert into users(`name`,email,country) values ("trong" , "trong123@gmail.com","việt nam");
insert into users(`name`,email,country) values ("phu" , "phu123@gmail.com","việt nam");
insert into users(`name`,email,country) values ("tai" , "taiphiet@gmail.com","việt nam");
insert into users(`name`,email,country) values ("huy" , "huydeptrai@gmail.com","việt nam");