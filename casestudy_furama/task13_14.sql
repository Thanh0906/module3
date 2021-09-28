use furama_database;
/*
13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
 (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
 */
 select hdct.id_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem,count(hdct.id_dich_vu_di_kem) as so_luong_dich_vu_di_kem
 from hop_dong_chi_tiet hdct 
 join dich_vu_di_kem dvdk on hdct.id_dich_vu_di_kem =dvdk.id_dich_vu_di_kem
 group by hdct.id_dich_vu_di_kem;
 
 /*
14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
Thông tin hiển thị bao gồm IDHopDong, TenLoaiDichVu, TenDichVuDiKem, SoLanSuDung.
*/
select 
    hd.id_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    count(hdct.id_dich_vu_di_kem) as so_lan_su_dung
from
    hop_dong hd
	join dich_vu dv on hd.id_dich_vu = dv.id_dich_vu
	join loai_dich_vu ldv on ldv.id_loai_dich_vu = dv.id_loai_dich_vu
    join hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
    join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
group by dvdk.id_dich_vu_di_kem
having count(hdct.id_dich_vu_di_kem) = 1;



 