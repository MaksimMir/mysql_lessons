USE my_shop;

-- 1
DESC users;
SELECT sum(timestampdiff(YEAR, birthday_at, now()))/count(id) AS birthday_at FROM users;
SELECT avg(timestampdiff(YEAR, birthday_at, now())) AS age FROM users;

-- 2
SELECT
	count(*) AS total, 
	dayname(concat(YEAR(now()), '-', substring(birthday_at, 6, 5))) 
	AS day
	FROM users
	GROUP BY DAY ORDER BY total;

-- 3
SELECT sum(id) FROM users;
