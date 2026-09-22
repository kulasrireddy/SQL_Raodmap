create database student_department;
show databases;
use student_department;


-- INNER JOIN 
create table student(
               id  int primary key ,
               name varchar(50),
               age int);

insert into student(id, name, age)
values
(101,"Deepika",22),
(102,"Deepak",26),
(103,"Dinesh",26);

create table department( 
             id int primary key,
             dept varchar(50));
             
insert into department(id, dept)
values
(101,"MCA"),
(102,"MSc"),
(104,"BSc");     

-- q1
select * from student;   
select * from department;     

-- q2
select s.id,s.name, d.dept 
from student as s
inner join department as d
on s.id = d.id;

-- q3
select s.name 
from student as s
inner join department as d
on s.id = d.id
where d.dept = 'MCA';

-- q4
select s.name, d.dept
from student as s
inner join department as d
on s.id = d.id
where d.dept in ('MCA','MSc');



             