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
    class_ID INT NOT NULL,
    FOREIGN KEY (class_ID)
        REFERENCES class (class_ID)
);
 
 INSERT INTO student (student_name,address,phone,`status`,class_ID) 
 VALUES("Hùng","Hà Nội","0912113113",1,1),
 ("Hoa","Hải Phòng",null,1,1),
 ("mạnh","HCM","0123123123",0,2);
 
 CREATE TABLE `subject` (
    sub_ID INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(20),
    credit INT,
    `status` INT
);
 
 
 
CREATE TABLE mark (
    mark_Id INT PRIMARY KEY AUTO_INCREMENT,
    sub_id INT NOT NULL,
    student_ID INT NOT NULL,
    mark INT,
    examtimes INT,
    FOREIGN KEY (sub_id)
        REFERENCES `subject` (sub_ID),
    FOREIGN KEY (student_iD)
        REFERENCES student (student_iD)
);
 
 INSERT INTO class(class_name,start_date,`status`) 
 VALUES("A1","2008-12-20",1),
 ("A2","2008-12-22",1),
 ("B3",current_date,0);
 
 INSERT INTO mark (sub_ID,student_iD,mark,examtimes) 
 VALUES(1,1,8,1),
 (1,2,10,2),
 (2,1,12,1);
 
 INSERT INTO `subject` (sub_name,credit,`status`) 
 VALUES("Cf",5,1),
 ("c",6,1),
 ("hdj",5,1),
 ("rdbms",10,1);

 -- hiển thị danh sách tất cả học viên
 SELECT 
    *
FROM
    student;
 
 -- Hiển thị danh sách học viên đang theo học
SELECT 
    *
FROM
    student
WHERE
    status = TRUE; 
 
 -- Hiển hị danh sách các môn học có thời gian học nhỏ hơn 10
 SELECT 
    *
FROM
    `subject`
WHERE
    credit < 10;
 
 -- Hiển thị danh sách học viên lớp A1
SELECT 
    s.student_ID, s.student_name, c.class_name
FROM
    student s
        JOIN
    class c ON s.class_ID = c.class_ID
WHERE
    c.class_name = 'a1';
 
 -- Hiển thị điểm môn CF của các học viên 
 SELECT 
    s.student_ID, s.student_name, sub.sub_name, m.mark
FROM
    student s
        JOIN
    mark m ON s.student_ID = m.student_Id
        JOIN
    `subject` sub ON m.sub_ID = sub.sub_ID
WHERE
    sub.sub_name = 'CF';
 
 -- hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
 SELECT 
    *
FROM
    student s
WHERE
    s.student_name LIKE 'H%';
 
 -- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT 
    *
FROM
    class c
WHERE
    MONTH(c.start_date) = 12;
 
 -- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
 SELECT 
    *
FROM
    `subject` sub
WHERE
    sub.credit BETWEEN 3 AND 5;
 
 -- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
SET sql_safe_updates = 0;

UPDATE student s 
SET 
    s.class_id = 2
WHERE
    s.student_name = 'Hung';
    
SET sql_safe_updates = 1;


SELECT 
    *
FROM
    student;
       
       