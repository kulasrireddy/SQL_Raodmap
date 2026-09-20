use placement_list;

--  Revision od 0 to 3 days
-- q1
select * from students
where cgpa  > 9.40;

-- q2
select * from students
where age between 22 and  26;

-- q3
select * from students
where department in  ("MCA","MSc");

-- q4
select name from students
where name like "D%";

-- q5
select * from students
   order by cgpa desc
   limit 2;
   
   
-- q6
select count(*) from students;

-- q7
select department,avg(cgpa) as avg_std
 from students
 group by department;
 
 -- q8
 select department, count(*)
 from students
 group by department
 having count(*) >= 2;
 
 -- q9
select department, count(*) as stds,
       avg(cgpa) as avg_cgpa,
       max(cgpa) as max_cgpa
       from students
where department in ("MCA","MSc","Btech")
group by department
having avg_cgpa > 9.40
order by avg_cgpa desc;

-- day 4 queries

-- q1
update students
set cgpa = 9.75
where std_id = 2;

-- q2
update students
set age = 24,
department = "MCA"
where  std_id = 3;

-- q3
delete from students
where std_id = 4;

-- q4
alter table  students
add email varchar(100);

-- q5
alter table students
modify email varchar(150);

-- q6
alter table students
rename column email to email_address;

-- q7
alter table students
add city varchar(50);

-- q8
alter table students
drop column city;

-- q9 
truncate table students;

-- q10
drop table students;

-- UPDATE → data
-- ALTER  → structure
-- DELETE → selected/all rows
-- TRUNCATE → all rows, table remains
-- DROP → table itself disappears


       
       


