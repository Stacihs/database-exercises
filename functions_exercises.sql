use employees;

select first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya') order by first_name;

select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya') order by first_name, last_name;

select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya') order by last_name, first_name;

select emp_no, first_name, last_name from employees
where last_name like ('E%')order by emp_no;

select emp_no, first_name, last_name from employees
where last_name like ('e%') or last_name like ('%e') order by emp_no;

select emp_no, CONCAT(first_name, ' ', last_name ) from employees
where last_name like ('e%') and last_name like ('%e') order by emp_no;

select emp_no, first_name, last_name from employees
where last_name like ('E%') order by emp_no desc;

select emp_no, first_name, last_name from employees
where last_name like ('e%') or last_name like ('%e') order by emp_no desc;

select emp_no, CONCAT(first_name, ' ', last_name ) from employees
where last_name like ('e%') and last_name like ('%e') order by emp_no desc;


SELECT * from employees where month(birth_date) = 12 and day(birth_date) = 25;

SELECT * from employees where year(hire_date) BETWEEN 1990 AND 1999 AND month(birth_date) = 12 and day(birth_date) = 25;

SELECT * from employees where year(hire_date) BETWEEN 1990 AND 1999 AND month(birth_date) = 12 and day(birth_date) = 25 ORDER BY birth_date, hire_date desc;

SELECT DATEDIFF(CURDATE(), hire_date) FROM employees WHERE year(hire_date) LIKE '19%' AND month(birth_date) = 12 AND day(birth_date) = 25;
