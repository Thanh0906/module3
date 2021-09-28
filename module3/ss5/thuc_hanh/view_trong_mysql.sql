use classicmodels;
-- tạo bảng ảo
CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM  customers;
-- lấy dữ liệu ra xem
select * from customer_views;
-- cập nhâp view
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';
-- xóa view
DROP VIEW customer_views;