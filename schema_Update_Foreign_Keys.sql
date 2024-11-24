
ALTER TABLE dept_emp
	ADD CONSTRAINT fk_dept_emp_to_employees 
	FOREIGN KEY (emp_no) 
	REFERENCES employees(emp_no)
;

ALTER TABLE dept_emp
	ADD CONSTRAINT fk_dept_emp_to_departments
	FOREIGN KEY (dept_no) 
	REFERENCES departments(dept_no)
;

ALTER TABLE dept_manager
	ADD CONSTRAINT fk_dept_dept_manager_to_departments
	FOREIGN KEY (dept_no) 
	REFERENCES departments(dept_no)
;

ALTER TABLE dept_manager
	ADD CONSTRAINT fk_dept_manager_to_employees 
	FOREIGN KEY (emp_no) 
	REFERENCES employees(emp_no)
;

ALTER TABLE salaries
	ADD CONSTRAINT fk_salaries_to_employees 
	FOREIGN KEY (emp_no) 
	REFERENCES employees(emp_no)
;


-- Updating the NOT NULL constraints

ALTER TABLE dept_emp
	ALTER COLUMN emp_no SET NOT NULL,
	ALTER COLUMN dept_no SET NOT NULL
;


ALTER TABLE dept_manager
	ALTER COLUMN emp_no SET NOT NULL,
	ALTER COLUMN dept_no SET NOT NULL
;

ALTER TABLE salaries
	ALTER COLUMN emp_no SET NOT NULL
;


