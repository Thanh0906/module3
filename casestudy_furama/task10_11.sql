use furama_database;

/*1010.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm.
 Kết quả hiển thị bao gồm IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc,
 SoLuongDichVuDiKem (được tính dựa trên việc count các IDHopDongChiTiet).
*/
select hd.id_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,
hd.tien_dat_coc,count(id_dich_vu_di_kem) as so_luong_dich_vu_di_kem
from hop_dong hd 
join hop_dong_chi_tiet hdct on hd.id_hop_dong = hdct.id_hop_dong
group by hdct.id_hop_dong;

/*11
11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách hàng có TenLoaiKhachHang là “Diamond” 
và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”.
*/
 select kh.ho_ten,kh.dia_chi,lk.ten_loai_khach_hang,dvdk.id_dich_vu_di_kem,
 dvdk.ten_dich_vu_di_kem,dvdk.gia,dvdk.don_vi,dvdk.trang_thai_kha_dung
 from dich_vu_di_kem dvdk
 join hop_dong_chi_tiet hdct on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
 join hop_dong hd on hd.id_hop_dong = hdct.id_hop_dong
 join khach_hang kh on hd.id_khach_hang = kh.id_khach_hang
 join loai_khach lk on kh.id_loai_khach = lk.id_loai_khach
 where lk.ten_loai_khach_hang ='diamond' and (dia_chi = 'vinh' or dia_chi ='quảng ngãi');

