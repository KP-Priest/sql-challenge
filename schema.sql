CREATE TABLE employees (
emp_no integer,
emp_title_id VARCHAR(50),
birth_date DATE,
first_name VARCHAR(50),
last_name VARCHAR(50),
sex VARCHAR(1),
hire_date DATE,
PRIMARY KEY (emp_no)
);

COPY employees(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM '/Users/kp/Git/sql-challenge/employees.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM public.employees
ORDER BY emp_no ASC ;

CREATE TABLE departments (
dept_no VARCHAR(10),
dept_name VARCHAR (50),
PRIMARY KEY (dept_no)
);

COPY departments(dept_no, dept_name)
FROM '/Users/kp/Git/sql-challenge/employees.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM public.departments
ORDER BY dept_no ASC;

CREATE TABLE title(
title_id VARCHAR(10),
title VARCHAR,
PRIMARY KEY (title_id)
);

SELECT * FROM public.title
ORDER BY title_id ASC;

ALTER TABLE title RENAME TO titles;

CREATE TABLE salaries (
emp_no integer,
salary numeric
);

SELECT * FROM public.salaries
ORDER BY emp_no ASC;

CREATE TABLE dept_emp(
emp_no integer,
dept_no integer
);

ALTER TABLE dept_emp
ALTER COLUMN dept_no TYPE VARCHAR(10);

SELECT * FROM public.dept_emp
ORDER BY emp_no ASC;

CREATE TABLE dept_manager(
dept_no VARCHAR(10),
emp_no integer
);

SELECT * FROM public.dept_manager
ORDER BY emp_no ASC;


