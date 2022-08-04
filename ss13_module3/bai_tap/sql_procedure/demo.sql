drop database if exists demo;
create database demo;
use demo;

create table users (
	id  int(3) not null auto_increment,
	name varchar(120) not null,
	email varchar(220) not null,
	country varchar(120),
	primary key (id)                      
);

create table Permision(
	id int(11) primary key,
	name varchar(50)                          
);

create table User_Permision(
	permision_id int(11),
	user_id int(11)                            
);

insert into users(name, email, country) values('vinh1','vonhuvinh1@gmail.com','Viet Nam');
insert into users(name, email, country) values('vinh2','vonhuvinh2@gmail.com','japan');
insert into users(name, email, country) values('vinh3','vonhuvinh3@gmail.com','korea');
insert into users(name, email, country) values('vinh4','vonhuvinh4@gmail.com','Viet Nam');
insert into users(name, email, country) values('vinh5','vonhuvinh5@gmail.com','myanma');
insert into users(name, email, country) values('vinh6','vonhuvinh6@gmail.com','anh');



insert into Permision(id, name) values(1, 'add');
insert into Permision(id, name) values(2, 'edit');
insert into Permision(id, name) values(3, 'delete');
insert into Permision(id, name) values(4, 'view');


DELIMITER $$
create procedure get_user_by_id(in user_id int)
    begin
    select users.name, users.email, users.country
    from users
    where users.id = user_id;
end$$
DELIMITER ;

DELIMITER $$
create procedure insert_user(
    in user_name varchar(50),
    in user_email varchar(50),
    in user_country varchar(50)
)
begin
    insert into users(name, email, country) values(user_name, user_email, user_country);
    end$$
DELIMITER ;

DELIMITER $$
create procedure select_all_user()
begin
    select *
    from users;
    end$$
DELIMITER ;

DELIMITER $$
create procedure delete_user(in user_id int)
begin
    delete from users
    where users.id = user_id;
    end$$
DELIMITER ;

DELIMITER $$
create procedure find_country_user(in user_country varchar(50))
begin
    select *
    from users
    where country like user_country;
    end$$
DELIMITER ;

DELIMITER $$
create procedure sort_name_user()
begin
    select *
    from users
    order by name;
    end$$
DELIMITER ;

DELIMITER $$
create procedure update_user(
    in user_id int,
    in user_name varchar(50),
    in user_email varchar(50),
    in user_country varchar(50)
)
begin
    update users
    set users.name = user_name, users.email = user_email, users.country = user_country
    where users.id = user_id;
    end$$
DELIMITER ;


