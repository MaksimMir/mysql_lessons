USE my_shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	table_name varchar(100) NOT NULL,
	table_id int UNSIGNED NOT NULL,
	name varchar(100) NOT NULL,
	created_at datetime DEFAULT current_timestamp 
) engine = archive;

DROP TRIGGER IF EXISTS insert_in_logs_users;
DROP TRIGGER IF EXISTS insert_in_logs_products;
DROP TRIGGER IF EXISTS insert_in_logs_catalogs;
DELIMITER //

CREATE TRIGGER insert_in_logs_users AFTER INSERT ON users
FOR EACH ROW 
BEGIN
	INSERT INTO logs VALUES (DEFAULT, 'users', NEW.id, NEW.name, DEFAULT);
END//

CREATE TRIGGER insert_in_logs_products AFTER INSERT ON products
FOR EACH ROW 
BEGIN
	INSERT INTO logs VALUES (DEFAULT, 'products', NEW.id, NEW.name, DEFAULT);
END//

CREATE TRIGGER insert_in_logs_catalogs AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN
	INSERT INTO logs VALUES (DEFAULT, 'catalogs', NEW.id, NEW.name, DEFAULT);
END//

DELIMITER ;
