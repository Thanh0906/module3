drop database furama_database;
create database furama_database;
use furama_database;
create table vi_tri(
id_vi_tri int auto_increment primary key,
ten_vi_tri varchar(45) not null
);
create table trinh_do(
id_trinh_do int auto_increment primary key,
ten_trinh_do varchar (45) not null
);
create table bo_phan(
id_bo_phan int auto_increment primary key,
ten_bo_phan varchar(45) not null
);
create table nhan_vien(
id_nhan_vien int auto_increment primary key,
ho_ten varchar(225) not null,
id_vi_tri int not null,
foreign key(id_vi_tri) references vi_tri(id_vi_tri)
on update cascade on delete cascade,
id_trinh_do int not null,
foreign key(id_trinh_do) references trinh_do(id_trinh_do)
on update cascade on delete cascade,
id_bo_phan int not null,
foreign key(id_bo_phan) references bo_phan(id_bo_phan)
on update cascade on delete cascade,
ngay_sinh date not null,
so_cmnd varchar(45) not null,
luong varchar (45),
so_dien_thoai varchar(10) not null,
email varchar(225) not null,
dia_chi varchar(225) not null
);
create table loai_khach(
id_loai_khach int auto_increment primary key,
ten_loai_khach_hang varchar(45) not null
);
create table khach_hang(
id_khach_hang int auto_increment primary key,
id_loai_khach int not null,
foreign key(id_loai_khach) references loai_khach(id_loai_khach)
on update cascade on delete cascade,
ho_ten varchar(45) not null,
ngay_sinh date not null,
so_cmnd varchar(45) not null,
so_dien_thoai varchar(45) not null,
email varchar (45) not null,
dia_chi varchar(45) not null
);
create table kieu_thue(
id_kieu_thue int auto_increment primary key,
ten_kieu_thue varchar(45) not null,
gia varchar(45) not null
);
create table loai_dich_vu(
id_loai_dich_vu int auto_increment primary key,
ten_loai_dich_vu varchar (45) not null
);
create table dich_vu(
id_dich_vu int auto_increment primary key,
ten_dich_vu varchar(45) not null,
dien_tich double not null,
so_tang int not null,
so_nguoi_toi_da int not null,
chi_phi_thue varchar(45) not null,
id_kieu_thue int not null,
foreign key (id_kieu_thue) references kieu_thue(id_kieu_thue)
on update cascade on delete cascade,
id_loai_dich_vu int not null,
foreign key(id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu)
on update cascade on delete cascade,
trang_thai varchar(45) not null
);
create table hop_dong(
id_hop_dong int auto_increment primary key,
id_nhan_vien int not null,
foreign key (id_nhan_vien)  references nhan_vien(id_nhan_vien)
on update cascade on delete cascade,
id_khach_hang int not null,
foreign key (id_khach_hang) references khach_hang(id_khach_hang)
on update cascade on delete cascade,
id_dich_vu int not null,
foreign key(id_dich_vu) references dich_vu(id_dich_vu)
on update cascade on delete cascade,
ngay_lam_hop_dong date not null,
ngay_ket_thuc date not null,
tien_dat_coc double not null,
tong_tien double not null

);
create table dich_vu_di_kem(
id_dich_vu_di_kem int auto_increment primary key,
ten_dich_vu_di_kem varchar(45) not null,
gia varchar(45) not null,
don_vi int not null,
trang_thai_kha_dung varchar(45) not null
);
create table hop_dong_chi_tiet(
id_hop_dong_chi_tiet int auto_increment primary key,
id_hop_dong int not null,
foreign key(id_hop_dong) references hop_dong(id_hop_dong)
on update cascade on delete cascade,
id_dich_vu_di_kem int not null,
foreign key(id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem)
on update cascade on delete cascade,
so_luong int not null
);
insert into vi_tri(ten_vi_tri)
value
('lễ tân'),('phục vụ'),('chuyên viên'),('giám sát'),('quản lí'),('giám đốc');

insert into trinh_do(ten_trinh_do)
value
('trung cấp'),('cao đẳng'),('đại học'),('sau đại học');

insert into bo_phan(ten_bo_phan)
value
('sale_marketing'),('hành chính'),('phục vụ '),('quản lí');

insert into loai_khach(ten_loai_khach_hang)
value
('Member'),('Siler'),('God'),('Platimun'),('Diamond');

insert into kieu_thue(ten_kieu_thue,gia)
values
('giờ','300000'),('ngày','1000000'),('tháng','20000000'),('năm','200000000');

insert into loai_dich_vu(ten_loai_dich_vu)
value
('Villa'),('House'),('Room');

insert into dich_vu_di_kem (ten_dich_vu_di_kem, gia, don_vi, trang_thai_kha_dung)
values
('massage', '500000', 1, 'Còn chỗ'),
('karaoke',' 400000', 1, 'Còn chỗ'),
('Thuê xe', '400000', 1, 'Còn chỗ'),
('Gym', '50000', 1, 'Có thể gọi');

InsERT INTO khach_hang (id_loai_khach, ho_ten, ngay_sinh, so_cmnd, so_dien_thoai, email, dia_chi)
VALUES
(5, 'Huỳnh ngọc Thanh', '1990-07-27', '201784567', '0372465456', 'thanhdeptrai@gmail.com', 'Đà Nẵng'),
(2, 'Phan đại phước', '1975-04-10', '201570309', '090456785', 'phuonghong@gmail.com', 'Quảng Trị'),
(3, 'Dương Nhật Sang', '1995-06-12', '202568003', '0903216545', 'sangdien@gmail.com', 'Đà Nẵng'),
(4, 'Trần văn Toàn', '1970-07-27', '223784867', '0372465456', 'toandien@gmail.com', 'Đà Nẵng'),
(3, 'Phan văn Đại', '1965-04-10', '201450309', '090456785', 'daibangtungcanh@gmail.com', 'Hải châu'),
(5, 'Dương Văn Đông', '1969-06-12', '221568053', '0903216545', 'dongphuongbatbai@gmail.com', 'Đà Nẵng'),
(5, 'nguyễn Văn Công', '1992-06-28', '202003001', '0907851236', 'congvan@gmail.com', 'quảng Trị'),
(1, 'Trần Ngọc Tân', '1985-05-17', '201238740', '0901593575', 'tantutor@gmail.com', 'Vinh'),
(4, 'Dương Quốc Huy', '1950-01-17', '200358743', '090147852', 'huymt@gmail.com', 'Tp HCM'),
(1, 'huỳnh Tấn Hoàng', '1974-01-20', '200513678', '0903691235', 'hoangthuong@gmail.com', 'vinh'),
(5, 'nguyễn Đức Thiện', '1980-03-20', '200800369', '0901258965', 'thienlll@gmail.com', 'Quảng Trị'),
(4, 'bùi văn Đức', '1985-01-21', '203526978', '0984568525', 'duc@gmail.com', 'Quảng Ngãi'),
(1, 'Nguyễn Ngọc Cẩm Trâm', '1999-04-29', '203126897', '090125874', 'tran1808@gmail.com', 'Đà Nẵng');

INSErT INTO nhan_vien (ho_ten, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi)
VALUES
('Nguyễn Văn long', 1, 1, 1, '1990-04-24', '201451309', '15000000', '0931654586', 'huy@gmail.com', 'Quảng Ngãi'),
('Hồ Quang Bình', 2, 2, 2, '1991-08-17', '200356067', '10000000', '0903221456', 'dong@gmail.com', 'Quảng nam'),
('Phạm Thị Trang', 3, 3, 2, '1993-02-07', '200457145', '12000000', '0372456789', 'diem@gmail.com', 'Komtum'),
('võ Xuan huy', 1, 3, 3, '1990-04-24', '201451309', '15000000', '0931654586', 'huy@gmail.com', 'Quảng Ngãi'),
('Dương Văn ĐÔng', 2, 2, 3, '1991-08-17', '200356067', '20000000', '0903221456', 'dong@gmail.com', 'Đà Nẵng'),
('Vũ Thị Diễm', 3, 3, 4, '1993-02-07', '200457145', '10000000', '0372456789', 'diem@gmail.com', 'Hải Châu'),
('Trần thị Ánh Nga', 4, 3, 2, '1999-02-14', '200567134', '11000000', '0372452123', 'nga@gmail.com', 'BÌnh Định'),
('Võ Thái Hòa', 6, 4, 4, '1985-04-24', '201451309', '25000000', '0931654586', 'hoa@gmail.com', 'hà nội'),
('Dương Văc Bắc', 4, 3, 3, '1991-08-17', '200356067', '20000000', '0903221456', 'bacthanh@gmail.com', 'quảng bình'),
('Vũ Thị Phương Trinh', 1, 2, 2, '1999-02-07', '222045714', '10000000', '0372456789', 'trinhdepgai@gmail.com', 'Đà Nẵng'),
('Trần thị Ánh Nguyệt', 1, 2, 1, '2000-02-14', '22167134', '11000000', '0372452123', 'nguyetnga@gmail.com', 'BÌnh Định'),
('Nguyễn Đình Thuận', 3, 3, 2, '2000-07-19', '201367212', '13000000', '0372458794', 'thuan@gmail.com', 'Đà Nẵng'),
('Võ Thị Cẩm Tiên', 4, 3, 3, '1996-10-24', '201458090', '13000000', '0964583142', 'tien@gmail.com', 'Đà Nẵng'),
('Trần Đại Tiến', 2, 2, 4, '1995-05-15', '201450023', '10000000', '090457841', 'daitien@gmail.com', 'Huế'),
('Nguyễn Thị Hằng', 4, 1, 3, '1994-09-20', '201098110', '1000000', '090466452', 'hang@gmail.com', 'Quảng Nam');

iNSERT INTO dich_vu (ten_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_thue, id_loai_dich_vu, trang_thai)
VALUeS
('Villa 1', 280, 3, 10, 4000000, 1, 1, 'Còn Trống'),
('Villa 2', 340, 3, 9, 6000000, 2, 1, 'Còn Trống'),
('Villa 3', 370, 3, 12, 8000000, 3, 1, 'Còn Trống'),
('House 1', 250, 2, 6, 3000000, 1, 2, 'còn trống'),
('House 2', 260, 2, 6, 2500000, 2, 2, 'Còn Trống'),
('House 3', 260, 2, 6, 2500000, 3, 2, 'Còn Trống'),
('Room 1', 100, 1, 5, 700000, 3, 3, 'còn phòng'),
('Room 2', 80, 1, 4, 600000, 1, 3, 'còn phòng'),
('Room 3', 60, 1, 2, 400000, 2, 3, 'còn phòng');

inSERT INTO hop_dong (id_nhan_vien, id_khach_hang, id_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc,tong_tien)
VALueS
(3, 1, 7, '2016-08-21', '2018-09-21', 2000000,7000000),
(6, 3, 2, '2015-10-12', '2016-01-18', 3000000,53000000),
(4, 3, 2, '2017-05-09', '2019-09-09', 2000000,100000000),
(8, 2, 5, '2019-10-12', '2021-12-12', 3000000,6000000),
(6, 8, 5, '2020-11-11', '2021-02-02', 4000000,4000000),
(9, 7, 6, '2019-11-21', '2020-01-21', 3000000,15000000),
(1, 10, 7, '2021-08-21', '2021-09-21', 2000000,7000000),
(2, 5, 2, '2019-10-12', '2020-01-18', 3000000,6000000),
(1, 11, 2, '2020-06-09', '2020-09-09', 2000000,5000000),
(5, 2, 5, '2021-10-12', '2021-12-12', 3000000,6000000),
(2, 4, 5, '2020-11-11', '2021-02-02', 4000000,4000000),
(5, 5, 6, '2019-11-21', '2020-01-21', 3000000,15000000),
(6, 6, 7, '2020-10-01', '2020-10-31', 2000000,10000000),
(5, 9, 6, '2020-04-10', '2020-05-10', 2000000,12000000),
(4, 7, 1, '2019-12-01', '2020-03-10', 3000000,11000000),
(2, 8, 5, '2019-10-01', '2020-10-31', 1000000,30000000),
(6, 8, 4, '2019-12-12', '2021-05-27', 1000000,50000000),
(2, 13, 7, '2019-10-15', '2020-11-28', 2000000,20000000),
(1, 2, 6, '2018-03-15', '2021-03-27', 3000000,45000000);

InseRt IntO hop_dong_chi_tiet (id_hop_dong, id_dich_vu_di_kem, so_luong)
VALUES
(1,1,1),
(2,1,2),
(3,3,2),
(4,1,3),
(5,4,3),
(15,2,1),
(2,1,2),
(11,3,2),
(6,1,3),
(5,4,3),
(14,1,2),
(7,3,2),
(18,4,2),
(19,2,2),
(10,2,2),
(11,1,2),
(13,2,3);

-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự.
select*
from nhan_vien
where(
substr(ho_ten,7) like '%h%'
or substr(ho_ten,7) like '%T%'
or substr(ho_ten,7) like '%K%'
and char_length(ho_ten)<=15
);
-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 
-- đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
 
select *
 from khach_hang
 where(year(now())-year(ngay_sinh) between 18 and 50)
 and(dia_chi ='quảng ngãi' or dia_chi = 'quảng trị' ); 
 
  /*
 Task4: Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần 
đặt phòng của khách hàng. chỉ đếm những khách hàng nào có tên loại khách hàng là “Diamond”.
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

/*5 Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopdong, TenDichVu, ngAyLamHopDong, Ngayketthuc, TonGTien 
(Với tONgTien được tính theo Công thức như sau: CHiPhiThue + SoLuong*gIA, vỚi SoLuong và Giá là từ bảng DichvUDiKem)
 cho tất cả Các Khách hàng đã tỪng Đặt phỏng. (Những Khách hàng nào chƯA từNg đặt phòng cũnG phải hiển thị Ra
 */
 select kh.id_khacH_hang,kh.ho_tEn,LK.ten_loai_khach_hang,hD.iD_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,
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
 /* 6.	Hiển thị IDDichvu, tenDichVu, DienTich, ChiphiThue, tenLoaidichVu 
 của tất cả Các loại Dịch vụ chưa Từng ĐƯợc Khách hàng thựC hiệN đặt từ quý 1 Của Năm 2019 (Quý 1 lÀ tháNG 1, 2, 3).
*/
seleCt dv.id_dich_vu,dv.tEn_dich_vu,dV.chi_PHI_thue,ldv.ten_loai_Dich_Vu
from dich_vu dv 
left join loai_dich_VU ldv on dv.id_loai_dich_vu =lDV.id_lOai_dich_vu
left Join hop_dong hd oN HD.id_dich_vu = dv.id_dich_VU
wherE dv.id_dich_vu not in (
    select dv.id_dicH_vU
	from dich_vu dv
    join hop_dong hd on hd.id_dich_vu = dv.id_dich_vu
     where
            (quarter(hd.ngay_lam_hop_dong) = 1)
			and (year(hd.ngay_lam_hop_dong) = 2019))
            group by dv.id_dich_vu
         ;

/* 7.Hiển thị thông tin IDDichVU, tendicHvu, DienTiCh, soNguoiToiDA, ChiPhiThue, TEnLoAiDichVu của tất cẢ 
các loại dịch Vụ đã từng được Khách hàng Đặt pHòng trong năm 2018 nHưng chưa từng đưỢc khÁch hàng đặt phònG  trOng năm 2019.
*/
select dv.iD_dich_vU,dv.ten_dicH_vu,dv.dien_Tich,dv.sO_nguoi_toi_dA,dv.chi_phi_thue,ldV.ten_loai_dich_vU
froM dich_vu dv
joiN loai_dich_vu ldV on ldv.id_loai_dIch_vu = dv.id_loai_dich_vu
jOiN Hop_doNg hD on dv.Id_dich_vu =hd.id_DiCh_vu
where     dv.id_dich_Vu in (
select dv.id_dich_vu
from dich_vu dv
join hop_dong hd on hd.id_dich_vu = dv.id_dich_vu
        where year(hd.ngay_lam_hop_dong) = 2018)
        and dv.id_dich_vu not in (
        select dv.id_dich_vu
        from dich_vu dv
		join
            hop_dong hd on hd.id_dich_vu = dv.id_dich_vu
       where
            year(hd.ngay_lam_hop_dong) = 2019)
            group by dv.id_dich_vu;

/* 8.	Hiển thị thông tin HoTenKhachhang có trong hệ thống, với yêu cầu hoThenKhachHang không trùng nhau.
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

/*1010.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm.
 Kết quả hiển thị bao gồm IDHopDong, NgayLamHopDong, ngayketthuc, TiendatCoc,
 SoLuongDichVuDiKem (được tính dựa trên việc count các iDhopDongChiTiet).
*/
select hd.id_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,
hd.tien_dat_coc,count(id_dich_vu_di_kem) as so_luong_dich_vu_di_kem
from hop_dong hd 
join hop_dong_chi_tiet hdct on hd.id_hop_dong = hdct.id_hop_dong
group by hdct.id_hop_dong;

/*11
11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những khách hàng có Tenloaikhachhang là “Diamond” 
và có địa chỉ là “vinh” hoặc “Quảng Ngãi”.
*/
 select kh.ho_ten,kh.dia_chi,lk.ten_loai_khach_hang,dvdk.id_dich_vu_di_kem,
 dvdk.ten_dich_vu_di_kem,dvdk.gia,dvdk.don_vi,dvdk.trang_thai_kha_dung
 from dich_vu_di_kem dvdk
 join hop_dong_chi_tiet hdct on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
 join hop_dong hd on hd.id_hop_dong = hdct.id_hop_dong
 join khach_hang kh on hd.id_khach_hang = kh.id_khach_hang
 join loai_khach lk on kh.id_loai_khach = lk.id_loai_khach
 where lk.ten_loai_khach_hang ='diamond' and (dia_chi = 'vinh' or dia_chi ='quảng ngãi');

/*
task 12: Hiển thị thông tin IDHopDong, TenNhanVien, TenKhachHang, SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem 
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

/*
13.	hiển thị thông tin các dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
 (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
 */
 select hdct.id_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem,count(hdct.id_dich_vu_di_kem) as so_luong_dich_vu_di_kem
 from hop_dong_chi_tiet hdct 
 join dich_vu_di_kem dvdk on hdct.id_dich_vu_di_kem =dvdk.id_dich_vu_di_kem
 group by hdct.id_dich_vu_di_kem
 having count(hdct.id_dich_vu_di_kem) >= all (
    select
        count(hdct.id_dich_vu_di_kem)
    from
        hop_dong_chi_tiet hdct
    group by hdct.id_dich_vu_di_kem);

 
 /*
14.	hiển thị thông tin tất cả các dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
Thông tin hiển thị bao gồm IdhopDong, TenLoaiDichvu, TenDichVuDiKem, SoLanSuDung.
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

/*15.	Hiển thi thông tin của tất cả nhân viên bao gồm IDNhanVien, HoTen, Trinhdo, TenBoPhan,
 SoDienThoai, diachi mới chỉ lập được tối đa 3 hợp đồng từ năm 2018 đến 2019.
 */ 
select nv.id_nhan_vien,nv.ho_ten,td.ten_trinh_do,
bp.ten_bo_phan,nv.so_dien_thoai,nv.dia_chi,
count(hd.id_hop_dong) as so_luong_lap_hop_dong
from nhan_vien nv
join hop_dong hd on nv.id_nhan_vien = hd.id_nhan_vien
join trinh_do td on nv.id_trinh_do =td.id_trinh_do
join bo_phan bp on nv.id_bo_phan = bp.id_bo_phan
where year(hd.ngay_lam_hop_dong) between 2018 and 2019
group by nv.id_nhan_vien
having count(hd.ngay_lam_hop_dong)<=3;

-- 16.xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2017 đến năm 2019.
set SQL_SAFE_UPDATES =0;
delete from nhan_vien 
where id_nhan_vien not in (
select id_nhan_vien 
from(
    select nv.id_nhan_vien
    from nhan_vien nv 
	join hop_dong hd on nv.id_nhan_vien = hd.id_nhan_vien
        where year(hd.ngay_lam_hop_dong) between 2017 and 2019
        group by nv.id_nhan_vien
        having count(hd.id_hop_dong) > 0) as dalete);
set SQL_SAFE_UPDATES =1;
select * from nhan_vien;

	/*
	Task 17: Cập nhật thông tin những khách hàng có TenLoaiKhachHang từ Platinium lên Diamond, chỉ cập nhật những khách hàng đã từng 
	đặt phòng với tổng Tiền thanh toán trong năm 2019 là lớn hơn 10.000.000 VNĐ.
	*/
	set sql_safe_updates = 0;
	update khach_hang 
	set id_loai_khach= 4
	where id_khach_hang in (
       select id_khach_hang
	   from(select kh.id_khach_hang
	            from
	                khach_hang kh
	            join loai_khach lk on kh.id_loai_khach = lk.id_loai_khach
	            join hop_dong hd on kh.id_khach_hang = hd.id_khach_hang
	            join dich_vu dv on hd.id_dich_vu = dv.id_dich_vu
	            join hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
	            join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
	            where
	                (lk.ten_loai_khach_hang = 'Platinium')
						and(year(hd.ngay_lam_hop_dong) = 2019)
	            group by hd.id_khach_hang
	            having sum(dv.chi_phi_thue + dvdk.gia * dvdk.don_vi) > 10000000) as a);
	set sql_safe_updates = 1;

	select*from khach_hang;


-- Task 18: Xóa những khách hàng có hợp đồng trước năm 2016 (chú ý ràng buộc giữa các bảng).

set sql_safe_updates = 0;
delete from khach_hang 
where id_khach_hang in (
   select  id_khach_hang
   from (
        select  kh.id_khach_hang
		from khach_hang kh
		join hop_dong hd on hd.id_khach_hang = kh.id_khach_hang
        where
        year(hd.ngay_lam_hop_dong) < 2016) as a);
set sql_safe_updates = 1;
select * from khach_hang;

-- 19.	Cập nhật giá cho các Dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2019 lên gấp đôi.
set sql_safe_updates = 0;
update dich_vu_di_kem
set gia = gia * 2
where id_dich_vu_di_kem in (
select id_dich_vu_di_kem
from(
	select dvdk.id_dich_vu_di_kem
	from dich_vu_di_kem dvdk
	join
            hop_dong_chi_tiet hdct on hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
	join
            hop_dong hd on hd.id_hop_dong = hdct.id_hop_dong
	where year(hd.ngay_lam_hop_dong) = 2019
	group by dvdk.id_dich_vu_di_kem
	having count(hdct.id_dich_vu_di_kem) > 10) as t);
set sql_safe_updates = 1;
select* from dich_vu_di_kem;
/*
20.	Hiển thị thông tin của tất cả các Nhân viên và Khách hàng có trong hệ thống, thông tin hiển thị bao gồm 
ID (IDNhanVien, IDKhachHang), HoTen, Email, SoDienThoai, NgaySinh, DiaChi.
*/
select id_nhan_vien as id,ho_ten,email,
    so_dien_thoai,ngay_sinh,dia_chi
from
    nhan_vien 
union all
select
    id_khach_hang as id,ho_ten,email,
    so_dien_thoai,ngay_sinh,dia_chi
from
    khach_hang;
/*
21.	Tạo khung nhìn có tên là V_NHANVIEN để lấy được thông tin của 
tất cả các nhân viên có địa chỉ là “Hải Châu” và đã từng lập hợp đồng 
cho 1 hoặc nhiều Khách hàng bất kỳ  với ngày lập hợp đồng là “12/12/2019”
*/
create view v_nhan_vien as
select nv.id_nhan_vien,nv.ho_ten,nv.ngay_sinh,
        nv.so_dien_thoai,nv.email,nv.dia_chi
from nhan_vien nv
join
        hop_dong hd ON hd.id_nhan_vien = nv.id_nhan_vien
where nv.dia_chi = 'Hải Châu'
and hd.ngay_lam_hop_dong = '2019-12-12';
select * from v_nhan_vien;

 /*22.	Thông qua khung nhìn V_NHANVIEN thực hiện cập nhật địa chỉ thành “Liên Chiểu” 
 đối với tất cả các Nhân viên được nhìn thấy bởi khung nhìn này.
 */
set sql_safe_updates = 0;
update v_nhan_vien
set dia_chi ='lien chiểu' ;
set sql_safe_updates = 1;
select * from v_nhan_vien;