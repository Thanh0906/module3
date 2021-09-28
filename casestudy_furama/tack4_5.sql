use furama_database;
 /*
 Task4: Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần 
đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
 */
select
kh.ho_ten,lk.ten_loai_khach_hang, Count(hd.id_dich_vu) as so_lan_dat_phong
from  khach_hang kh
join 
    loai_khach lk on kh.id_loai_khach=lk.id_loai_khach
join
    hop_dong hd on kh.id_khach_hang = hd.id_khach_hang
join
    dich_vu dv on dv.id_dich_vu = hd.id_dich_vu
where lk.ten_loai_khach_hang ='diamond'
group by 	kh.id_khach_hang
order by so_lan_dat_phong;

/*Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien 
(Với TongTien được tính theo công thức như sau: ChiPhiThue + SoLuong*Gia, với SoLuong và Giá là từ bảng DichVuDiKem)
 cho tất cả các Khách hàng đã từng đặt phỏng. (Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra
 */
 select kh.id_khach_hang,kh.ho_ten,lk.ten_loai_khach_hang,hd.id_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,
 sum(dv.chi_phi_thue +dvdk.gia*dvdk.don_vi) as tong_tien
from
    khach_hang kh
left join
    hop_dong hd on kh.id_khach_hang = hd.id_khach_hang
left join
    dich_vu dv on dv.id_dich_vu = hd.id_dich_vu
left join
    loai_khach lk on lk.id_loai_khach = kh.id_loai_khach
left join
    hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
left join
    dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
group by kh.id_khach_hang;
