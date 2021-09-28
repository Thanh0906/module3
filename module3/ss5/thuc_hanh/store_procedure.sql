use classicmodels;

-- tạo 
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
  SELECT * FROM customers;
END //
DELIMITER ;

-- cách gọi
call findAllCustomers();

-- không có lệnh sửa
-- lệnh drop dùng để xóa đi 
DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers`//
CREATE PROCEDURE findAllCustomers()
BEGIN
SELECT * FROM customers where customerNumber = 175;
END //
