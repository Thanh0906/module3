-- câu lệnh sử dụng để chọn database mong muốn làm việc
USE demo_use_sql;

-- tạo table
create table student(
id int,
`name` varchar(100),
age int,
address varchar (100)
);
-- thêm dữ liệu vào table
	insert into student (id,name,age,address)
	value(1,'Thanh',20,'QUANGNGAI');
    -- hiển thị dữ liêu của table student
    select * from student;
    -- hiển thị dữ liệu hành thứ 1 của table student
    select id from student;
    -- thêm nhiều dữ liệu vào cùng lúcache index
    insert into student (id,name,age,address)
    value 
    (1,'tuan',20,'da nang'),
    (2,'thien',20,'ha noi'),
    (3,'tan',21,'da nang'),
    (4,'nhat',20,'hue');
    -- updete dữ liêu
    update student
    set address = 'sai gon'
    where id =2;