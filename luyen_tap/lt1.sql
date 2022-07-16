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
 
 -- xuat ma gv  , ten gv  , ten khoa 
SELECT 
    gv.ma_gv, gv.ten_gv, k.ten_khoa
FROM
    giang_vien gv
        JOIN
    khoa k ON gv.ma_khoa = k.ma_khoa;
 
 
 -- xuất magv , ten gv , ten khoa của các giảng viên hướng dẫn từ 3 sinh trở lên
 
SELECT 
    gv.ma_gv, gv.ten_gv, k.ten_khoa
FROM
    giang_vien gv
        JOIN
    khoa k ON gv.ma_khoa = k.ma_khoa
WHERE
    gv.ma_gv IN (SELECT 
            hd.ma_gv
        FROM
            huong_dan hd
        GROUP BY hd.ma_gv
        HAVING COUNT(hd.ma_gv) > 3);
 
 -- Sử dụng lệnh SQL để xuất ra thông tin về những sinh viên chưa có điểm thực tập .
 SELECT 
    *
FROM
    sinh_vien sv
        JOIN
    huong_dan hd ON sv.ma_sv = hd.ma_sv
WHERE
    hd.ket_qua IS NULL;
    
    
    -- hực hiện lệnh SQL xuất ra số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo học .
  SELECT 
    k.phone
FROM
    khoa k
        JOIN
    sinh_vien sv ON k.ma_khoa = sv.ma_khoa
WHERE
    sv.ten_sv = 'Tran Khac Trong';
 
 --  Sử dụng lệnh truy vấn SQL lấy ra mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập .
SELECT 
    dt.ma_dt, dt.ten_dt
FROM
    de_tai dt
WHERE
    dt.ma_dt IN (SELECT 
            hd.ma_dt
        FROM
            huong_dan hd
        GROUP BY hd.ma_dt
        HAVING COUNT(hd.ma_dt) > 2);
 
 -- Sử dụng câu lệnh truy vấn SQL lấy ra mã số, tên đề tài của đề tài có kinh phí cao nhất .
 
SELECT 
    dt.ma_dt, dt.ten_dt
FROM
    de_tai dt
WHERE
    dt.kinh_phi = (SELECT 
            max(dt.kinh_phi)
        FROM
            de_tai);

 -- Sử dụng câu lệnh SQL xuất ra Tên khoa, Số lượng sinh viên của mỗi khoa . 
 
 select k.ten_khoa , count(sv.ma_sv) as so_luong
 from khoa k join sinh_vien sv
 on k.ma_khoa = sv.ma_khoa
 group by k.ten_khoa;
 
 
 -- Sử dụng truy vấn SQL xuất ra mã số, họ tên và điểm của các sinh viên khoa ‘DIALY và QLTN’ 
 select sv.ma_sv, sv.ten_sv, hd.ket_qua
 from sinh_vien sv join khoa k
 on sv.ma_khoa = k.ma_khoa 
 join huong_dan hd 
 on sv.ma_sv = hd.ma_sv 
 where k.ten_khoa = "Dia ly va QLTN";
 
 -- Sử dụng câu lệnh SQL xuất ra danh sách gồm Mã số, Họ tên và Tuổi của các sinh viên khoa ‘TOAN’ .
 select sv.ma_sv , sv.ten_sv , sv.nam_sinh 
 from sinh_vien sv join khoa k
 on sv.ma_khoa = k.ma_khoa 
 where k.ten_khoa = "toan";
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 