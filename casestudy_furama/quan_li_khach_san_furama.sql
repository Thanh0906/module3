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
('l??? t??n'),('ph???c v???'),('chuy??n vi??n'),('gi??m s??t'),('qu???n l??'),('gi??m ?????c');

insert into trinh_do(ten_trinh_do)
value
('trung c???p'),('cao ?????ng'),('?????i h???c'),('sau ?????i h???c');

insert into bo_phan(ten_bo_phan)
value
('sale_marketing'),('h??nh ch??nh'),('ph???c v??? '),('qu???n l??');

insert into loai_khach(ten_loai_khach_hang)
value
('Member'),('Siler'),('God'),('Platimun'),('Diamond');

insert into kieu_thue(ten_kieu_thue,gia)
values
('gi???','300000'),('ng??y','1000000'),('th??ng','20000000'),('n??m','200000000');

insert into loai_dich_vu(ten_loai_dich_vu)
value
('Villa'),('House'),('Room');

insert into dich_vu_di_kem (ten_dich_vu_di_kem, gia, don_vi, trang_thai_kha_dung)
values
('massage', '500000', 1, 'C??n ch???'),
('karaoke',' 400000', 1, 'C??n ch???'),
('Thu?? xe', '400000', 1, 'C??n ch???'),
('Gym', '50000', 1, 'C?? th??? g???i');

InsERT INTO khach_hang (id_loai_khach, ho_ten, ngay_sinh, so_cmnd, so_dien_thoai, email, dia_chi)
VALUES
(5, 'Hu???nh ng???c Thanh', '1990-07-27', '201784567', '0372465456', 'thanhdeptrai@gmail.com', '???? N???ng'),
(2, 'Phan ?????i ph?????c', '1975-04-10', '201570309', '090456785', 'phuonghong@gmail.com', 'Qu???ng Tr???'),
(3, 'D????ng Nh???t Sang', '1995-06-12', '202568003', '0903216545', 'sangdien@gmail.com', '???? N???ng'),
(4, 'Tr???n v??n To??n', '1970-07-27', '223784867', '0372465456', 'toandien@gmail.com', '???? N???ng'),
(3, 'Phan v??n ?????i', '1965-04-10', '201450309', '090456785', 'daibangtungcanh@gmail.com', 'H???i ch??u'),
(5, 'D????ng V??n ????ng', '1969-06-12', '221568053', '0903216545', 'dongphuongbatbai@gmail.com', '???? N???ng'),
(5, 'nguy???n V??n C??ng', '1992-06-28', '202003001', '0907851236', 'congvan@gmail.com', 'qu???ng Tr???'),
(1, 'Tr???n Ng???c T??n', '1985-05-17', '201238740', '0901593575', 'tantutor@gmail.com', 'Vinh'),
(4, 'D????ng Qu???c Huy', '1950-01-17', '200358743', '090147852', 'huymt@gmail.com', 'Tp HCM'),
(1, 'hu???nh T???n Ho??ng', '1974-01-20', '200513678', '0903691235', 'hoangthuong@gmail.com', 'vinh'),
(5, 'nguy???n ?????c Thi???n', '1980-03-20', '200800369', '0901258965', 'thienlll@gmail.com', 'Qu???ng Tr???'),
(4, 'b??i v??n ?????c', '1985-01-21', '203526978', '0984568525', 'duc@gmail.com', 'Qu???ng Ng??i'),
(1, 'Nguy???n Ng???c C???m Tr??m', '1999-04-29', '203126897', '090125874', 'tran1808@gmail.com', '???? N???ng');

INSErT INTO nhan_vien (ho_ten, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi)
VALUES
('Nguy???n V??n long', 1, 1, 1, '1990-04-24', '201451309', '15000000', '0931654586', 'huy@gmail.com', 'Qu???ng Ng??i'),
('H??? Quang B??nh', 2, 2, 2, '1991-08-17', '200356067', '10000000', '0903221456', 'dong@gmail.com', 'Qu???ng nam'),
('Ph???m Th??? Trang', 3, 3, 2, '1993-02-07', '200457145', '12000000', '0372456789', 'diem@gmail.com', 'Komtum'),
('v?? Xuan huy', 1, 3, 3, '1990-04-24', '201451309', '15000000', '0931654586', 'huy@gmail.com', 'Qu???ng Ng??i'),
('D????ng V??n ????ng', 2, 2, 3, '1991-08-17', '200356067', '20000000', '0903221456', 'dong@gmail.com', '???? N???ng'),
('V?? Th??? Di???m', 3, 3, 4, '1993-02-07', '200457145', '10000000', '0372456789', 'diem@gmail.com', 'H???i Ch??u'),
('Tr???n th??? ??nh Nga', 4, 3, 2, '1999-02-14', '200567134', '11000000', '0372452123', 'nga@gmail.com', 'B??nh ?????nh'),
('V?? Th??i H??a', 6, 4, 4, '1985-04-24', '201451309', '25000000', '0931654586', 'hoa@gmail.com', 'h?? n???i'),
('D????ng V??c B???c', 4, 3, 3, '1991-08-17', '200356067', '20000000', '0903221456', 'bacthanh@gmail.com', 'qu???ng b??nh'),
('V?? Th??? Ph????ng Trinh', 1, 2, 2, '1999-02-07', '222045714', '10000000', '0372456789', 'trinhdepgai@gmail.com', '???? N???ng'),
('Tr???n th??? ??nh Nguy???t', 1, 2, 1, '2000-02-14', '22167134', '11000000', '0372452123', 'nguyetnga@gmail.com', 'B??nh ?????nh'),
('Nguy???n ????nh Thu???n', 3, 3, 2, '2000-07-19', '201367212', '13000000', '0372458794', 'thuan@gmail.com', '???? N???ng'),
('V?? Th??? C???m Ti??n', 4, 3, 3, '1996-10-24', '201458090', '13000000', '0964583142', 'tien@gmail.com', '???? N???ng'),
('Tr???n ?????i Ti???n', 2, 2, 4, '1995-05-15', '201450023', '10000000', '090457841', 'daitien@gmail.com', 'Hu???'),
('Nguy???n Th??? H???ng', 4, 1, 3, '1994-09-20', '201098110', '1000000', '090466452', 'hang@gmail.com', 'Qu???ng Nam');

iNSERT INTO dich_vu (ten_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_thue, id_loai_dich_vu, trang_thai)
VALUeS
('Villa 1', 280, 3, 10, 4000000, 1, 1, 'C??n Tr???ng'),
('Villa 2', 340, 3, 9, 6000000, 2, 1, 'C??n Tr???ng'),
('Villa 3', 370, 3, 12, 8000000, 3, 1, 'C??n Tr???ng'),
('House 1', 250, 2, 6, 3000000, 1, 2, 'c??n tr???ng'),
('House 2', 260, 2, 6, 2500000, 2, 2, 'C??n Tr???ng'),
('House 3', 260, 2, 6, 2500000, 3, 2, 'C??n Tr???ng'),
('Room 1', 100, 1, 5, 700000, 3, 3, 'c??n ph??ng'),
('Room 2', 80, 1, 4, 600000, 1, 3, 'c??n ph??ng'),
('Room 3', 60, 1, 2, 400000, 2, 3, 'c??n ph??ng');

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

-- 2.	Hi???n th??? th??ng tin c???a t???t c??? nh??n vi??n c?? trong h??? th???ng c?? t??n b???t ?????u l?? m???t trong c??c k?? t??? ???H???, ???T??? ho???c ???K??? v?? c?? t???i ??a 15 k?? t???.
select*
from nhan_vien
where  char_length(ho_ten)<=15 and  
    ((select substring_index(ho_ten,' ',-1)) regexp '^T|K|H');
    
-- 3.	Hi???n th??? th??ng tin c???a t???t c??? kh??ch h??ng c?? ????? tu???i t??? 18 
-- ?????n 50 tu???i v?? c?? ?????a ch??? ??? ??????? N???ng??? ho???c ???Qu???ng Tr??????.
 
select *
 from khach_hang
 where(year(now())-year(ngay_sinh) between 18 and 50)
 and(dia_chi ='qu???ng ng??i' or dia_chi = 'qu???ng tr???' ); 
 
  /*
 Task4: ?????m xem t????ng ???ng v???i m???i kh??ch h??ng ???? t???ng ?????t ph??ng bao nhi??u l???n. K???t qu??? hi???n th??? ???????c s???p x???p t??ng d???n theo s??? l???n 
?????t ph??ng c???a kh??ch h??ng. ch??? ?????m nh???ng kh??ch h??ng n??o c?? t??n lo???i kh??ch h??ng l?? ???Diamond???.
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

/*5 Hi???n th??? IDKhachHang, HoTen, TenLoaiKhach, IDHopdong, TenDichVu, ngAyLamHopDong, Ngayketthuc, TonGTien 
(V???i tONgTien ???????c t??nh theo C??ng th???c nh?? sau: CHiPhiThue + SoLuong*gIA, v???i SoLuong v?? Gi?? l?? t??? b???ng DichvUDiKem)
 cho t???t c??? C??c Kh??ch h??ng ???? t???ng ?????t ph???ng. (Nh???ng Kh??ch h??ng n??o ch??A t???Ng ?????t ph??ng c??nG ph???i hi???n th??? Ra
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
 /* 6.	Hi???n th??? IDDichvu, tenDichVu, DienTich, ChiphiThue, tenLoaidichVu 
 c???a t???t c??? C??c lo???i D???ch v??? ch??a T???ng ???????c Kh??ch h??ng th???C hi???N ?????t t??? qu?? 1 C???a N??m 2019 (Qu?? 1 l?? th??NG 1, 2, 3).
*/
select dv.id_dich_vu,dv.tEn_dich_vu,dV.chi_PHI_thue,ldv.ten_loai_Dich_Vu
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

/* 7.Hi???n th??? th??ng tin IDDichVU, tendicHvu, DienTiCh, soNguoiToiDA, ChiPhiThue, TEnLoAiDichVu c???a t???t c??? 
c??c lo???i d???ch V??? ???? t???ng ???????c Kh??ch h??ng ?????t pH??ng trong n??m 2018 nH??ng ch??a t???ng ???????c kh??ch h??ng ?????t ph??nG  trOng n??m 2019.
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

/* 8.	Hi???n th??? th??ng tin HoTenKhachhang c?? trong h??? th???ng, v???i y??u c???u hoThenKhachHang kh??ng tr??ng nhau.
H???c vi??n s??? d???ng theo 3 c??ch kh??c nhau ????? th???c hi???n y??u c???u tr??n
*/
-- c??ch 1
select ho_ten
from khach_hang
union select ho_ten from khach_hang;

-- c??ch 2 
select ho_ten
from khach_hang
group by ho_ten;

-- c??ch 3 
select distinct ho_ten from khach_hang;

/* 9.	Th???c hi???n th???ng k?? doanh thu theo th??ng, 
ngh??a l?? t????ng ???ng v???i m???i th??ng trong n??m 2019 th?? s??? c?? bao nhi??u kh??ch h??ng th???c hi???n ?????t ph??ng.
*/
select count(hd.id_dich_vu) as doanh_thu 
,month(ngay_lam_hop_dong) as theo_thang
from hop_dong hd
where year(ngay_lam_hop_dong)=2019
group by month(ngay_lam_hop_dong);

/*1010.	Hi???n th??? th??ng tin t????ng ???ng v???i t???ng H???p ?????ng th?? ???? s??? d???ng bao nhi??u D???ch v??? ??i k??m.
 K???t qu??? hi???n th??? bao g???m IDHopDong, NgayLamHopDong, ngayketthuc, TiendatCoc,
 SoLuongDichVuDiKem (???????c t??nh d???a tr??n vi???c count c??c iDhopDongChiTiet).
*/
select hd.id_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,
hd.tien_dat_coc,count(id_dich_vu_di_kem) as so_luong_dich_vu_di_kem
from hop_dong hd 
join hop_dong_chi_tiet hdct on hd.id_hop_dong = hdct.id_hop_dong
group by hdct.id_hop_dong;

/*11
11.	Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m ???? ???????c s??? d???ng b???i nh???ng kh??ch h??ng c?? Tenloaikhachhang l?? ???Diamond??? 
v?? c?? ?????a ch??? l?? ???vinh??? ho???c ???Qu???ng Ng??i???.
*/
 select kh.ho_ten,kh.dia_chi,lk.ten_loai_khach_hang,dvdk.id_dich_vu_di_kem,
 dvdk.ten_dich_vu_di_kem,dvdk.gia,dvdk.don_vi,dvdk.trang_thai_kha_dung
 from dich_vu_di_kem dvdk
 join hop_dong_chi_tiet hdct on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
 join hop_dong hd on hd.id_hop_dong = hdct.id_hop_dong
 join khach_hang kh on hd.id_khach_hang = kh.id_khach_hang
 join loai_khach lk on kh.id_loai_khach = lk.id_loai_khach
 where lk.ten_loai_khach_hang ='diamond' and (dia_chi = 'vinh' or dia_chi ='qu???ng ng??i');

/*
task 12: Hi???n th??? th??ng tin IDHopDong, TenNhanVien, TenKhachHang, SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem 
(???????c t??nh d???a tr??n t???ng H???p ?????ng chi ti???t), TienDatCoc c???a t???t c??? c??c d???ch v??? ???? t???ng ???????c kh??ch h??ng ?????t v??o 3 th??ng cu???i n??m 2019 
nh??ng ch??a t???ng ???????c kh??ch h??ng ?????t v??o 6 th??ng ?????u n??m 2019.
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
13.	hi???n th??? th??ng tin c??c d???ch v??? ??i k??m ???????c s??? d???ng nhi???u nh???t b???i c??c Kh??ch h??ng ???? ?????t ph??ng.
 (L??u ?? l?? c?? th??? c?? nhi???u d???ch v??? c?? s??? l???n s??? d???ng nhi???u nh?? nhau).
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
14.	hi???n th??? th??ng tin t???t c??? c??c d???ch v??? ??i k??m ch??? m???i ???????c s??? d???ng m???t l???n duy nh???t. 
Th??ng tin hi???n th??? bao g???m IdhopDong, TenLoaiDichvu, TenDichVuDiKem, SoLanSuDung.
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

/*15.	Hi???n thi th??ng tin c???a t???t c??? nh??n vi??n bao g???m IDNhanVien, HoTen, Trinhdo, TenBoPhan,
 SoDienThoai, diachi m???i ch??? l???p ???????c t???i ??a 3 h???p ?????ng t??? n??m 2018 ?????n 2019.
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

-- 16.x??a nh???ng Nh??n vi??n ch??a t???ng l???p ???????c h???p ?????ng n??o t??? n??m 2017 ?????n n??m 2019.
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
        having count(hd.id_hop_dong) > 0) as xoa );
set SQL_SAFE_UPDATES =1;
select * from nhan_vien;

	/*
	Task 17: C???p nh???t th??ng tin nh???ng kh??ch h??ng c?? TenLoaiKhachHang t??? Platinium l??n Diamond, ch??? c???p nh???t nh???ng kh??ch h??ng ???? t???ng 
	?????t ph??ng v???i t???ng Ti???n thanh to??n trong n??m 2019 l?? l???n h??n 10.000.000 VN??.
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


-- Task 18: X??a nh???ng kh??ch h??ng c?? h???p ?????ng tr?????c n??m 2016 (ch?? ?? r??ng bu???c gi???a c??c b???ng).
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

-- 19.	C???p nh???t gi?? cho c??c D???ch v??? ??i k??m ???????c s??? d???ng tr??n 10 l???n trong n??m 2019 l??n g???p ????i.
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
	having count(hdct.id_dich_vu_di_kem) > 10) as so_lan_su_dung);
set sql_safe_updates = 1;
select* from dich_vu_di_kem;
/*
20.	Hi???n th??? th??ng tin c???a t???t c??? c??c Nh??n vi??n v?? Kh??ch h??ng c?? trong h??? th???ng, th??ng tin hi???n th??? bao g???m 
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
21.	T???o khung nh??n c?? t??n l?? V_NHANVIEN ????? l???y ???????c th??ng tin c???a 
t???t c??? c??c nh??n vi??n c?? ?????a ch??? l?? ???H???i Ch??u??? v?? ???? t???ng l???p h???p ?????ng 
cho 1 ho???c nhi???u Kh??ch h??ng b???t k???  v???i ng??y l???p h???p ?????ng l?? ???12/12/2019???
*/
create view v_nhan_vien as
select nv.id_nhan_vien,nv.ho_ten,nv.ngay_sinh,
        nv.so_dien_thoai,nv.email,nv.dia_chi
from nhan_vien nv
join
        hop_dong hd ON hd.id_nhan_vien = nv.id_nhan_vien
where nv.dia_chi = 'H???i Ch??u'
and hd.ngay_lam_hop_dong = '2019-12-12';
select * from v_nhan_vien;

 /*22.	Th??ng qua khung nh??n V_NHANVIEN th???c hi???n c???p nh???t ?????a ch??? th??nh ???Li??n Chi???u??? 
 ?????i v???i t???t c??? c??c Nh??n vi??n ???????c nh??n th???y b???i khung nh??n n??y.
 */
set sql_safe_updates = 0;
update v_nhan_vien
set dia_chi ='li??n chi???u' ;
set sql_safe_updates = 1;
select * from v_nhan_vien;