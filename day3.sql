use placement_list;

-- Today is Aggregate Functions
-- COUNT
-- SUM
-- AVG
-- MIN
-- MAX
-- HAVING
-- diff b/t WHERE and HAVING

-- 1. query
select count(*) as total_students
from students;

-- 2.query
select count(*) as mca_students
from students
where department = 'MCA';

-- 3.query
select SUM(cgpa) as total_cgpa
from students;

-- 4.query
select AVG(cgpa) as mca_avg_cgpa
from students
where department = 'MCA';

-- 5.query
select MIN(age) as youngest_age,
       MAX(age) as  oldest_age
from students;

-- 6.query
select department, COUNT(*) as total_students
from students
group by department;

-- 7.query
select department, AVG(cgpa) as average_cgpa
from students
group by department;

-- 8.query
select department ,
	COUNT(*) as total_students,
    ROUND(AVG(cgpa),2) as average_cgpa,
    MAX(cgpa) as highest_cgpa
from students
group by department;  

-- 9.query
select department, 
     avg(cgpa) as average_cgpa
from students
group by department
having(average_cgpa) > 9.40;

-- 10.query
select department , count(*) as total_students
from students
where age between 22 and 26
group by department
having count(*) >= 2;

-- 11.query
select department,
     COUNT(*) as total_students,
     avg(cgpa) as average_cgpa,
     max(cgpa) as highest_cgpa
from students
where department in ('MCA', 'MSc','Btech')
group by department
having average_cgpa > 9.40
order by average_cgpa desc;
