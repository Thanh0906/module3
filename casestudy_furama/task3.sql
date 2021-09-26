use furama_database;
-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 
-- đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
 
SELECT *
FROM khach_hang
WHERE
    (TIMESTAMPDIFF(YEAR,
        ngay_sinh,
        CURDATE()) BETWEEN 18 AND 50)
        AND (dia_chi = 'Đà Nẵng'
        OR dia_chi = 'quảng trị');
 