--#1 - List the employee number, last name, first name, sex, and salary of each employee.

SELECT
employees.emp_no,employees.last_name, employees.first_name, employees.sex, salaries.salary

FROM
employees

INNER JOIN salaries ON employees.emp_no = salaries.emp_no

;

--#2 - List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT
employees.first_name, employees.last_name, employees.hire_date

FROM
employees

WHERE hire_date BETWEEN '1/1/86' AND '12/31/86'
;

-- #3 - List the manager of each department along with their: 
-- 1)department number - 2) department name - 3) employee number - 4) last name - 5) first name
  

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


--#4 - List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

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

--#5 - List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT employees.first_name, employees.last_name, employees.sex

FROM employees

WHERE employees.first_name = 'Hercules'

AND

employees.last_name LIKE 'B%'
;

--#6 - List each employee in the Sales department, including their employee number, last name, and first name.

SELECT 
dept_emp.emp_no,
employees.last_name,
employees.first_name

FROM dept_emp

INNER JOIN departments
on dept_emp.dept_no = departments.dept_no

INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no

WHERE departments.dept_name = 'Sales'
;

--#7 - List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

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


--#8 - List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


SELECT
employees.last_name,
COUNT (last_name) AS "Count of Last Name"

FROM employees

GROUP BY employees.last_name
ORDER BY "Count of Last Name" DESC
;












