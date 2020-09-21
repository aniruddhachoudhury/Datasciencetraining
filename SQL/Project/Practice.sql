SELECT *  FROM employees limit 10;

SELECT DISTINCT birth_date, first_name,gender
FROM employees 
WHERE gender='M'
limit 10;

SELECT * FROM employees
WHERE first_name='Georgi' AND gender='M';

SELECT * FROM employees
WHERE first_name='Georgi' OR gender='M'
;


SELECT * FROM employees
WHERE NOT first_name='Georgi';

SELECT * FROM employees
WHERE first_name='Georgi' AND (gender='F' OR last_name='Zyda');

SELECT * FROM employees
WHERE NOT first_name='Georgi' AND NOT gender='F';

SELECT  first_name, last_name
FROM employees
ORDER BY first_name,last_name DESC;

SELECT * FROM employees
WHERE gender='M' AND first_name='Georgi'
ORDER BY first_name, emp_no;

SELECT *
FROM employees
WHERE gender IS NOT NULL;

SELECT * FROM employees
WHERE first_name='Ramzi';

UPDATE employees
SET first_name='PaulRamzi'
WHERE first_name = 'Ramzi';

DESCRIBE employees;

 SELECT  first_name, CURDATE(),
       TIMESTAMPDIFF(first_name,gender,CURDATE()) AS name
       FROM employees ORDER BY last_name;
       
SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM employees GROUP BY gender;

SELECT *  FROM departments limit 10;
SELECT *  FROM dept_manager limit 10;
SELECT *  FROM employees limit 10;
SELECT * FROM salaries limit 10;

SELECT departments.dept_name, dept_manager.emp_no
FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no;

SELECT departments.dept_name, dept_manager.emp_no, employees.birth_date,employees.first_name,employees.gender
FROM ((departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no)
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no);

SELECT employees.first_name,employees.last_name, employees.gender, employees.birth_date, salaries.salary
FROM employees
LEFT JOIN salaries ON salaries.emp_no = employees.emp_no 
ORDER BY employees.first_name;

SELECT salaries.salary, employees.first_name,employees.last_name,COUNT(employees.emp_no) AS NumberOfemployees FROM employees
LEFT JOIN salaries ON salaries.emp_no = employees.emp_no 
GROUP BY gender;

SELECT FLOOR(45.56);
SELECT CEILING(45.56);

select * from salaries ORDER BY `salary` DESC limit 5,1;
select * from salaries ORDER BY `salary` DESC limit 5,2;


SELECT first_name, last_name, gender
FROM employees
WHERE last_name LIKE '%Ca' AND gender='M';

SELECT * FROM salaries LIMIT 5;

select emp_no,salary
from salaries
where salary > some(select salary
from salaries
where salary >60000);

SELECT emp_no,salary
FROM salaries
WHERE salary BETWEEN 50000 AND 70000;

SELECT employees.first_name,employees.last_name, employees.gender, employees.birth_date, salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no 
WHERE salary NOT BETWEEN 50000 AND 70000
ORDER BY employees.first_name;

SELECT employees.first_name,employees.last_name, employees.gender, employees.birth_date, salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no 
WHERE salary IN (30000, 40000, 25000)
ORDER BY employees.first_name;

SELECT first_name,last_name FROM employees
GROUP BY first_name, last_name
HAVING COUNT(*) > 1;

SHOW TABLES;

SELECT NOW();