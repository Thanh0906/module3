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
foreign key(id_vi_tri) references vi_tri(id_vi_tri),
id_trinh_do int not null,
foreign key(id_trinh_do) references trinh_do(id_trinh_do),
id_bo_phan int not null,
foreign key(id_bo_phan) references bo_phan(id_bo_phan),
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
foreign key(id_loai_khach) references loai_khach(id_loai_khach),
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
foreign key (id_kieu_thue) references kieu_thue(id_kieu_thue),
id_loai_dich_vu int not null,
foreign key(id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu),
trang_thai varchar(45) not null
);
create table hop_dong(
id_hop_dong int auto_increment primary key,
id_nhan_vien int not null,
foreign key (id_nhan_vien)  references nhan_vien(id_nhan_vien),
id_khach_hang int not null,
foreign key (id_khach_hang) references khach_hang(id_khach_hang),
id_dich_vu int not null,
foreign key(id_dich_vu) references dich_vu(id_dich_vu),
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
foreign key(id_hop_dong) references hop_dong(id_hop_dong),
id_dich_vu_di_kem int not null,
foreign key(id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem),
so_luong int not null
);
insert into vi_tri(ten_vi_tri)
value
('lễ tân'),('chuyên viên'),('quản lí'),('trưởng phòng'),('giám đốc');

insert into trinh_do(ten_trinh_do)
value
('trung cấp'),('cao đẳng'),('đại học'),('sau đại học');

insert into bo_phan(ten_bo_phan)
value
('marketing'),('hành chính'),(' quản lí'),('phục vụ'),('bảo trị');

insert into loai_khach(ten_loai_khach_hang)
value
('Member'),('Siler'),('God'),('Platimun'),('Diamond');

insert into kieu_thue(ten_kieu_thue,gia)
values
('giờ','300000'),('ngày','1000000'),('tháng','20000000'),('Năm','200000000');

insert into loai_dich_vu(ten_loai_dich_vu)
value
('Villa'),('House'),('Room');

insert into dich_vu_di_kem (ten_dich_vu_di_kem, gia, don_vi, trang_thai_kha_dung)
values
('Massage', '500000', 1, 'Còn chỗ'),
('Karaoke',' 400000', 1, 'Còn chỗ'),
('Thuê xe', '400000', 1, 'Còn chỗ'),
('Bia', '50000', 1, 'Có thể gọi');

INSERT INTO khach_hang (id_loai_khach, ho_ten, ngay_sinh, so_cmnd, so_dien_thoai, email, dia_chi)
VALUES
(1, 'Huỳnh Ngọc Thanh', '1990-07-27', '201784567', '0372465456', 'thanhdeptrai@gmail.com', 'Đà Nẵng'),
(2, 'Phan Đại phước', '1975-04-10', '201570309', '090456785', 'phuonghong@gmail.com', 'Quảng Trị'),
(3, 'Dương Nhật Sang', '1995-06-12', '202568003', '0903216545', 'sangdien@gmail.com', 'Đà Nẵng'),
(1, 'Nguyễn Văn Công', '1992-06-28', '202003001', '0907851236', 'congvan@gmail.com', 'Quảng Trị'),
(1, 'Trần Ngọc Tân', '1985-05-17', '201238740', '0901593575', 'tantutor@gmail.com', 'Vinh'),
(4, 'Dương Quốc Huy', '1950-01-17', '200358743', '090147852', 'huymt@gmail.com', 'Tp HCM'),
(1, 'Huỳnh Tấn Hoàng', '1974-01-20', '200513678', '0903691235', 'hoangthuong@gmail.com', 'Vinh'),
(5, 'Nguyễn Đức Thiện', '1980-03-20', '200800369', '0901258965', 'thienlll@gmail.com', 'Quảng Trị'),
(4, 'Bùi Văn Đức', '1985-01-21', '203526978', '0984568525', 'duc@gmail.com', 'Quảng Ngãi'),
(1, 'Nguyễn Ngọc Cẩm Trâm', '1999-04-29', '203126897', '090125874', 'tran1808@gmail.com', 'Đà Nẵng');

INSERT INTO nhan_vien (ho_ten, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi)
VALUES
('Võ Xuan huy', 1, 3, 3, '1990-04-24', '201451309', '15000000', '0931654586', 'huy@gmail.com', 'Quảng Ngãi'),
('Dương Văn ĐÔng', 2, 2, 3, '1991-08-17', '200356067', '20000000', '0903221456', 'dong@gmail.com', 'Đà Nẵng'),
('Vũ Thị Diễm', 3, 3, 4, '1993-02-07', '200457145', '10000000', '0372456789', 'diem@gmail.com', 'Đà Nẵng'),
('Trần Thị Ánh Nga', 4, 3, 2, '1999-02-14', '200567134', '11000000', '0372452123', 'nga@gmail.com', 'BÌnh Định'),
('Nguyễn Đình Thuận', 3, 3, 2, '2000-07-19', '201367212', '13000000', '0372458794', 'thuan@gmail.com', 'Đà Nẵng'),
('Võ Thị Cẩm Tiên', 4, 3, 3, '1996-10-24', '201458090', '13000000', '0964583142', 'tien@gmail.com', 'Đà Nẵng'),
('Trần Đại Tiến', 2, 2, 4, '1995-05-15', '201450023', '10000000', '090457841', 'daitien@gmail.com', 'Huế'),
('Nguyễn Thị Hằng', 4, 1, 3, '1994-09-20', '201098110', '1000000', '090466452', 'hang@gmail.com', 'Quảng Nam');

INSERT INTO dich_vu (ten_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_thue, id_loai_dich_vu, trang_thai)
VALUES
('Villa 1', 280, 3, 10, 4000000, 1, 1, 'Còn Trống'),
('Villa 2', 380, 3, 9, 6000000, 2, 1, 'Còn Trống'),
('Villa 3', 370, 3, 12, 5000000, 3, 1, 'Còn Trống'),
('House 1', 250, 2, 6, 3000000, 1, 2, 'Còn Trống'),
('House 2', 260, 2, 6, 2500000, 2, 2, 'Còn Trống'),
('Room 1', 70, 1, 3, 500000, 1, 3, 'Còn phòng'),
('Room 2', 60, 1, 2, 400000, 2, 3, 'Còn phòng');

INSERT INTO hop_dong (id_nhan_vien, id_khach_hang, id_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc,tong_tien)
VALUES
(1, 1, 1, '2021-08-21', '2021-09-21', 2000000,7000000),
(2, 2, 2, '2019-10-12', '2020-01-18', 3000000,6000000),
(4, 3, 2, '2020-06-09', '2020-09-09', 2000000,5000000),
(4, 4, 5, '2021-10-12', '2021-12-12', 3000000,6000000),
(2, 4, 5, '2020-11-11', '2021-02-02', 4000000,4000000),
(3, 3, 6, '2019-11-21', '2020-01-21', 3000000,15000000),
(6, 2, 7, '2020-10-01', '2020-10-31', 2000000,10000000),
(5, 4, 6, '2020-04-10', '2020-05-10', 2000000,12000000),
(3, 7, 1, '2019-12-01', '2020-03-10', 3000000,11000000),
(2, 6, 5, '2019-10-01', '2020-10-31', 1000000,30000000),
(1, 3, 4, '2018-12-07', '2021-05-27', 1000000,50000000),
(2, 1, 7, '2019-10-15', '2020-11-28', 2000000,20000000),
(1, 2, 6, '2018-03-15', '2021-03-27', 3000000,45000000);

INSERT INTO hop_dong_chi_tiet (id_hop_dong, id_dich_vu_di_kem, so_luong)
VALUES
(1,1,1),
(2,1,2),
(3,3,2),
(4,1,3),
(5,4,3),
(6,1,2),
(7,3,2),
(8,4,2),
(9,2,2),
(10,2,2),
(11,1,2),
(13,2,3);


