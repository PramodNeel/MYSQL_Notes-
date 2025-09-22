-- Q1: List employees with a row number based on salary (highest first).
use pramod;
    select ename , sal , row_number() over( order by sal desc) row_no from emp;
-- Q2: Assign row numbers to employees within each department based on salary.
   select ename, deptno , sal, 
          row_number() over(partition by deptno order by sal desc) as Row_No from emp;
-- Q3: Number employees in the order of their hiredate (earliest to latest).
            select ename , hiredate , 
            row_number() over (order by hiredate desc) as Rowno from emp;
-- Q4: Rank employees by salary across the whole company.
  select ename ,sal, rank() over (order  by sal desc) as Rank_ from emp;
-- Q5: Rank employees by salary within each department.
 select ename ,deptno,sal ,rank() over(  partition by deptno order by sal asc ) from emp;
-- Q6: Get the top 2 highest-paid employees in each department using RANK(). 
 create view top_3 as 
select * , 
rank() over (partition by deptno order by sal desc) as Rank_no 
 from emp ; 
 select * from top_2 
 where Rank_no <=2;
 


-- Q6: Get the top 2 highest-paid employees in each department using RANK()
SELECT ename, deptno, sal, Rank_
FROM (
    SELECT ename, deptno, sal,
           RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS Rank_
    FROM emp
) ranked_emps
WHERE Rank_ <= 2;

WITH ranked_emps AS (
    SELECT ename, deptno, sal,
           RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS Rank_
    FROM emp
)
SELECT ename, deptno, sal, Rank_
FROM ranked_emps
WHERE Rank_ <= 2;



-- Q7: Rank employees by commission across all departments.

-- Q8: Give dense ranks to employees by salary (whole company).
    select ename ,job ,dname, e.deptno,sal,
    dense_rank() over(partition by e.deptno order by sal) as sal_rank 
     from emp e
      left join dept d 
      on e.deptno=d.deptno
      ;
-- Q9: Dense rank employees within each department by hiredate (oldest first).
-- Q10: Find employees who have the 2nd highest salary in each department.

-- Q11: Compare the outputs of ROW_NUMBER(), RANK(), and DENSE_RANK() for employees in deptno = 20.
-- Q12: Find the 3rd highest salary in the company using a window function.
-- Q13: Get the top 2 salaries in each department without duplicates.
create view top_4 as 
select distinct *,
 rank()  over (partition by deptno order by sal desc) as rank_sal
  from emp;
    select * from top_4
     where rank_sal <=2;

