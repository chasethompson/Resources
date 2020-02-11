USE employees;

SELECT
	*,
	CONCAT('Employee #', emp_no, ' is ', first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 10;

SELECT
	first_name,
	first_name REGEXP "^[a-f].*" # starts with a letter a thorugh f
FROM employees
LIMIT 10;

SELECT
	first_name
FROM employees
WHERE first_name REGEXP "^[a-f].*"
LIMIT 10;

SELECT
	first_name,
	SUBSTR(first_name, 1, 1)
FROM employees
LIMIT 10;

SELECT
	first_name,
	SUBSTR(first_name, 1, 1)
FROM employees
WHERE SUBSTR(first_name, 1,1) IN ('a','b','c','d','e','f')
LIMIT 10;

SELECT
	first_name,
	SUBSTR(first_name, 1, 1),
	SUBSTR(first_name, 1, 3),
	SUBSTR(first_name, 3, 1),
	SUBSTR(first_name, 3, 3)
FROM employees
WHERE SUBSTR(first_name, 1,1) IN ('a','b','c','d','e','f')
LIMIT 10;

SELECT
	first_name,
	LEFT(first_name, 3),
	RIGHT(first_name, 3),
	LEFT(RIGHT(first_name, 3), 2),
	LEFT(RIGHT(CONCAT(first_name, ' ', last_name), 3), 4)
FROM employees
LIMIT 10;

SELECT 
	*,
	REPLACE(dept_no, 'd00', 'Dept No. ')
FROM departments;

SELECT
	NOW(),
	CURDATE(),
	CURTIME();
	
SELECT
	birth_date,
	DATEDIFF(NOW(), birth_date) / 365.25 AS years_old 
FROM employees
LIMIT 50;

SELECT
	MIN(emp_no),
	MAX(emp_no),
	AVG(emp_no)
FROM employees
LIMIT 20;

#avg employee age
SELECT
	FLOOR(AVG(DATEDIFF(NOW(), birth_date) / 365.25)) AS years_old 
FROM employees;