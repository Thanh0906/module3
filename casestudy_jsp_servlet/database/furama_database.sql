drop database furama_database;
CREATE DATABASE furama_database;
USE furama_database;

CREATE TABLE position (
    position_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(45) NOT NULL
);
INSERT INTO position (position_name)
VALUES
('Lễ tân'),
('Phục vụ'),
('Chuyên viên'),
('Giám sát'),
('Quản lý'),
('Giám đốc');
CREATE TABLE education_degree (
    education_degree_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    education_degree_name VARCHAR(45) NOT NULL
);
INSERT INTO education_degree (education_degree_name)
VALUES
('Trung cấp'),
('Cao đẳng'),
('Đại học'),
('Sau đại học');


CREATE TABLE division (
    division_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    division_name VARCHAR(45) NOT NULL
);
INSERT INTO division (division_name)
VALUES
('Sale - Marketing'),
('Hành chính'),
('Phục vụ'),
('Quản lý');

CREATE TABLE `user` (
username VARCHAR(255) NOT NULL PRIMARY KEY,
`password` VARCHAR(255) NOT NULL
);
insert into user (username,password)
values('phuc', '123321'),
('doanh', '124432'),
('ly', '132434'),
('khuong', '131232'),
('lam', '122322'),
('tieu', '213231');


CREATE TABLE role (
role_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
role_name VARCHAR(255) NOT NULL
);

CREATE TABLE user_role (
    role_id INT NOT NULL,
    username VARCHAR(255) NOT NULL,
    FOREIGN KEY (role_id)
        REFERENCES `role` (role_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (username)
        REFERENCES `user` (username)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE employee (
	employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(45) NOT NULL,
    employee_birthday DATE NOT NULL,
    employee_id_card VARCHAR(45) NOT NULL,
    employee_salary DOUBLE NOT NULL,
    employee_phone VARCHAR(45) NOT NULL,
    employee_email VARCHAR(45) NOT NULL,
    employee_address VARCHAR(45) NOT NULL,
    position_id INT NOT NULL,
    education_degree_id INT NOT NULL,
    division_id INT NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,

    FOREIGN KEY (position_id)
        REFERENCES position (position_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (education_degree_id)
        REFERENCES education_degree (education_degree_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (division_id)
        REFERENCES division (division_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (username)
        REFERENCES `user` (username)
        ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO employee (employee_name, employee_birthday, employee_id_card, employee_salary, employee_phone,
employee_email, employee_address, position_id,education_degree_id,division_id,username) 
VALUES ('Nguyễn Phúc', '1995-05-18', '212124452', '15000000', '034823784', 'phuc@gmail.com', 'Đà Nẵng',
 3,2,2,'phuc'),
 ('Doanh Đoàn', '1991-02-26', '212124452', '10000000', '098024784', 'doanhdoan@gmail.com', 'Phú Yên',
 1,2,2,'doanh'),
 ('Lưu Ly', '1997-11-16', '212124452', '15000000', '036823784', 'luuly@gmail.com', 'Quảng Nam',
 3,2,2,'ly'),
 ('Khương Vân', '1993-08-20', '21223452', '13000000', '090134384', 'khuongvan@gmail.com', 'Đà Nẵng',
 2,2,2,'khuong'),
 ('Lâm Động', '1997-05-23', '212124452', '15000000', '036823784', 'lamdong@gmail.com', 'Hà Nội',
 3,3,4,'lam'),
 ('Tiêu Viêm', '1989-05-02', '21212421', '20000000', '034253784', 'tieuviem@gmail.com', 'Cần Thơ',
 3,4,4,'tieu');

CREATE TABLE customer_type (
    customer_type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_type_name VARCHAR(45) NOT NULL
);
INSERT INTO customer_type (customer_type_name)
VALUES
('Diamond'),
('Platinium'),
('Gold'),
('Silver'),
('Member');

CREATE TABLE customer (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(45) NOT NULL,
    customer_birthday DATE NOT NULL,
    customer_gender INT NOT NULL,
    customer_id_card VARCHAR(45) NOT NULL,
    customer_phone VARCHAR(45) NOT NULL,
    customer_email VARCHAR(45) NOT NULL,
    customer_address VARCHAR(45) NOT NULL,
    customer_type_id INT NOT NULL,
    FOREIGN KEY (customer_type_id)
        REFERENCES customer_type (customer_type_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);
insert into customer(customer_name,customer_birthday,customer_gender,customer_id_card,customer_phone,
customer_email,customer_address,customer_type_id)
values
('Dương Văn Đông','1995-04-23',1,'21532344','037245325','dong@gmail.com','Quảng Ngãi',1),
('Phan Đại Phước','1990-06-24',1,'214323532','0903255333','phuoc@gmail.com','quảng Nam',1),
('Trần Ngọc Tân','1992-07-27',1,'21312134','096052353','tan@gmail.com','Đà Nẵng',2),
('Nguyễn Đức Thiện','1999-02-20',1,'213324533','03723253353','thien@gmail.com','Hà nội',3),
('Huỳnh Ngọc Thanh','1995-06-09',1,'2131124214','0372125233','ngocthanh@gmail.com','da nang',2),
('Dương Quốc Huy','1997-10-17',1,'2133434','037845635','huy@gmail.com','da nang',1);



CREATE TABLE service_type (
    service_type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    service_type_name VARCHAR(45) NOT NULL
);
INSERT INTO service_type (service_type_name)
VALUES
('Villa'),
('House'),
('Room');


CREATE TABLE rent_type (
    rent_type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rent_type_name VARCHAR(45) NOT NULL,
    rent_type_cost DOUBLE NOT NULL
);
INSERT INTO rent_type (rent_type_name, rent_type_cost)
VALUES
('Năm', 50000000),
('Tháng', 60000000),
('Ngày', 1000000),
('Giờ', 400000);


CREATE TABLE service (
    service_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(45) NOT NULL,
    service_area INT NOT NULL,
    service_cost DOUBLE NOT NULL,
    service_max_people INT NOT NULL,
    rent_type_id INT NOT NULL,
    FOREIGN KEY (rent_type_id)
        REFERENCES rent_type (rent_type_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    service_type_id INT NOT NULL,
    FOREIGN KEY (service_type_id)
        REFERENCES service_type (service_type_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    standard_room VARCHAR(45) NOT NULL,
    description_other_convenience VARCHAR(45) NOT NULL,
    pool_area DOUBLE NOT NULL,
    number_of_floors INT NOT NULL
);
 insert into service (service_name,service_area,service_cost,service_max_people,rent_type_id, service_type_id,standard_room,
 description_other_convenience,pool_area,number_of_floors)
 values('Villa1',369,20000000,10,1,1,'Vip','',100,2),
 ('Villa2',340,170000000,7,2,1,'Vip','',60,2),
 ('Villa3',300,140000000,6,3,1,'Vip','',60,2),
 ('Home1',130,10000000,5,2,2,'Vip','',0,2),
 ('HOme2',150,8000000,4,1,2,'Vip','',0,1),
 ('Home3',110,2000000,3,3,2,'Vip','',0,1),
 ('Room1',50,2000000,2,3,3,'Vip','',0,0),
 ('Room2',60,2500000,2,4,3,'Normal','',0,0),
 ('Room3',75,3500000,2,2,3,'Vip','',0,0);

CREATE TABLE contract (
    contract_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    contract_start_date DATE NOT NULL,
    contract_end_date DATE NOT NULL,
    contract_deposit DOUBLE NOT NULL,
    contract_total_money DOUBLE NOT NULL,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    service_id INT NOT NULL,
    FOREIGN KEY (employee_id)
        REFERENCES employee (employee_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (service_id)
        REFERENCES service (service_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE attach_service (
    attach_service_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    attach_service_name VARCHAR(45) NOT NULL,
    attach_service_cost DOUBLE NOT NULL,
    attach_service_unit INT NOT NULL,
    attach_service_status VARCHAR(45) NOT NULL
);
INSERT INTO attach_service (attach_service_name, attach_service_cost, attach_service_unit, attach_service_status)
VALUES
('Massage', 500000, 1, 'Còn chỗ'),
('Karaoke', 700000, 1, 'Còn chỗ'),
('Thức ăn', 400000, 1, 'Còn chỗ'),
('Nước uống', 80000, 1, 'Còn chỗ'),
('Thuê xe', 1000000, 1, 'Còn chỗ');

CREATE TABLE contract_detail (
    contract_detail_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    contract_id INT NOT NULL,
    attach_service_id INT NOT NULL,
    FOREIGN KEY (contract_id)
        REFERENCES contract (contract_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (attach_service_id)
        REFERENCES attach_service (attach_service_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    quantity INT NOT NULL
);



















-- select* from service;
-- select* from service where service_id =?;
-- select * from customer
-- INSERT INTO customer(`customer_id`, `customer_name`, `customer_birthday`, `customer_gender`, `customer_id_card`, `customer_phone`,
 -- `customer_email`, `customer_address`, `customer_type_id`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);
