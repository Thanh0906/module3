use furama_database;
/*
Task 12: Hiển thị thông tin IDHopDong, TenNhanVien, TenKhachHang, SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem 
(được tính dựa trên tổng Hợp đồng chi tiết), TienDatCoc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2019 
nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2019.
*/
select hd.id_hop_dong,dv.id_dich_vu,hd.ngay_lam_hop_dong,nv.ho_ten,
    kh.ho_ten,kh.so_dien_thoai,count(hdct.id_dich_vu_di_kem) as so_luong_dich_vu_di_kem
from
    dich_vu dv
join hop_dong hd on dv.id_dich_vu = hd.id_dich_vu
join khach_hang kh on hd.id_khach_hang = kh.id_khach_hang
join nhan_vien nv on nv.id_nhan_vien = hd.id_nhan_vien
join hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
where dv.id_dich_vu in (
  select dv.id_dich_vu
  from dich_vu dv
  join hop_dong hd on dv.id_dich_vu = hd.id_dich_vu
	   where
            (quarter(hd.ngay_lam_hop_dong) = 4)
			and (year(hd.ngay_lam_hop_dong) = 2019)
            )
and dv.id_dich_vu not in (
       select dv.id_dich_vu
	   from dich_vu dv
	   join hop_dong hd on dv.id_dich_vu = hd.id_dich_vu
	   where
            (quarter(hd.ngay_lam_hop_dong) = 1
			or quarter(hd.ngay_lam_hop_dong) = 2)
			and (year(hd.ngay_lam_hop_dong) = 2019))
group by hdct.id_hop_dong
having year(hd.ngay_lam_hop_dong) = 2019;
