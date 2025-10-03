-- Create database
CREATE DATABASE mock_test_db;
USE mock_test_db;

-- Table: employees
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2)
);
select * from employees;

INSERT INTO employees (name, department, salary) VALUES
('Alice', 'HR', 45000),
('Bob', 'IT', 60000),
('Charlie', 'Finance', 75000),
('David', 'IT', 65000),
('Eva', 'Marketing', 50000),
('Frank', 'Finance', 80000),
('Grace', 'HR', 55000);

-- Table: students
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO students (name, marks) VALUES
('John', 85),
('Mia', 90),
('Sam', 70),
('Sophia', 95),
('Leo', 60);

-- Table: products
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_name, price) VALUES
('Laptop', 55000),
('Phone', 30000),
('Tablet', 20000),
('Monitor', 15000),
('Keyboard', 2000);

-- Table: orders
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO orders (customer_id, order_date, amount) VALUES
(1, '2025-09-10', 20000),
(2, '2025-09-11', 30000),
(1, '2025-09-15', 15000),
(3, '2025-09-20', 5000),
(2, '2025-09-22', 25000),
(3, '2025-09-25', 7000);

-- Table: customers
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    phone_number VARCHAR(15) UNIQUE,
    gender ENUM('M','F')
);

INSERT INTO customers (name, phone_number, gender) VALUES
('Ravi', '9876543210', 'M'),
('Anita', '9123456780', 'F'),
('Suresh', '9988776655', 'M');
