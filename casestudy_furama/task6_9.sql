use furama_database;
 -- 6.	Hiển thị IDDichVu, TenDichVu, DienTich, ChiPhiThue, TenLoaiDichVu của tất cả các loại Dịch vụ chưa từng được Khách hàng thực hiện đặt từ quý 1 của năm 2019 (Quý 1 là tháng 1, 2, 3).

select dv.id_dich_vu,dv.ten_dich_vu,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from dich_vu dv 
left join loai_dich_vu ldv on dv.id_loai_dich_vu =ldv.id_loai_dich_vu
left join hop_dong hd on hd.id_dich_vu = dv.id_dich_vu
where ;
-- chưa xong6

/* 7.Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu của tất cả 
các loại dịch vụ đã từng được Khách hàng đặt phòng trong năm 2018 nhưng chưa từng được Khách hàng đặt phòng  trong năm 2019.
*/
select dv.id_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from dich_vu dv
join loai_dich_vu ldv on ldv.id_loai_dich_vu = dv.id_loai_dich_vu
join hop_dong hd on dv.id_dich_vu =hd.id_dich_vu
where ;

insert into khach_hang(id_loai_khach,ho_ten,ngay_sinh,so_cmnd,so_dien_thoai,email,dia_chi)
values
(1,'Huỳnh Ngọc Sang','1997-01-06',212145879,0934567852,'sang123@gmail.com','quảng ngãi');
/* 8.	Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên
*/
-- cách 1
select ho_ten
from khach_hang
union select ho_ten from khach_hang;

-- cách 2 
select ho_ten
from khach_hang
group by ho_ten;

-- cách 3 
select distinct ho_ten from khach_hang;

/* 9.	Thực hiện thống kê doanh thu theo tháng, 
nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
*/
select count(hd.id_dich_vu) as doanh_thu 
,month(ngay_lam_hop_dong) as theo_thang
from hop_dong hd
where year(ngay_lam_hop_dong)=2019
group by month(ngay_lam_hop_dong);