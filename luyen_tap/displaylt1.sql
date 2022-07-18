use thuc_tap;

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
  
 