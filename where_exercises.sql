use employees;

select emp_no, first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select emp_no, first_name, last_name from employees
where last_name like ('E%');

select emp_no, first_name, last_name from employees
where last_name like ('%q%');

select emp_no, first_name, last_name from employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';

select emp_no, first_name, last_name, gender from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M';

select emp_no, first_name, last_name from employees
where last_name like ('e%') or last_name like ('%e');

select emp_no, first_name, last_name from employees
where last_name like ('e%') and last_name like ('%e');

select emp_no, first_name, last_name from employees
where last_name like ('%q%') and last_name not like ('%qu%');

