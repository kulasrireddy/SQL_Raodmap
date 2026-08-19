use placement_list;


-- 1.query
select * from students
where age >= 23 and cgpa > 9.40;

-- 2.query
select * from students
where department = 'MCA' or cgpa > 9.60;

-- 3.query
select * from students
where not age = 26; 
-- we can also use "!=" in place of not
-- we can also use "<>" in place of not

-- 4.query
select * from students
where department in ('MCA','Btech','MSc');
-- 'in' used to aviod mutiple "or's" in query
-- IN → Is this value present in this list

-- BETWEEN checks whether a value falls within a range.
select * from students
where age between 22 and 25;

-- ORDER BY is used to sort the result.
select * from students
order by cgpa desc;

-- LIMIT controls how many rows are returned.
select name, cgpa, department 
from students
order by cgpa desc
limit 2;

-- query
select name, cgpa, department
from students
where department = 'MCA'
order by cgpa desc
limit 2;

-- query
select name, age, cgpa, department from students
where age between 22 and 26 and department in ('MCA','MSc','Btech')
order by cgpa desc
limit 3;

-- LIKE is used for pattern matching with text.
-- LIKE 'D%' starts
-- LIKE '%a'ends
-- LIKE '%ika%'contains 'ika' anywhere

-- 1.query
select name,department from students
where name like "D%";

-- 2.query
select name, cgpa from students
where name like "%a";

-- 3.query
select name from students
where name like "%ee%";

-- 4.query 
-- '_' wildcard '_'  → exactly one character
-- based on given _ (underscores) it specify the characters
select name from students
where name like 'Deepik_';

-- 5. query
select name from students
where name like 'R___';

-- IS NULL : means no value / missing value.
-- IS NULL      → missing value
-- IS NOT NULL  → value is present

select name, contact, department
from students
where contact is null;


-- Final revision
select name, age, cgpa, department
from students
where contact is not null
and department in ('MCA','MSc','Btech')
and age between 22 and 26
and name like 'D%'
order by cgpa desc
limit 2; 