USE my_shop;

-- 1 
START TRANSACTION;

UPDATE sample.users set id = (SELECT id FROM my_shop.users WHERE id = 1);
UPDATE sample.users set name = (SELECT name FROM my_shop.users WHERE id = 1);

COMMIT;

-- 2

CREATE VIEW name (product_name, catalog_name) 
	AS SELECT name,(SELECT name FROM catalogs WHERE id = products.catalog_id) 
	FROM products;


