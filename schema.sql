-- Drop table if exists --
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salary;
DROP TABLE IF EXISTS title;
-- Creating employees table --
CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender VARCHAR,
	hire_date DATE,
	PRIMARY KEY (emp_no)
);			
-- Creating departments table --
CREATE TABLE departments (
	dept_no VARCHAR(255) NOT NULL,
	dept_name VARCHAR(255),
	PRIMARY KEY (dept_no)
);
-- Creating dept_emp table --
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(255),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);	
-- Creating dept_manager table --
CREATE TABLE dept_manager (
	dept_no VARCHAR(255),
	emp_no INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);	
-- Creating salary table --
CREATE TABLE salary (
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);	
-- Creating title table --
CREATE TABLE titles (
	emp_no INT,
	title VARCHAR(255),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);	

