USE my_shop;


-- 1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders
-- в интернет магазине.
SELECT u.* FROM 
	users AS u 
	JOIN 
	orders AS o
	ON o.user_id = u.id 
	GROUP BY user_id;

SELECT * FROM users WHERE 
	EXISTS 
	(SELECT 1 FROM orders WHERE user_id = users.id);

-- 2 Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT group_concat(p.name SEPARATOR ', '), c.name FROM 
	products AS p 
	JOIN 
	catalogs AS c
	ON p.catalog_id = c.id 
	GROUP BY c.id;

SELECT p.name, c.name FROM 
	products AS p 
	JOIN 
	catalogs AS c
	ON p.catalog_id = c.id;

-- 3 Все на что меня хватило
SELECT f.id,
	CASE 
		WHEN f.from = c.label THEN c.name 
	END AS from_ru, 
	CASE 
		WHEN f.to = c.label THEN c.name 
	END AS to_ru
	FROM 
	flights AS f
	LEFT JOIN
	cities AS c
	ON (f.from = c.label) or (f.to = c.label);
 


