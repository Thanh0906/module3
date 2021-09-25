-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự.
select*
from nhan_vien
where(
substr(ho_ten,7) like '%H%'
or substr(ho_ten,7) like '%T%'
or substr(ho_ten,7) like '%K%'
and char_length(ho_ten)<=15
);