use furama ; 

-- 2.Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự. 

SELECT 
    *
FROM
    nhan_vien
WHERE
    nhan_vien.ho_ten REGEXP '^[HTK]'
        AND CHAR_LENGTH(ho_ten) <= 15;

-- 2.Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.

SELECT 
    *
FROM
    khach_hang
WHERE
    (TIMESTAMPDIFF(YEAR,
        ngay_sinh,
        CURDATE()) >= 18
        AND TIMESTAMPDIFF(YEAR,
        ngay_sinh,
        CURDATE()) <= 50)
        AND (dia_chi LIKE '%Đà Nẵng'
        OR dia_chi LIKE '%Quảng Trị');

-- câu 4-- 	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

SELECT 
    khach_hang.ma_khach_hang,
    khach_hang.ho_ten,
    COUNT(*) AS so_lan_dat_phong
FROM
    loai_khach
        JOIN
    khach_hang ON loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
        JOIN
    hop_dong ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
WHERE
    loai_khach.ma_loai_khach = '1'
GROUP BY hop_dong.ma_khach_hang
ORDER BY so_lan_dat_phong;

-- câu 5-- ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien -- 
-- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).-- 

SELECT 
    khach_hang.ma_khach_hang,
    khach_hang.ho_ten,
    loai_khach.ten_loai_khach,
    hop_dong.ma_hop_dong,
    dich_vu.ten_dich_vu,
    hop_dong.ngay_lam_hop_dong,
    hop_dong.ngay_ket_thuc
FROM
    loai_khach
        LEFT JOIN
    khach_hang ON loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
        LEFT JOIN
    hop_dong ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
        LEFT JOIN
    dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
GROUP BY CASE
    WHEN hop_dong.ma_hop_dong IS NULL THEN ho_ten
    ELSE hop_dong.ma_hop_dong
END;

-- câu 6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).-- 
SELECT 
    dich_vu.ma_dich_vu,
    dich_vu.ten_dich_vu,
    dich_vu.dien_tich,
    dich_vu.chi_phi_thue,
    loai_dich_vu.ten_loai_dich_vu
FROM
    (SELECT 
			ten_dich_vu,
            hop_dong.ma_dich_vu,
            ngay_lam_hop_dong,
            dich_vu.dien_tich,
            dich_vu.chi_phi_thue
    FROM
        hop_dong
    JOIN dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
    WHERE
        (MONTH(ngay_lam_hop_dong) IN (1 , 2, 3)
            AND YEAR(ngay_lam_hop_dong) = 2021)) AS table1
    RIGHT JOIN dich_vu ON table1.ten_dich_vu = dich_vu.ten_dich_vu
        JOIN
    loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
WHERE
    table1.ten_dich_vu IS NULL;

-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021
SELECT 
    table1.ma_dich_vu,
    table1.ten_dich_vu,
    table1.dien_tich,
    table1.so_nguoi_toi_da,
    table1.chi_phi_thue,
    table1.ten_loai_dich_vu
FROM
    (SELECT 
        ten_dich_vu,
            hop_dong.ma_dich_vu,
            ngay_lam_hop_dong,
            dich_vu.dien_tich,
            dich_vu.chi_phi_thue,
            dich_vu.so_nguoi_toi_da,
            loai_dich_vu.ten_loai_dich_vu AS ten_loai_dich_vu
    FROM
        hop_dong
    JOIN dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
    JOIN loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
    WHERE
        YEAR(ngay_lam_hop_dong) = 2020
    GROUP BY ten_dich_vu) AS table1
        LEFT JOIN
    (SELECT 
        ten_dich_vu,
            hop_dong.ma_dich_vu,
            ngay_lam_hop_dong,
            dich_vu.dien_tich,
            dich_vu.chi_phi_thue,
            dich_vu.so_nguoi_toi_da,
            loai_dich_vu.ten_loai_dich_vu AS ten_loai_dich_vu
    FROM
        hop_dong
    JOIN dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
    JOIN loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
    WHERE
        YEAR(ngay_lam_hop_dong) = 2021
    GROUP BY ten_dich_vu) AS table2 ON table1.ten_dich_vu = table2.ten_dich_vu
WHERE
    table2.ten_dich_vu IS NULL;
    
  --   8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
  
  
   SELECT DISTINCT
    ho_ten
FROM
    khach_hang;
  
--   9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.

SELECT 
    MONTH(ngay_lam_hop_dong) AS thang,
    COUNT(ma_hop_dong) AS so_luong
FROM
    hop_dong
WHERE
    YEAR(ngay_lam_hop_dong) = 2021
GROUP BY MONTH(ngay_lam_hop_dong)
ORDER BY MONTH(ngay_lam_hop_dong);

-- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm. Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem 

SELECT 
    hop_dong.ma_hop_dong,
    ngay_lam_hop_dong,
    ngay_ket_thuc,
    tien_dat_coc,
    SUM(so_luong) AS so_luong_dich_vu_di_kem
FROM
    hop_dong
        LEFT JOIN
    hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
GROUP BY ma_hop_dong;

