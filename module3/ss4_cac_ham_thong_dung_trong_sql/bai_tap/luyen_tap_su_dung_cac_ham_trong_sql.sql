use quan_li_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select sub_id,sub_name,status,max(credit) as max_credit
from subject;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select s.sub_id,s.sub_name,s.credit,s.status,max(m.mark) as max_mark
from subject s join mark m on s.sub_id = m.sub_id
group by m.sub_id
having max(m.mark)>= all(
select max(m.mark)
from mark m
group by m.sub_id
);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.student_id,s.student_name,s.address,s.phone,s.`status`,s.class_id, avg(m.mark) as avg_max
from student s join mark m on s.student_id=m.student_id
group by m.student_id
order by avg(m.mark) desc;