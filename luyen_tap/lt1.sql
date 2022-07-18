drop database if exists thuc_tap;

create database thuc_tap;

use thuc_tap;

CREATE TABLE khoa (
    ma_khoa VARCHAR(30) PRIMARY KEY,
    ten_khoa VARCHAR(30),
    phone VARCHAR(10)
);

CREATE TABLE giang_vien (
    ma_gv INT PRIMARY KEY,
    ten_gv VARCHAR(30),
    luong DECIMAL(5 , 2 ),
    ma_khoa VARCHAR(30),
    FOREIGN KEY (ma_khoa)
        REFERENCES khoa (ma_khoa)
);

CREATE TABLE sinh_vien (
    ma_sv INT PRIMARY KEY,
    ten_sv VARCHAR(30),
    ma_khoa VARCHAR(10),
    nam_sinh INT,
    que_quan VARCHAR(30),
    FOREIGN KEY (ma_khoa)
        REFERENCES khoa (ma_khoa)
);
 
CREATE TABLE de_tai (
    ma_dt VARCHAR(10) PRIMARY KEY,
    ten_dt VARCHAR(30),
    kinh_phi INT,
    noi_tt VARCHAR(30)
);
 
CREATE TABLE huong_dan (
    ma_sv INT PRIMARY KEY,
    ma_dt VARCHAR(30),
    ma_gv INT,
    ket_qua DECIMAL(5 , 2 ),
    FOREIGN KEY (ma_dt)
        REFERENCES de_tai (ma_dt),
    FOREIGN KEY (ma_gv)
        REFERENCES giang_vien (ma_gv)
);
 
 insert into khoa 
 values ("Geo","Dia ly va QLTN",3855413),
("Math","Toan",3855411),
("Bio","Cong nghe Sinh hoc",3855412);

insert into giang_vien
values (11,"Thanh Xuan",700,"Geo"),
(12,"Thu Minh",500,"Math"),
(13,"Chu Tuan",650,"Geo"),
(14,"Le Thi Lan",500,"Bio"),
(15,"Tran Xoay",900,"Math");

insert into sinh_vien
values (1,"Le Van Sao","Bio",1990,"Nghe An"),
(2,"Nguyen Thi My","Geo",1990,"Thanh Hoa"),
(3,"Bui Xuan Duc","Math",1992,"Ha Noi"),
(4,"Nguyen Van Tung","Bio",null,"Ha Tinh"),
(5,"Le Khanh Linh","Bio",1989,"Ha Nam"),
(6,"Tran Khac Trong","Geo",1991,"Thanh Hoa"),
(7,"Le Thi Van","Math",null,"null"),
(8,"Hoang Van Duc","Bio",1992,"Nghe An");

insert into de_tai
values ("Dt01","GIS",100,"Nghe An"),
("Dt02","ARC GIS",500,"Nam Dinh"),
("Dt03","Spatial DB",100, "Ha Tinh"),
("Dt04","MAP",300,"Quang Binh" );

insert into huong_dan 
values (1,"Dt01",13,8),
(2,"Dt03",14,0),
(3,"Dt03",12,null),
(5,"Dt04",14,7),
(6,"Dt01",13,7),
(7,"Dt04",11,10),
(8,"Dt03",15,6);
 
