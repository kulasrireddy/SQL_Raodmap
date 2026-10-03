use student_department;

-- q1
-- select name as student_name,
-- 	dept as department_name
-- from student as s
-- cross join department as d;

-- q2
select s.name as student_name,
       d.dept as department,
       s.cgpa as CGPA
from student as s
left join department as d
on s.id = d.id;

-- q3
-- select d.dept as department ,
-- 	count(s.id) as total_students,
--     round(avg(s.cgpa),2) as average_students,
--     max(s.cgpa) as highest_CGPA,
--     min(s.cgpa) as lowest_CGPA
-- from department AS d
-- LEFT join student as s
-- on s.id = d.id
-- where s.age >= 26
-- group by d.dept
-- having count(s.id) >= 2
-- order by average_students desc
-- limit 2;

SELECT d.dept AS department,
       COUNT(s.id) AS total_students,
       ROUND(AVG(s.cgpa), 2) AS average_cgpa,
       MAX(s.cgpa) AS highest_cgpa,
       MIN(s.cgpa) AS lowest_cgpa
FROM department AS d
LEFT JOIN student AS s
ON s.id = d.id
WHERE s.age >= 22
GROUP BY d.dept
HAVING COUNT(s.id) >= 2
ORDER BY average_cgpa DESC
LIMIT 2;