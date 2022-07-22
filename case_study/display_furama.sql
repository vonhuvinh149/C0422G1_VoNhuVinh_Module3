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

-- câu 4-- 	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng.
--  Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

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

-- câu 6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả 
-- các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).

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
            AND YEAR(ngay_lam_hop_dong) = 2021)) AS tb1
    RIGHT JOIN
    dich_vu ON tb1.ten_dich_vu = dich_vu.ten_dich_vu
        JOIN
    loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
WHERE
    tb1.ten_dich_vu IS NULL;

-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của 
-- tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.so_nguoi_toi_da,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
WHERE
    YEAR(ngay_lam_hop_dong) = 2020
        AND hd.ma_dich_vu NOT IN (SELECT 
            ma_dich_vu
        FROM
            hop_dong
        WHERE
            YEAR(ngay_lam_hop_dong) = 2021)
GROUP BY hd.ma_dich_vu;
 
    
  --   8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
  
-- c1
SELECT DISTINCT
    ho_ten
FROM
    khach_hang;
    
    
    -- c2 
SELECT 
    ho_ten
FROM
    khach_hang
GROUP BY ho_ten;
    
   -- c3 
SELECT 
    t.ho_ten
FROM
    (SELECT 
        ho_ten, COUNT(ho_ten) AS a
    FROM
        khach_hang
    GROUP BY ho_ten
    HAVING a > 1) as t;
  
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

-- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
--  Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem 


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


-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là 
-- “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.

SELECT 
    dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
FROM
    khach_hang kh
        JOIN
    loai_khach lkh ON kh.ma_loai_khach = lkh.ma_loai_khach
        JOIN
    hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
WHERE
    ten_loai_khach = 'Diamond'
        AND (kh.dia_chi LIKE '%vinh'
        OR kh.dia_chi LIKE '%Quảng Ngãi');
        
 -- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng),
 -- ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của
 --  tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt
 -- vào 6 tháng đầu năm 2021.
 
SELECT 
    hd.ma_hop_dong,                           
    nv.ho_ten AS ho_ten_nhan_vien,
    kh.ho_ten AS ho_ten_khach_hang,
    kh.so_dien_thoai AS sdt_khach_hang,
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    COALESCE(SUM(hdct.so_luong), 0) AS so_luong_dich_vu_di_kem,
    hd.tien_dat_coc
FROM
    nhan_vien nv
        JOIN
    hop_dong hd ON nv.ma_nhan_vien = hd.ma_nhan_vien
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
WHERE
    (YEAR(ngay_lam_hop_dong) = 2020
        AND QUARTER(ngay_lam_hop_dong) = 4)
        AND hd.ma_hop_dong NOT IN (SELECT 
            ma_hop_dong
        FROM
            hop_dong
        WHERE
            YEAR(ngay_lam_hop_dong) = 2021
                AND MONTH(ngay_lam_hop_dong) BETWEEN 1 AND 6)
GROUP BY ma_hop_dong;

 -- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
 -- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
 
SELECT 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
GROUP BY ma_dich_vu_di_kem
HAVING so_luong_dich_vu_di_kem = (SELECT 
        SUM(so_luong)
    FROM
        hop_dong_chi_tiet
    GROUP BY ma_dich_vu_di_kem
    ORDER BY SUM(so_luong) DESC
    LIMIT 1);
 
-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất.
--  Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
--  (được tính dựa trên việc count các ma_dich_vu_di_kem).

SELECT 
    hd.ma_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    COUNT(dvdk.ma_dich_vu_di_kem) AS so_lan_su_dung
FROM
    hop_dong hd
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY ten_dich_vu_di_kem 
HAVING COUNT(dvdk.ma_dich_vu_di_kem) = 1;

-- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai,
--  dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.

SELECT 
    nv.ma_nhan_vien,
    nv.ho_ten AS ho_ten_nhan_vien,
    td.ten_trinh_do,
    bp.ten_bo_phan,
    nv.so_dien_thoai,
    nv.dia_chi
FROM
    nhan_vien nv
        JOIN
    trinh_do td ON nv.ma_trinh_do = td.ma_trinh_do
        JOIN
    bo_phan bp ON nv.ma_bo_phan = bp.ma_bo_phan
        JOIN
    hop_dong hd ON hd.ma_nhan_vien = nv.ma_nhan_vien
WHERE
    hd.ma_nhan_vien IN (SELECT 
            ma_nhan_vien 
        FROM
            hop_dong
        WHERE
            YEAR(ngay_lam_hop_dong) BETWEEN 2020 AND 2021
        GROUP BY ma_nhan_vien
        HAVING COUNT(ma_nhan_vien) < 4);
        
-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.

set sql_safe_updates = 0;
DELETE FROM nhan_vien 
WHERE
    ma_nhan_vien NOT IN (SELECT 
        temp.ma_nhan_vien
    FROM
        (SELECT 
            nv.ma_nhan_vien
        FROM
            hop_dong hd
        LEFT JOIN nhan_vien nv ON nv.ma_nhan_vien = hd.ma_nhan_vien
        WHERE
            YEAR(ngay_lam_hop_dong) BETWEEN 2019 AND 2021
        GROUP BY ma_nhan_vien) AS temp);
    set sql_safe_updates =1;
SELECT 
    *
FROM
    nhan_vien;
    
 -- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond,chỉ cập nhật những khách hàng đã từng đặt phòng với
 -- Tổng Tiền thanh toán trong năm 2021 là lớn hơn 1.000.000 VNĐ.
 
SET sql_safe_updates =0;
UPDATE khach_hang 
SET 
    ma_loai_khach = 1
WHERE
    ma_loai_khach = 2
        AND ma_khach_hang IN (SELECT 
            temp.ma_khach_hang
        FROM
            (SELECT 
                kh.ma_khach_hang
            FROM
                khach_hang kh
            JOIN loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
            LEFT JOIN hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
            LEFT JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
            LEFT JOIN hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
            LEFT JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
                AND YEAR(ngay_lam_hop_dong) = 2021
            GROUP BY kh.ma_khach_hang
            HAVING SUM(chi_phi_thue + IFNULL(so_luong * gia, 0)) > 1000000) as temp);
 SET sql_safe_updates =1;

    -- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng)
    
SET sql_safe_updates = 0;
SET foreign_key_checks =0;
DELETE FROM khach_hang 
WHERE
    ma_khach_hang IN (SELECT 
        ma_khach_hang
    FROM
        hop_dong
    
    WHERE
        YEAR(ngay_lam_hop_dong) < 2021);
SET foreign_key_checks =1;
SET sql_safe_updates = 1;
SELECT 
    *
FROM
    khach_hang;
    
    -- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
    
SET SQL_SAFE_UPDATES = 0;
UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            tmp.ma_dich_vu_di_kem
        FROM
            (SELECT 
                dvdk.ma_dich_vu_di_kem
            FROM
                dich_vu_di_kem dvdk
            JOIN hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
            JOIN hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
            WHERE
                hdct.so_luong >= 10
                    AND YEAR(ngay_lam_hop_dong) = 2020) AS tmp);
SET SQL_SAFE_UPDATES = 1;

-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm id
--  (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

SELECT 
    ma_khach_hang AS id,
    ho_ten,
    email,
    so_dien_thoai,
    ngay_sinh,
    dia_chi
FROM
    khach_hang 
UNION ALL SELECT 
    ma_nhan_vien,
    ho_ten,
    email,
    so_dien_thoai,
    ngay_sinh,
    dia_chi
FROM
    nhan_vien;

