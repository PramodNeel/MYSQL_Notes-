-- having 

-- Find the department(s) with more than 3 employees.
select dept_id , count(*) as emp_count
from emp 
group by dept_id
having emp_count>3 ;

-- Find job titles with an average salary greater than 75,000.
select job_title , avg(salary) as avg_salary 
from emp 
group by job_title
having avg_salary > 75000 ;
-- Find job titles that have more than 2 employees and an average salary less than 80,000.	

-- List job titles where the maximum salary is greater than 90,000.
select job_title , max(salary) as max_sal
from emp 
group by job_title
having max_sal > 90000;

-- Show departments where the average salary of female employees is greater than 70,000.
select dept_id , gender , avg(salary) as avg_salary 
from emp 
group by dept_id , gender 
having avg_salary > 70000 and Gender = "F";