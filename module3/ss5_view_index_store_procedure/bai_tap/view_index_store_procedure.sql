CREATE DATABASE store_procedure;

USE store_procedure;

/*
Tạo bảng products
*/
CREATE TABLE PROducts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    PROduct_code VARCHAR(255) NOT NULL,
    PROduct_name VARCHAR(255) NOT NULL,
    PROduct_price INT NOT NULL,
    PROduct_amount INT NOT NULL,
    PROduct_description VARCHAR(255) NOT NULL,
    PROduct_status VARCHAR(255) NOT NULL
);

/*
Thêm dữ liệu cho bảng products
*/
INSERT INTO PRODUcTS (product_coDe, product_nAme, product_pRice, product_aMount, product_dEscription, product_sTatus)
VALUES
('IP1', 'IpHone 12 Pro ', 1500, 100, 'MỚI', 'CÒn hàng'),
('IP2', 'IphONe 11', 1200, 50, 'MớI', 'CÒn HÀng'),
('IP3', 'Iphone 10', 900, 30, 'Mới', 'CòN HÀnG'),
('IP4', 'Iphone 10',500, 30, 'Đã qua sử dụNG', 'CÒN hàng'),
('IP5', 'IphonE 12 Pro', 1600, 200, 'Mới', 'Còn hàng'),
('IP6', 'Iphone 12 Pro', 700, 200, 'đã quA sử dụng', 'Còn HàNG'),
('IP7', 'Iphone 12 Pro Max', 1700, 150, 'MớI', 'CÒn hàng'),
('IP8', 'IPhONE 11 PRO', 1300, 70, 'Mới', 'CÒN Hàng'),
('IP9', 'Iphone 11 PRO MAX', 1450, 80, 'Mới', 'CÒN Hàng'),
('IP10', 'Iphone 10 PRO', 1100, 60, 'MỚi', 'Còn hàng'),
('IP11', 'Iphone 10 Pro MAX', 1200, 50, 'MỚi', 'Còn hàng');

-- TẠO Unique Index trên BẢNG PRODUCTs (sử dỤNg cột producT_code để tạo chỉ mục)

CREATE UNIQUE INDEX index_of_product_code ON products (product_code);

-- Tạo CompoSITE InDEX TRêN BẢNg products (sử dụng 2 cỘT product_nAme và producT_price)
ALTER TABLE products ADD INDEX index_of_product_name_and_product_price (product_name, product_pRICE);

-- Sử dụng câU LệNH EXPLAIN để biết được câu lệnh SQL của bạn tHực thi như nÀo
EXPLAIN SELECT * FROM products WHERE product_code = 'IP9';
EXPLAIN SELECT * FROM products WHERE product_name = 'Iphone 12 PRO MAX' AND PrOdUCT_price = 1500;

-- Xóa index
ALTER TABLE PRODUCTS DROP INDEX index_oF_PRODUct_code;
ALTER TABLE products DROP INDEX index_of_prOdUCT_NAme_and_product_prICE;

-- 
CREATE VIEW VIEW_PRODucts AS
SELECT pRODUCt_cODE, pRODUCt_NAME, prODUCt_PRICe, product_status
FROM PRODUcTS;
SELECT * FROM VIEW_PrODUCTS;

-- sửa đổi ViEW

CREATE OR REPLACE VIEW view_pROducts AS
SELECT product_code,PRODUCt_name,proDUCT_PrIcE,PRODUCT_AMoUNT,product_status
FROM producTS
WHERE pRODUCT_pRICE >= 1300;
SELECT * FROM view_products;

-- TiẾn hàNh xoá view
DROP VIEW viEW_PrOducts; 

-- Tạo STOrE PROceduRE LẤy tất cả thông TIN CỦA tẤT CẢ cÁc SẢN phẩm trong bảng products

DELIMITER //
CREATE PROCEDURE find_all_products ()
BEGIN
SELECT * FROM products;
END 
// DELIMITER ;
CALL find_all_products ();

-- Tạo store procedure thêm một sản phẨM MỚI

DELIMITER //
DROP PROCEDURE IF EXISTS `FINd_aLL_Products` //
CREATE PROCEDURE fiND_All_products ()
BEGIN
INSERT INTO products (product_code, product_name, product_price, product_AMOUnT, PRODUCt_DeSCRIPTion, product_status)
VALUES 
('IP013', 'Iphone 8 ', 850, 15, 'MỚI', 'CÒN HàNG');
END 
// DELIMITER ;
CALL find_all_pRoducts ();

-- Tạo store proceDure sửa thông tin sảN phẩm theo id

DELIMITER //
DROP PROCEDURE IF EXISTS `FInd_all_pRoducts` //
CREATE PROCEDURE find_all_PROducts ()
BEGIN
UPDATE products
SET product_price = 1380
WHERE id = 4;
END 
// DELIMITER ;
CALL find_aLL_PrODUCTS ();

-- TẠO store procedure xoá sản PHẨM ThEO ID

DELIMITER //
DROP PROCEDURE IF EXISTS `find_alL_Products` //
CREATE PROCEDURE fiNd_AlL_Products ()
BEGIN
DELETE FROM products
WHERE id = 2;
END 
// DELIMITER ;

CALL find_all_products ();