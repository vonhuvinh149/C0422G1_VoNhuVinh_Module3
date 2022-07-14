drop database if exists student_management;

create database student_management ;

use student_management;

CREATE TABLE class (
    id_class INT AUTO_INCREMENT,
    name_class VARCHAR(55),
    PRIMARY KEY (id_class)
);

CREATE TABLE teacher (
    id_teacher INT AUTO_INCREMENT,
    name_teacher VARCHAR(55),
    age INT,
    country VARCHAR(55),
    PRIMARY KEY (id_teacher)
);


insert into class(name_class)
values ("C0422G1");

insert into teacher(name_teacher,age,country)
values ("vinh",25,"VN");

SELECT 
    *
FROM
    class;

SELECT 
    *
FROM
    teacher;


