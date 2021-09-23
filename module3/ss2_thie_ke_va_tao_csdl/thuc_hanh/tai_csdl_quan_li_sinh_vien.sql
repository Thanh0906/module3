create database quan_li_sinh_vien;
use quan_li_sinh_vien;
create table class(
class_id int not null auto_increment primary key,
class_name varchar(60) not null,
start_date datetime,
status bit
);
create table student(
student_id int not null auto_increment primary key,
student_name varchar(30),
address varchar (50),
phone varchar(20),
status bit, 
class_id int not null
);
create table subject(
sub_id int not null auto_increment primary key,
sun_name varchar(30) not null,
credit tinyint not null default 1 check (credit >=1),
status bit default 1
);
create table mark(
mark_id int not null auto_increment primary key,
sub_id int not null unique,
student_id int not null unique,
mark float default 0 check(mark between 0 and 100),
exam_times tinyint default 1,
FOREIGN KEY (sub_id) REFERENCES subject (sub_id),
FOREIGN KEY (student_id) REFERENCES student (student_id)
);