-- Find employees with salary greater than 70,000
    
	select * from emp
    where salary >7000;
-- Find employees with salary less than or equal to 50,000
    select * from emp 
    where salary < 50000 or salary=50000;
-- Find employees hired after 2020-01-15
   select * from emp 
   where hire_date = "2020-01-15";

-- Find employees whose department is 'IT'
   select * from emp 
   where department="IT";
-- Find employees not in HR department
    select * from emp 
    where department !=  "HR";
use cases;
-- Find active employees in IT department
 select * from emp 
 where status="active" and department="IT";
-- Find employees in HR or Sales department
 select * from emp 
 where department = "HR" or department="sale";
-- Find employees in IT but not Active
  select * from emp 
  where status !="active";


-- Find employees with salary between 60,000 and 80,000
  select * from emp 
  where salary  between 60000 and 80000;
-- Find employees hired between 2020-01-01 and 2022-12-31
 select * from emp 
 where hire_date between "2020-01-01" and "2022-12-31";
 

-- Find employees in HR, Finance, or IT department
select * from emp 
where department in ("HR","Finance","IT");
-- Find employees whose status is Active or On Leave
select * from emp 
where status in ("Active","On leave");


-- Find employees whose name starts with 'A'
   Select * from emp 
   where emp_name like "A%";
-- Find employees whose job title contains Team Lead
   select * from emp 
  -- where job_title ="Team Lead";
   where job_title like "Team Lead";
-- Find employees whose name ends with 'n'
   select * from emp 
   where emp_name like "%n";
   
-- Find employees where job_title is NULL
select * from emp 
where job_title is  null;
-- Find employees where job_title is not NULL
select * from emp 
where job_title is not  null;
-- List employees ordered by salary (highest first)
select * from emp 
where salary 
order by salary desc;
-- List employees ordered by department, then by name
select * from emp 
order by department,emp_name;

-- Show top 5 highest paid employees
    select * from emp 
    where salary 
    order by salary desc
     limit 5;
-- Show next 5 employees after skipping first 5
SELECT *  
FROM emp  
LIMIT 5 offset 5;

-- List unique departments 
select distinct department from emp ;
-- List unique job titles
  select distinct job_title from emp ;



create table emp2(
emp_id int auto_increment primary key,
ename varchar(50) not null,
department varchar(50) not null,
salary decimal(10,2) check(salary>0),
job_title varchar(50) not null);
 select * from emp2;