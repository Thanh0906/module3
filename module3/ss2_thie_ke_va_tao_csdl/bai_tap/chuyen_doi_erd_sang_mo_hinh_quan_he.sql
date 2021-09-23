CREATE DATABASE quan_li_don_hang;
USE quan_li_don_hang;
CREATE TABLE phieu_xuat(
so_px INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ngay_xuat DATE
);

CREATE TABLE vat_tu(
ma_vt INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ten_vt VARCHAR(60) NOT NULL
);
CREATE TABLE chi_tiet_phieu_xuat(
so_px INT ,
ma_vt INT ,
PRIMARY KEY (so_px , ma_vt),
dg_xuat DOUBLE NOT NULL,
sl_xuat INT NOT NULL,
FOREIGN KEY (so_px) REFERENCES phieu_xuat (so_px),
FOREIGN KEY (ma_vt) REFERENCES vat_tu (ma_vt)
);	
CREATE TABLE phieu_nhap(
so_pn INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ngay_nhap DATE
);
CREATE TABLE chi_tiet_phieu_nhap(
ma_vt INT,
so_pn INT ,
PRIMARY KEY(ma_vt,so_pn),
dg_nhap DOUBLE NOT NULL,
sl_nhap INT NOT NULL,
FOREIGN KEY(so_pn) REFERENCES phieu_nhap(so_pn),
FOREIGN KEY(ma_vt) REFERENCES vat_tu(ma_vt)
);
CREATE TABLE don_dh(
so_dh INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ngay_dh DATETIME
);
CREATE TABLE chi_tiet_don_dat_hang(
ma_vt INT,
so_dh INT ,
PRIMARY KEY(ma_vt,so_dh),
FOREIGN KEY(ma_vt) REFERENCES vat_tu(ma_vt),
FOREIGN KEY (so_dh) REFERENCES don_dh(so_dh)
);
CREATE TABLE nhacc(
ma_ncc INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ten_ncc VARCHAR(40) NOT NULL,
dia_chi VARCHAR(50) NOT NULL,
sdt VARCHAR(10) NOT NULL
);
CREATE TABLE cung_cap(
so_dh INT,
ma_ncc INT,
PRIMARY KEY(so_dh,ma_ncc),
FOREIGN KEY(so_dh) REFERENCES don_dh(so_dh),
FOREIGN KEY (ma_ncc) REFERENCES nhacc(ma_ncc)
);