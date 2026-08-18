create database placement_list;
use placement_list;
show databases;

create table students(
     std_id int primary key auto_increment,
     name varchar(50) ,
     age int,
     cgpa float4,
     contact int,
     department varchar(25)
     );

show tables;
desc students;

-- first way to insert
-- Prefer the first approach because explicitly naming columns is clearer and safer.
insert into students(name, age,cgpa,contact,department)
values
("Deepikareddy",24,9.78,12345,"MCA"),
("reddy",22,9.54,098765,"BSc"),
("Deepika",21,9.78,15764,"BCA");


-- second way
insert into students values
   (NULL,"Deepika",23,9.42,1234567890,"MCA"),
   (NULL,"Deepak",26,9.45,125232212,"MSc"),
   (NULL,"Dinesh",26,9.50,987567890,"BTech"
   );
-- NULL tells MySQL to generate the auto-increment ID



select * from students;
select name,cgpa from students;
select name, department, age from students;
select department from students;
select Distinct department from students;

-- 1.query
select * from students
where cgpa > 9.43;

-- 2.query
select * from students
where department = "MCA";

-- 3.query
select name, cgpa from students
where age = 26;
	
-- 4.query
select * from students
where cgpa < 9.50;
     