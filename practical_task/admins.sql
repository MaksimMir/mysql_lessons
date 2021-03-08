-- 1
CREATE USER shop_read_user;
CREATE USER shop_all_user;

GRANT SELECT ON shop.* TO shop_read_user;
GRANT ALL ON shop.* TO shop_all_user;

-- 2 

CREATE TABLE accounts (
	id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(128),
	password varchar(256)
);

INSERT INTO accounts VALUES (DEFAULT, 'Bob Marly', '374848yyfgfh77');

CREATE VIEW username AS SELECT id, name FROM accounts;

CREATE USER shop_read;

GRANT USAGE, SELECT ON username.* TO shop_read;
