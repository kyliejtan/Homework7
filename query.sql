-- List the following details of each employee: employee number, last name, first name, gender, and salary. --
SELECT employees.emp_no, last_name, first_name, gender, salary
FROM employees
JOIN salary ON
employees.emp_no = salary.emp_no
ORDER BY employees.emp_no
;
-- List employees who were hired in 1986. --
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE CAST (hire_date AS text) LIKE '%86%'
;
-- List the manager of each department with the following information: department number, department name, the manager's employee number, -- 
-- last name, first name, and start and end employment dates. --
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, 
		employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
JOIN departments
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;
-- List the department of each employee with the following information: employee number, last name, first name, and department name. --
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;
-- List all employees whose first name is "Hercules" and last names begin with "B." --
SELECT *
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name LIKE 'B%';
-- List all employees in the Sales department, including their employee number, last name, first name, and department name. --
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales';
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name. --
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. --
SELECT employees.last_name, COUNT(employees.last_name)
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT(employees.last_name) DESC;