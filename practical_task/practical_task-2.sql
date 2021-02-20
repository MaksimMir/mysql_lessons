USE my_shop;

-- 1
DESC users;
SELECT sum(timestampdiff(YEAR, birthday_at, now()))/max(id) AS birthday_at FROM users;

-- 2
SELECT
	count(*), 
	dayname(concat(2021, '-', substring(birthday_at, 6, 5))) 
	AS day
	FROM users
	GROUP BY day;

-- 3
SELECT sum(id) FROM users;
