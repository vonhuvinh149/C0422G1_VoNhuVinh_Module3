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

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(name, email, country) values('Tuấn','dsds@codegym.vn','Viet Nam');
insert into users(name, email, country) values('An','rettre@che.uk','Lào');
insert into users(name, email, country) values('Ronando','bvbfdfd@codegym.vn','Campuchia');
insert into users(name, email, country) values('Thức','rtrtdf@che.uk','Kenia');
insert into users(name, email, country) values('Trung','mjhgh@codegym.vn','Pháp');
insert into users(name, email, country) values('Messi','ưewds@che.uk','Pháp');

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


