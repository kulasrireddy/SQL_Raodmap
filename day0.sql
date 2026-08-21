create database restaurant_management;
show databases;
use restaurant_management;
create table restaurants(
restaurant_id int auto_increment PRIMARY KEY,
name varchar(50),
address text,
contact varchar(15));
show tables;

create table menu_items(
item_id int auto_increment primary key,
name varchar(255),
restaurant_id int,
price decimal(10,3)
);
DROP table restaurants;
drop table menu_items;