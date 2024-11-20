--#1

SELECT
employees.emp_no,employees.last_name, employees.first_name, employees.sex, salaries.salary

FROM
employees

INNER JOIN salaries ON employees.emp_no = salaries.emp_no

;

--#2

SELECT
employees.first_name, employees.last_name, employees.hire_date

FROM
employees

WHERE hire_date BETWEEN '1/1/86' AND '12/31/86'
;

--#3

SELECT 
dept_manager.dept_no, 
departments.dept_name AS "Department Name", 
dept_manager.emp_no AS "Employee Number", 
employees.last_name AS "Last Name",
employees.first_name AS "First Name"


FROM dept_manager


LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no


LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no
;


--#4

SELECT 

dept_emp.dept_no AS "Department Number",
employees.emp_no AS "Employee Number",
employees.last_name AS "Last Name",
employees.first_name AS "First Name",
departments.dept_name AS "Department Name"


FROM dept_emp

LEFT JOIN employees ON dept_emp.emp_no = employees.emp_no

LEFT JOIN departmentS ON dept_emp.dept_no = departments.dept_no
;

--#5
SELECT employees.first_name, employees.last_name, employees.sex

FROM employees

WHERE employees.first_name = 'Hercules'

AND

employees.last_name LIKE 'B%'
;

--#6

SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name

FROM departments
INNER JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no

INNER JOIN (
	SELECT employees.emp_no, employees.last_name, employees.first_name
	FROM employees
)employees
ON dept_emp.emp_no = employees.emp_no

WHERE departments.dept_name = 'Sales' 
or departments.dept_name = 'Development'
;













