CREATE DATABASE employee_db;
USE employee_db;

-- TABLE: departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

-- TABLE: employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10,2),
    dept_id INT,
    joining_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- TABLE: attendance
CREATE TABLE attendance (
    att_id INT PRIMARY KEY,
    emp_id INT,
    present_days INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
