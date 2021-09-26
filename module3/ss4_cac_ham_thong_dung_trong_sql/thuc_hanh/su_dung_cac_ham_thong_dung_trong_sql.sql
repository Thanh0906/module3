use quan_li_sinh_vien;
 
 -- Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
SELECT Address, COUNT(student_id) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;
 
 -- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
SELECT S.Student_id,S.Student_name, AVG(Mark)
FROM Student S join Mark M on S.Student_id = M.Student_id
GROUP BY S.Student_id, S.Student_name;

-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
 SELECT S.Student_Id,S.Student_Name, AVG(Mark)
FROM Student S join Mark M on S.Student_Id = M.Student_Id
GROUP BY S.Student_Id, S.Student_Name
HAVING AVG(Mark) > 15;
 
 -- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
  
 SELECT S.Student_Id, S.Student_Name, AVG(Mark)
FROM Student S join Mark M on S.Student_Id = M.Student_Id
GROUP BY S.Student_Id, S.Student_Name
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.Student_Id);