--  Queries Involving JOINs, Subqueries, or Correlated Subqueries (No direct GROUP BY or HAVING but complex filtering/joins)
 -- 59. Write a Query to display details of emps whose Sal is same as of (a) Employee Sal of EMP1 table; (b) ¾ Sal of any Mgr of EMP2 table; (c) The sal of any person with exp of 5 years belongs to sales dept of EMP3 table; (d) Any grade 2 employee of EMP4 table; (e) Any grade 2 and 3 employee working for sales dept or operations dept joined in 89?
-- 101. List the emp whose sal < his manager but more than any other manager?
         select count(*) from emp  
         where sal < ( select sal 
                        from emp 
                        where job =" manager") and sal >( select sal 
														   from emp 
                                                           where job ="manager");
				
-- 104. Find out emps whose salaries greater than salaries of their managers?

-- 105. List the managers who are not working under the president?
-- 106. List the records from emp whose deptno is not in dept?
-- 123. List the emps who joined in the company on the same date?
-- 124. List the details of the emps whose Grade is equal to one tenth of Sales Dept?
-- 140. Print the details of all the emps who are sub-ordinates to Blake?
-- 142. List the emps whose Mgr name is ‘Jones’ and also with his Manager name?
-- 143. Define a variable representing the expression used to calculate emps total annual remuneration and use it to find all emps who earn 30000 a year or more?
-- 146. Check whether all the emps numbers are unique?
-- 148. List the employee Name, Job, Annual Salary, deptno, Dept name and grade who earn 36000 a year or who are not CLERKS?
-- 150. Find out the emps who joined in the company before their Managers?
-- 151. List all the emps by name and number along with their Manager’s name and number. Also List KING who has no ‘Manager’.
-- 152. Find all the emps who earn the minimum Salary for each job wise in ascending order?
-- 153. Find all the emps who earn highest salary in each job type sorted descending?
-- 154. Find the most recently hired emps in each Dept order by Hiredate?
-- 155. List the employee name, Salary and Deptno for each employee who earns a salary greater than the average for their department order by Deptno?
-- 163. List the Deptno and their average salaries for departments with the average salary less than the averages for all departments?
-- 164. List out the Names and Salaries of the emps along with their manager names and salaries for those emps who earn more salary than their Manager?
-- 165. List out the Name, Job, Salary of the emps in the department with the highest average salary?
-- 218. List the emps whose job is same as Smith?
select * from emp 
  where job=(select job 
             from emp 
             where ename ="smith");
-- 220. List the emps whose job is same as either Allen or sal > Allen?
-- 227. List the emps belonging to Dallas or Chicago with the grade same as Adams or exp more than Smith?
