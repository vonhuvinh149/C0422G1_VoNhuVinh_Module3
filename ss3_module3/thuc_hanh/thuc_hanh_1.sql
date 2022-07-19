DROP DATABASE IF EXISTS QuanLySinhVien;

CREATE DATABASE QuanLySinhVien;

USE QuanLySinhVien;

CREATE TABLE class (
    class_ID INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(20),
    start_date DATE,
    `status` INT
);
 

CREATE TABLE student (
    student_ID INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(20),
    address VARCHAR(50),
    phone VARCHAR(10),
    `status` INT,
    class_ID INT,
    FOREIGN KEY (class_ID)
        REFERENCES class (class_ID)
);
 
 INSERT INTO student (student_name,address,phone,`status`) 
 VALUES("Hùng","Hà Nội","0912113113",1),
 ("Hoa","Hải Phòng",0123123124,1),
 ("mạnh","HCM","0123123123",0);
 
 CREATE TABLE `subject` (
    sub_ID INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(20),
    credit INT,
    `status` INT
);
 
 
 
CREATE TABLE mark (
    mark_Id INT PRIMARY KEY AUTO_INCREMENT,
    sub_id INT,
    student_ID INT NOT NULL,
    mark INT,
    examtimes INT,
    FOREIGN KEY (sub_id)
        REFERENCES `subject`(sub_ID),
    FOREIGN KEY (student_iD)
        REFERENCES student (student_iD)
);
 
 INSERT INTO class(class_name,start_date,`status`) 
 VALUES("A1","2008-12-20",1),
 ("A2","2008-12-22",1),
 ("B3",current_date,0);
 
 INSERT INTO mark (student_iD,mark,examtimes) 
 VALUES(1,8,1),
 (2,10,2),
 (1,12,1);
 
 INSERT INTO `subject` (sub_name,credit,`status`) 
 VALUES("Cf",5,1),
 ("c",6,1),
 ("hdj",5,1),
 ("rdbms",10,1);


       
       