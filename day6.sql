use student_department;

-- Left Join
-- left join keep the all records from left table, 
-- and matching records rows from right table 
-- if no matching from right table the put as null to that column


-- q1
select name, dept
from student as s
left join department as d
on s.id = d.id;

-- q2
select name
from student as s
left join department as d
on s.id = d.id
where dept is null;

-- q3
select name, dept
from student as s
left join department as d
on s.id = d.id
where s.age > 22;

-- q4
select name,age, dept 
from student as s
left join department as d
on s.id = d.id
order by age desc;

-- q5
select name, age from student as s
left join department as d
on s.id = d.id
where d.dept is null;

-- q6
select name, age, dept
from student as s
left join department as d
on s.id = d.id
where age > 22;

-- q7
select name, age, dept
from student as s
left join department as d
on s.id = d.id
where s.age > 22 and d.dept = 'MSc';

-- q8
select name, dept
from student as s
left join department as d
on s.id = d.id
where dept is null or dept = 'MCA';

-- q9
select name, age, dept
from student as s
left join department as d
on s.id = d.id
order by age desc, name asc;