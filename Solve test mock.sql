-- 📘 MySQL Mock Test

-- ========================
-- Part A: MCQs (Choose the correct answer)
-- ========================

-- 1) Which command is used to show all databases in MySQL?
--    a) SHOW ALL DATABASES;  This is Ans 
       
--    b) SHOW DATABASES;
--    c) LIST DATABASES;
--    d) SELECT DATABASES;

-- 2) Which data type is best suited for storing prices like 123.45?
--    a) INT
--    b) DECIMAL
--    c) FLOAT             This Is Ans 
--    d) VARCHAR

-- 3) What is the default port number of MySQL?
--    a) 1521
--    b) 1433
--    c) 3306     ANS is this 
--    d) 8080

-- 4) Which clause is used to filter rows in SQL?
--    a) WHERE    Here is ans 
--    b) HAVING
--    c) GROUP BY
--    d) ORDER BY

-- 5) Which of the following creates a new table from another table’s structure only (without data)?
--    a) CREATE TABLE new_table LIKE old_table;
--    b) CREATE TABLE new_table AS old_table;
--    c) COPY old_table TO new_table;
--    d) INSERT INTO new_table SELECT * FROM old_table; Ans is this 

-- ========================
-- Part B: Query Writing
-- ========================

-- 6) Write a query to display all employees from the table employees whose salary is greater than 50,000.
   select * from employees
where salary >50000;

-- 7) Write a query to find the second highest salary from a table employees(salary).
select * from (
select *, 
rank() over (order by salary desc) as rank_sal 
from employees) as rank_t
where rank_sal in (1,2,8,7);

-- 8) Create a table students with columns:
--    - id (INT, primary key, auto increment)
--    - name (VARCHAR(50))
--    - marks (INT)
create table students(stud_id int primary key auto_increment,name varchar (20) not null ,marks int(30));
select * from students;
-- 9) Write a query to count how many employees work in each department from employees(department, emp_id).
select distinct count(*) as count_, department 
from employees 
group by department;

-- 10) Write a query to update the price of a product by 10% in products(product_id, price) table.
select *from products;

update products set price = 20000 where product_id = 1;


-- ========================
-- Part C: Scenario-Based
-- ========================

-- 11) You have a table orders(order_id, customer_id, order_date, amount). 
--     Write a query to find the total sales for each customer.
      SELECT * FROM ORDERS;
      SELECT customer_id,sum(amount) 
      from orders 
      group by customer_id;

-- 12) A column phone_number in customers table should always have unique values. 
--     Which SQL constraint will you apply?
alter table orders add column num int unique not null;

-- 13) Suppose you accidentally deleted all rows from a table but not the table itself. 
--     Which command was used?

-- 14) You want to retrieve all employees whose names start with ‘A’. 
--     Write the query.
 select * from employees 
 where name like "A%";
 
 

-- 15) If you want to allow only valid values like 'M' and 'F' in a column gender, 
--     which constraint should you use?
