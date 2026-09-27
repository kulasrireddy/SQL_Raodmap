
-- JOINS
-- A self join means joining table wihtin itself

create database emp_manager;
use emp_manager;
create table employee(
         emp_id int primary key,
         name varchar(32),
         manager_id int);

insert into employee
values 
(101,'Deepika',Null),
(102,'Surya',101),
(103,'Devi',102);

-- q1
select e.name as employee_name, m.name as manager_name
from employee as e
join employee as m
on e.manager_id = m.emp_id;

-- q2
use student_department;
select d.dept , s.name from student as s
right join department as d
on s.id = d.id;
