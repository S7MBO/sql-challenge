-- EmployeeSQL Schema

--Check to see if tables already exist and drop them
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--Create tables for my csv data
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

-- Query/Confirm each table and import was successful
SELECT * FROM departments;


CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

-- Query/Confirm each table and import was successful
SELECT * FROM titles;


CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR, FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL     
);

-- Unable to import csv; changing db to compatible datestyle
ALTER DATABASE "EmployeeSQL" SET datestyle TO "ISO, MDY";

-- Query/Confirm each table and import was successful
SELECT * FROM employees;


CREATE TABLE dept_emp (
    emp_no INT, FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR, FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Query/Confirm each table and import was successful
SELECT * FROM dept_emp;


CREATE TABLE dept_manager (
    dept_no VARCHAR, FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INT, FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Query/Confirm each table and import was successful
SELECT * FROM dept_manager;


CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL
);

-- Query/Confirm each table and import was successful
SELECT * FROM salaries;
