USE employees;

# DEPARTMENT AND DEPARTMENT MANAGER
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

# DEPARTMENTS MANAGED BY WOMEN
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F';

# SELECT title, COUNT(title) as 'TOTAL'
# FROM employees
# JOIN titles
# ON titles.emp_no = employees.emp_no
# JOIN dept_emp
# ON dept_emp.emp_no = employees.emp_no
# JOIN departments
# ON departments.dept_no = dept_emp.dept_no
# WHERE departments.dept_name = 'Customer Service' and dept_emp.to_date = '9999-01-01';



SELECT departments.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary AS Salary
FROM employees as e
         JOIN dept_manager
              ON dept_manager.emp_no = e.emp_no
         JOIN departments
              ON departments.dept_no = dept_manager.dept_no
         JOIN salaries
            ON salaries.emp_no = dept_manager.emp_no
WHERE salaries.to_date = '9999-01-01' and dept_manager.to_date = '9999-01-01';