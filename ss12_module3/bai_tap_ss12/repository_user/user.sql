
CREATE DATABASE user;
USE user;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 nameUser varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

insert into users(nameUser,email,country) values ("vinh" , "vonhuvinh@gmail.com","việt nam");
insert into users(nameUser,email,country) values ("nhân" , "trongnhan@gmail.com","việt nam");
insert into users(nameUser,email,country) values ("trong" , "trong123@gmail.com","việt nam");
insert into users(nameUser,email,country) values ("phu" , "phu123@gmail.com","việt nam");
insert into users(nameUser,email,country) values ("tai" , "taiphiet@gmail.com","việt nam");
insert into users(nameUser,email,country) values ("huy" , "huydeptrai@gmail.com","việt nam");

select * from users;

DELIMITER $$

CREATE PROCEDURE get_user_by_id(IN user_id INT)

BEGIN

    SELECT users.name, users.email, users.country

    FROM users

    where users.id = user_id;

    END$$

DELIMITER ;

  
-- ----------------------------------------------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE insert_user(

IN user_name varchar(50),

IN user_email varchar(50),

IN user_country varchar(50)

)

BEGIN

    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);

    END$$

DELIMITER ;