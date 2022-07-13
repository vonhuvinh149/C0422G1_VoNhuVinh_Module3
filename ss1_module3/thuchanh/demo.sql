-- tạo database
create database `thuchanh_ss1`;

create database `thuchanh_ss2`;

-- xoá database
drop database `thuchanh_ss2`;

-- sử dụng database
use `thuchanh_ss1`;

-- tạo bảng 
create table student(

-- thuộc tính
id_student int auto_increment, -- id tự tăng
name varchar(55),
date_of_birth date,

-- khoá chính
primary key(id_student) 
);

-- thêm 1 hàng vào bảng
insert into student(name,date_of_birth) values("vinh","2000-09-09"),("thanh","2000-07-07");

-- hiện tất cả bảng
select * from student;

-- hiện một số cột 
select id_student ,name  from student; 

-- hiện danh sách không bị trùng lặp
select distinct name from student;

-- thêm 1 cột
alter table student add description_student text;


-- 
set sql_safe_updates = 0 ;
update student set student.description_student = "duc"
where name = "vinh" ; 
set sql_safe_updates = 1 ;




