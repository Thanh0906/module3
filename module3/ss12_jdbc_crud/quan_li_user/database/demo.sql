create database demo;
use demo;
 create table users(
 id int  auto_increment primary key,
 name varchar(225) not null,
 email varchar(225) not null,
 country varchar(225) not null
 );
 insert into users(name,email,country)
 values
 ('thanh','thanh@gmailc.com','viet nam'),
 ('tuan','tuan@gmailc.com','viet nam'),
 ('suzuki','suzuki@gmailc.com','Japan'),
 ('yama','yama@gmailc.com','japan');