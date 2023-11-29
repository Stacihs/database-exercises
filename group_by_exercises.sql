USE hippo_staci;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e' GROUP BY last_name;

# SELECT first_name, last_name FROM employees
# WHERE last_name LIKE 'e%' AND last_name LIKE '%e' GROUP BY first_name;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT
    LIKE '%qu%';

SELECT last_name, COUNT(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT
    LIKE '%qu%' GROUP BY last_name;

SELECT gender, COUNT(*) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;