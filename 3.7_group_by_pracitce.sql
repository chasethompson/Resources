USE employees;

SELECT COUNT(*)
FROM employees;

SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

USE numbers;

SELECT n
FROM numbers_with_groups;

SELECT 
	MIN(n),
	MAX(n),
	AVG(n),
	COUNT(n)
FROM numbers_with_groups;

SELECT
	category,
	COUNT(category),
	MIN(n)
FROM numbers_with_groups
GROUP BY category;

SELECT 
	supergroup,
	COUNT(supergroup),
	MAX(n)
FROM numbers_with_more_groups
GROUP BY supergroup;


SELECT
	n,
	AVG(n),
	COUNT(n)
FROM numbers_with_more_groups
GROUP BY n;

SELECT
	category,
	supergroup,
	COUNT(*)
FROM numbers_with_more_groups
GROUP BY category, supergroup;

USE employees;

# How many people were born in each month

SELECT
	MONTH(birth_date),
	COUNT(*)
FROM employees
GROUP BY MONTH(birth_date);