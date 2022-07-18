use QuanLySinhVien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

SELECT 
    *
FROM
    subject sj
WHERE
    sj.Credit = (SELECT 
            MAX(sj.Credit)
        FROM
            subject sj);


-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

SELECT 
    *
FROM
    mark m
WHERE
    m.Mark = (SELECT 
            MAX(m.Mark)
        FROM
            mark m);
            
 -- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
 SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
 
 
 
 
 
 
 
 
