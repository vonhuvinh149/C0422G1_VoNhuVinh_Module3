use quanlýinhvien ;

 -- hiển thị danh sách tất cả học viên
SELECT 
    *
FROM
    student ;
    
   -- hiển thị thị danh sách học viên đang theo học
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