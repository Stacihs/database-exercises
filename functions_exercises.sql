use hippo_staci;

select emp_no, first_name, last_name from employees
where first_name  in ('Irena', 'Vidya', 'Maya');

select emp_no, first_name, last_name from employees
where last_name  like 'E%';

select emp_no, first_name, last_name from employees
where last_name  like '%q%';

select emp_no, first_name, last_name from employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';

select emp_no, first_name, last_name from employees
where last_name like 'e%' or last_name like '%e';

select CONCAT(first_name, ' ', last_name), first_name, last_name from employees
where last_name like 'e%' and last_name like '%e';

select emp_no, first_name, last_name from employees
where last_name like '%q%' and last_name not like '%qu%';

select emp_no, first_name, last_name, gender from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M';

SELECT * from employees where month(birth_date) = 12 and day(birth_date) = 25;

SELECT * from employees where year(hire_date) BETWEEN 1990 AND 1999 AND month(birth_date) = 12 and day(birth_date) = 25;

SELECT * from employees where year(hire_date) BETWEEN 1990 AND 1999 AND month(birth_date) = 12 and day(birth_date) = 25 ORDER BY birth_date desc;

SELECT DATEDIFF(hire_date, CURDATE()) FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999 AND month(birth_date) = 12 AND day(birth_date) = 25;









select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya') order by first_name;


select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya') order by first_name, last_name;


select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya') order by last_name, first_name;


select emp_no, first_name, last_name from employees
where last_name like ('E%')order by emp_no;

select emp_no, first_name, last_name from employees
where last_name like ('E%') order by emp_no desc;