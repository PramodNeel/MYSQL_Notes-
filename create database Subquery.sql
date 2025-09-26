create database Subquery ;
use Subquery ;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE,
    Location VARCHAR(50),
    PerformanceScore INT
);

-- Insert 20 sample rows
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate, Location, PerformanceScore) VALUES
(1, 'John', 'Doe', 'IT', 70000, '2020-01-15', 'New York', 85),
(2, 'Jane', 'Smith', 'HR', 65000, '2019-03-20', 'Chicago', 90),
(3, 'Robert', 'Brown', 'Finance', 80000, '2018-11-01', 'Los Angeles', 77),
(4, 'Emily', 'Davis', 'Marketing', 60000, '2021-06-01', 'New York', 88),
(5, 'Michael', 'Wilson', 'IT', 72000, '2017-08-10', 'San Francisco', 92),
(6, 'Laura', 'Johnson', 'Finance', 85000, '2016-09-15', 'Chicago', 70),
(7, 'Daniel', 'Lee', 'HR', 68000, '2022-01-10', 'New York', 95),
(8, 'Anna', 'Taylor', 'Marketing', 61000, '2021-05-22', 'Los Angeles', 80),
(9, 'James', 'White', 'IT', 74000, '2020-12-30', 'New York', 86),
(10, 'Linda', 'Harris', 'Finance', 79000, '2019-10-12', 'San Francisco', 82),
(11, 'Chris', 'Martin', 'IT', 71000, '2020-03-01', 'Chicago', 75),
(12, 'Susan', 'Clark', 'HR', 66000, '2018-07-18', 'New York', 89),
(13, 'David', 'Allen', 'Finance', 83000, '2019-09-09', 'Los Angeles', 73),
(14, 'Karen', 'Young', 'Marketing', 62000, '2021-02-25', 'San Francisco', 91),
(15, 'Brian', 'Scott', 'IT', 75000, '2016-11-23', 'New York', 78),
(16, 'Nancy', 'Hall', 'HR', 67000, '2023-04-17', 'Chicago', 84),
(17, 'Kevin', 'Adams', 'Marketing', 63000, '2022-12-05', 'New York', 76),
(18, 'Barbara', 'Baker', 'Finance', 81000, '2020-04-13', 'Los Angeles', 87),
(19, 'Matthew', 'King', 'IT', 76000, '2017-07-21', 'Chicago', 93),
(20, 'Laura', 'Green', 'HR', 69000, '2018-01-11', 'San Francisco', 79);





select * from employees 
 where Salary >(select max(salary) 
             from employees 
               where Department="Hr");
               
               
               
                select * from employees
                 where Salary <(select avg(Salary)
                                from employees);