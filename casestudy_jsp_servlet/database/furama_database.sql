
CREATE DATABASE furama_database;
USE furama_database;

CREATE TABLE position (
    position_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(45) NOT NULL
);

CREATE TABLE education_degree (
    education_degree_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    education_degree_name VARCHAR(45) NOT NULL
);

CREATE TABLE division (
    division_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    division_name VARCHAR(45) NOT NULL
);

CREATE TABLE `user` (
username VARCHAR(255) NOT NULL PRIMARY KEY,
`password` VARCHAR(255) NOT NULL
);

CREATE TABLE `role` (
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


CREATE TABLE customer_type (
    customer_type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_type_name VARCHAR(45) NOT NULL
);

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

CREATE TABLE service_type (
    service_type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    service_type_name VARCHAR(45) NOT NULL
);

CREATE TABLE rent_type (
    rent_type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rent_type_name VARCHAR(45) NOT NULL,
    rent_type_cost DOUBLE NOT NULL
);

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

INSERT INTO position (position_name)
VALUES
('Lễ tân'),
('Phục vụ'),
('Chuyên viên'),
('Giám sát'),
('Quản lý'),
('Giám đốc');

INSERT INTO education_degree (education_degree_name)
VALUES
('Trung cấp'),
('Cao đẳng'),
('Đại học'),
('Sau đại học');

INSERT INTO division (division_name)
VALUES
('Sale - Marketing'),
('Hành chính'),
('Phục vụ'),
('Quản lý');

INSERT INTO customer_type (customer_type_name)
VALUES
('Diamond'),
('Platinium'),
('Gold'),
('Silver'),
('Member');

INSERT INTO service_type (service_type_name)
VALUES
('Villa'),
('House'),
('Room');

INSERT INTO rent_type (rent_type_name, rent_type_cost)
VALUES
('Năm', 50000000),
('Tháng', 60000000),
('Ngày', 1000000),
('Giờ', 400000);

INSERT INTO attach_service (attach_service_name, attach_service_cost, attach_service_unit, attach_service_status)
VALUES
('Massage', 500000, 1, 'Còn chỗ'),
('Karaoke', 700000, 1, 'Còn chỗ'),
('Thức ăn', 400000, 1, 'Còn chỗ'),
('Nước uống', 80000, 1, 'Còn chỗ'),
('Thuê xe', 1000000, 1, 'Còn chỗ');

INSERT INTO `user`
VALUES
('Thanh', '123321'),
('Phước', '124432'),
('Tân', '132434'),
('Thiện', '131232'),
('Sang', '122322'),
('Huy', '213231');

