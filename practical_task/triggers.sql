-- 1
USE my_shop;

DELIMITER $$

DROP FUNCTION IF EXISTS hello $$
CREATE FUNCTION hello ()
BEGIN	
SELECT 	
	CASE 
		WHEN time(now()) > '6:00' AND time(now()) <= '12:00' THEN
  			'Доброе утро'
		WHEN time(now()) > '12:00' AND time(now()) <= '18:00' THEN
  			'Добрый день'
		WHEN time(now()) > '18:00' AND time(now()) <= '00:00' THEN
  			'Добрый вечер'
		ELSE 'Доброй ночи'
		END AS hello;
END $$

-- 2

CREATE TRIGGER check_name_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  DECLARE name varchar(255);
 	IF name IS NULL 
 		SIGNAL SQLSTATE '45000' SET message_text = 'delete conceled';
 	ELSE 
  		SET NEW.name = COALESCE(NEW.name, name);
END $$

CREATE TRIGGER check_desc_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  DECLARE description text;
 	IF description IS NULL 
 		SIGNAL SQLSTATE '45000' SET message_text = 'delete conceled';
 	ELSE 
  		SET NEW.description = COALESCE(NEW.description, description);
END $$

