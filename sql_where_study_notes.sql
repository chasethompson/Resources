USE numbers;

SELECT * FROM numbers_with_more_groups;

SELECT n, category
FROM numbers_with_more_groups
WHERE n < 5;

SELECT
	n,
	category,
	category = 'a' AS category_is_a,
	n % 2 = 0 AS category_divisible_by_two,
	category = 'a' OR n % 2 = 0
FROM numbers_with_more_groups;

SELECT n, `category`
FROM numbers_with_more_groups
WHERE n % 2 = 0;

SELECT n, supergroup, supergroup LIKE '%e%'
FROM numbers_with_more_groups;

SELECT n, supergroup, supergroup LIKE '%e%' AND supergroup NOT LIKE 'e%'
FROM numbers_with_more_groups;

SELECT
	*,
	category = 'a' OR category = 'b',
	category IN ('a', 'b')
FROM `numbers_with_more_groups`;