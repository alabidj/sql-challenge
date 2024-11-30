DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;

CREATE TABLE titles (
	title_id varchar(10) PRIMARY KEY,
	title varchar(30) NOT NULL
);

-- Create the departments table
CREATE TABLE departments (
	dept_no varchar(10) PRIMARY KEY,
	dept_name varchar(30)
);

-- Create the employees table
CREATE TABLE employees (
	emp_no varchar(10) PRIMARY KEY,
	emp_title_id varchar(10) REFERENCES titles(title_id),
	birth_date date NOT NULL, 
	first_name varchar(45) NOT NULL,
	last_name varchar(45) NOT NULL,
	sex varchar(10) NOT NULL,
	hire_date date NOT NULL
);

-- Create the salaries table
CREATE TABLE salaries (
	emp_no varchar(10) REFERENCES employees(emp_no),
	salary int NOT NULL
);

-- Create the department employees table
CREATE TABLE dept_emp (
	emp_no varchar(10) REFERENCES employees(emp_no),
	dept_no varchar(10) REFERENCES departments(dept_no)
);

-- Create the department managers table
CREATE TABLE dept_manager (
	dept_no varchar(10) REFERENCES departments(dept_no),
	emp_no varchar(10) NOT NULL
);
