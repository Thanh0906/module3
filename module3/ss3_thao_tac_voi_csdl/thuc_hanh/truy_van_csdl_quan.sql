USE quan_li_sinh_vien;
-- Hiển thị danh sách tất cả học viên
select*
from STUDENt;
-- Hiển thị danh sách học viên đang theo học
select *
from student
wHERE StAtUS =true;

-- HIỂN thị danH SÁCh các môn học có thời gian học nhỏ hơn 10 giờ.
select *
from subject
where credit < 10;

SELECT S.STUDent_id, s.STUDent_name, C.claSS_NAMe
From studenT s join class c on s.student_iD = c.class_namE;

-- Hiển tHỊ dAnh sách học viÊn lớp A1
select s.student_id, s.student_name, c.class_name
FROM STUdeNt s join cLasS c on s.clasS_iD = c.class_ID
WHERE c.clasS_NAme = 'A1';

-- Hiển thị điỂm môn CF CỦA Các học viên
SELECT S.student_id, S.student_name, Sub.sun_name, M.mark
FROm student S JOin Mark M on S.student_id = M.student_id jOin SubjeCT Sub on M.sub_id = sub.sub_id
WHERE Sub.sun_name = 'CF';

