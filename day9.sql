use emp_manager;

-- q1
select  e.name as employee, m.name as manager
from employee as e
left join employee as m
on e.manager_id = m.emp_id; 

-- q2
use student_department;
select d.dept as department,
       count(s.id) as total_students,
       round(avg(s.cgpa),2) as average_cgpa
from department as d
left join student as s
on  s.id = d.id
group by d.dept;

-- q3
select * from student;
