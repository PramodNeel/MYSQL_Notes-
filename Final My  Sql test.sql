-- =====================
-- 1. BASIC SELECT
-- =====================
-- Q1. Show all employees.
  select * from emp;
-- Q2. Show employee names and salaries.
select ename , sal from emp;
-- Q3. Show unique job roles.
 select distinct job from emp;
-- Q4. Show first 5 employees.
 select * from emp 
 order by empno asc
 limit 5;
-- Q5. Show employees with salary between 3000 and 6000.
  select * from emp 
  where sal between 3000 and 6000;

-- =====================
-- 2. WHERE CLAUSE
-- =====================
-- Q1. Show employees from department 10.
    select * from emp 
    where deptno =10;
-- Q2. Show employees earning more than 5000.
     select * from emp 
     where sal >5000;
-- Q3. Show employees who are managers.
     select  * from emp 
     where job ="manager";
-- Q4. Show employees whose name starts with 'A'.
     select * from emp 
     where ename like "A%";
-- Q5. Show employees not in department 20.
     select * from emp 
     where deptno !=20;

-- =====================
-- 3. ORDER BY
-- =====================
-- Q1. Show employees sorted by salary.
       select * from emp 
       order by sal asc;
-- Q2. Show employees sorted by salary in descending order.
       select * from emp 
       order by sal desc;
-- Q3. Show employees sorted by job then salary.
        select * from emp 
        order by sal and job ;
-- Q4. Show top 3 highest paid employees.
		select * from emp 
        order by sal desc
        limit 5;
-- Q5. Show employees sorted by name alphabetically.
	  select * from emp 
      order by ename asc;

-- =====================
-- 4. AGGREGATE FUNCTIONS
-- =====================
-- Q1. Show total salary of all employees.
        select sum(sal) as salary from emp;
-- Q2. Show average salary of employees.
select avg(sal) as avg_sal from emp;
-- Q3. Show highest salary.
  select max(sal) from emp;
-- Q4. Show lowest salary.
  select min(sal) from emp;
-- Q5. Show number of employees.
   select count(ename) as Employee from emp;

-- =====================
-- 5. GROUP BY
-- =====================
-- Q1. Show total salary department-wise.
      select deptno , sum(sal) as salary 
       from emp 
       group by deptno;
-- Q2. Show average salary department-wise.
 select deptno , avg(sal) as salary 
  from emp 
  group by deptno;
-- Q3. Show number of employees in each job role.
     select job , count(ename) as emp 
       from emp 
       group by job;
-- Q4. Show maximum salary department-wise.
 select deptno , max(sal) max_sal 
  from emp 
  group by deptno;
-- Q5. Show number of employees department-wise.
    select deptno , count(ename) as empcount 
    from emp 
    group by deptno ;

-- =====================
-- 6. HAVING CLAUSE
-- =====================
-- Q1. Show departments with total salary more than 20000.
select deptno , sum(sal) sal 
 from emp 
 group by deptno 
 having sal >2000;
-- Q2. Show jobs with more than 3 employees.
select job , count(ename) emp 
 from emp 
  group by job 
  having emp >3;
-- Q3. Show departments with average salary greater than 4000.
select deptno , avg(sal) sal
  from emp 
  group by deptno 
  having avg(sal) >4000;
-- Q4. Show jobs with maximum salary above 8000.
 select job , max(sal) sal 
 from emp 
 group by job 
 having sal >8000;
-- Q5. Show departments with less than 5 employees.
    select deptno , min(ename) emp 
     from emp 
     group by deptno 
     having emp <5;
     

-- =====================
-- 7. JOINS
-- =====================
-- Q1. Show employees with their department name.
select ename , dname , e.deptno 
 from emp e 
 left join dept d 
 on e.deptno =d.deptno ;
-- Q2. Show all employees and their department (including those without a department).
select ename 
 from emp e 
 left join dept d 
 on e.deptno=d.deptno;
-- Q3. Show all departments and employees (including departments with no employees).
-- Q4. Show employees with their manager names.
 select  e.ename as employee ,
          m.ename as manager
           from emp e 
           left join emp m  
           on e.mgr=m.empno;
-- Q5. Show employees with project details.

-- =====================
-- 8. SUBQUERIES
-- =====================
-- Q1. Show employees earning more than the average salary.
 select * from emp 
 where sal >( select avg(sal) avg_sal 
                from emp 
                );
-- Q2. Show employees who earn the maximum salary.
  select * from emp 
  where sal =(select max(sal) from emp);
-- Q3. Show employees working in the ‘Sales’ department.
select   ename , job , dname , e.deptno 
  from emp e 
   left join dept d 
   on e.deptno=d.deptno
    where d.dname = "sales";
-- Q4. Show employees earning more than employee ‘blake’.
   select ename , sal 
    from emp 
     where sal >(select sal 
                 from emp 
                 where  ename ="blake");
-- Q5. Show departments having more than 3 employees.
  select dname , count(*) employee 
     from emp e 
      left join dept d 
       on e.deptno=d.deptno
        group by dname 
            having employee >3;

-- =====================
-- 9. DDL (CREATE, ALTER, DROP)
-- =====================
-- Q1. Create a new table for students.
use pramod;
    create table students (  stud_id int primary key auto_increment not null unique ,
                              stud_name varchar(30) not null,
                               stud_marks  int not null,
                               std_div varchar(1) not null , 
                                email_id varchar (20) not null unique);
                                  select * from students;
-- Q2. Add a new column to the students table.
alter table students 
add city varchar(12) not null default("pune");
-- Q3. Modify a column size in the students table.
-- Q4. Drop a column from the students table.
 alter table students 
 drop column city;
-- Q5. Delete the students table.
                                  select * from students;


-- =====================
-- 10. DML (INSERT, UPDATE, DELETE)
-- =====================
-- Q1. Insert a record into the employees table.
-- Q2. Insert multiple records into the employees table.
-- Q3. Update salary of an employee.
-- Q4. Delete an employee from the table.
-- Q5. Increase salary of all employees by 10%.
