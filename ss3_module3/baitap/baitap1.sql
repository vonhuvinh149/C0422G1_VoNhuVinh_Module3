use QuanLySinhVien;

 -- hiển thị danh sách tất cả học viên
SELECT 
    *
FROM
    student thị danh sách học viên đang theo học
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

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần.
-- nếu trùng sắp theo tên tăng dần.
SELECT 
    s.student_name, sj.sub_name, m.mark
FROM
    student s
        JOIN
    mark m ON s.student_id = m.student_id
        JOIN
    `subject` sj ON m.sub_id = sj.sub_id
ORDER BY m.mark DESC , s.student_name;

