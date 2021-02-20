USE my_shop;
-- «Операторы, фильтрация, сортировка и ограничение»

-- 1
DESC users;
SELECT * FROM users;
-- Заполняем поле created_at текущей датой и временем. 
-- Поле update_at заполняется автоматически(ON UPDATE CURRENT_TIMESTAMP)
UPDATE users SET created_at = now();


-- 2
DROP TABLE IF EXISTS users_two;
-- создаем таблицу с неверными форматами полей и даннми в полях
CREATE TABLE users_two (
  id int unsigned NOT NULL AUTO_INCREMENT,
  username varchar(100) NOT NULL,
  created_at varchar(100),
  update_at varchar(100),
  PRIMARY KEY (id)
);
 
INSERT INTO users_two VALUES 
	(DEFAULT ,'walker149','27.07.1973 04:37','16.03.1978 13:22'),
	(DEFAULT ,'pollich136','24.01.1971 00:27','06.06.1971 13:23'),
	(DEFAULT ,'bahringer132','25.07.1983 07:50','16.02.2017 13:23'),
	(DEFAULT ,'hamill154','15.10.2013 09:44','16.06.2010 13:23'),
	(DEFAULT,'stoltenberg173','14.07.2005 16:55','18.12.1981 13:23'),
	(DEFAULT,'kohler104','06.11.2020 00:23','31.05.2016 13:23'),
	(DEFAULT,'gutmann102','18.08.1979 14:47','16.02.1991 13:23'),
	(DEFAULT,'moen199','27.08.2007 17:38','16.07.2006 13:23'),
	(DEFAULT,'leffler190','20.11.2017 04:26','16.02.2002 13:23');
DESC users_two;
SELECT * FROM users_two;

-- Меняем формат полей на datetime с сохранением данных
UPDATE users_two SET created_at = CONVERT(concat(
	substr(created_at, 7, 4),
	'.',
	substr(created_at, 3, 3),
	'.',
	substr(created_at, 1, 2),
	substr(created_at, 11, 6) 
), datetime);
ALTER TABLE users_two MODIFY created_at datetime;
UPDATE users_two SET update_at = CONVERT(concat(
	substr(update_at, 7, 4),
	'.',
	substr(update_at, 3, 3),
	'.',
	substr(update_at, 1, 2),
	substr(update_at, 11, 6) 
), datetime);
ALTER TABLE users_two MODIFY update_at datetime DEFAULT current_timestamp 
	 ON UPDATE CURRENT_TIMESTAMP;

	
-- 2 
SELECT * FROM storehouses_products ORDER BY (value = 0);

-- 3 
SELECT * FROM users WHERE substring(birthday_at, 6, 2) = 05 OR substring(birthday_at, 6, 2) = 07;

-- 5	
DESC catalogs;
SELECT * FROM catalogs;
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY (id < 5);



