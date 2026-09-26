use student_department;

-- Right Join
-- right join keep the all records from right table, 
-- and matching records rows from left table 
-- if no matching from left table the put as null to that col

-- q1
select name, dept
from student as s
right join department as d
on s.id = d.id;

-- q2
select name, dept
from student as s
right join department as d
on s.id = d.id
where age > 22;

-- q3
select dept, name
from student as s
right join department as d
on s.id = d.id
order by dept;