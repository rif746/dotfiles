-- ADD USER SYARIF
INSERT INTO users(username, password, level) VALUES('syarif', 'password', 3); -- `user_id:1`
INSERT INTO profiles(fullName, gender, birthDate, user_id)
	VALUES('Syarif Ubaidillah', 'M', '2001-07-02', 1);

-- ADD USER ISHAK
INSERT INTO users(username, password, level) VALUES('ishak', 'password', 3); -- `user_id:2`
INSERT INTO profiles(fullName, gender, birthDate, user_id)
	VALUES('RB. Abd. Ishak', 'M', '2001-07-02', 2);

-- ADD USER ILIF
INSERT INTO users(username, password, level) VALUES('ilif', 'password', 3); -- `user_id:3`
INSERT INTO profiles(fullName, gender, birthDate, user_id)
	VALUES('Ilif Zahratul Jannah', 'F', '2001-07-02', 3);

-- ADD USER AISAH
INSERT INTO users(username, password, level) VALUES('aisah', 'password', 3); -- `user_id:4`
INSERT INTO profiles(fullName, gender, birthDate, user_id)
	VALUES('Nur Aisah', 'F', '2001-07-02', 4);

-- ADD USER ALVIN
INSERT INTO users(username, password, level) VALUES('alvin', 'password', 3); -- `user_id:5`
INSERT INTO profiles(fullName, gender, birthDate, user_id)
	VALUES('Alvin Maulana Shobari', 'M', '2001-07-02', 5);

-- ADD PRODUCT TYPE
INSERT INTO type(name, description) VALUES("Unlimited", "Paket Unlimited"); -- `type_id:1`
INSERT INTO type(name, description) VALUES("Kuota Malam", "Paket Malam"); -- `type_id:2`
INSERT INTO type(name, description) VALUES("Kuota Gede", "Paket GEDE"); -- `type_id:3`

-- ADD OPERATOR
INSERT INTO operator(name, description) VALUES("XL", "XL Axiata"); -- `operator_id:1`
INSERT INTO operator(name, description) VALUES("Axis", "XL Axiata"); -- `operator_id:2`
INSERT INTO operator(name, description) VALUES("3", "Hutchison Indosat Ooredoo"); -- `operator_id:3`
INSERT INTO operator(name, description) VALUES("Indosat Ooredoo", "Hutchison Indosat Ooredoo"); -- `operator_id:4`
INSERT INTO operator(name, description) VALUES("Telkomsel", "Telkom Indonesia"); -- `operator_id:5`

-- ADD PAYMENT METHOD
INSERT INTO payment(name, api_key) VALUES("Gopay", "md5('GOPAY')"); -- `payment_id:1`
INSERT INTO payment(name, api_key) VALUES("OVO", "md5('OVO')"); -- `payment_id:2`
INSERT INTO payment(name, api_key) VALUES("DANA", "md5('DANA')"); -- `payment_id:3`

-- ADD PRODUCT (type=1, operator=3)
INSERT INTO product(name, type_id, description, operator_id, price)
	VALUES("3 AON Unlimited 26GB", 1, "3 Unlimited + 6GB Always On", 3, 65000); -- `product_id:1`
INSERT INTO product(name, type_id, description, operator_id, price)
	VALUES("3 AON Unlimited 30GB", 1, "3 Unlimited + 10GB Always On", 3, 85000); -- `product_id:2`

-- ADD PRODUCT (type=2, operator=1)
INSERT INTO product(name, type_id, description, operator_id, price)
	VALUES("XL Midnight 220MB", 2, "XL Kuota Malam 220 00-12 + 20MB 12-24", 1, 5000); -- `product_id:3`
INSERT INTO product(name, type_id, description, operator_id, price)
	VALUES("XL Midnight 2.2GB", 2, "XL Kuota Malam 2GB 00-12 + 200MB 12-24", 1, 25000); -- `product_id:4`
INSERT INTO product(name, type_id, description, operator_id, price)
	VALUES("XL Midnight 5.5GB", 2, "XL Kuota Malam 5GB 00-11.59 + 500MB 12-24", 1, 50000); -- `product_id:5`

-- ADD PRODUCT (type=3, operator=4)
INSERT INTO product(name, type_id, description, operator_id, price)
	VALUES("Indosat Kuota Gede 1hari", 3, "Indosat 5GB 1 hari", 4, 5000); -- `product_id:6`
INSERT INTO product(name, type_id, description, operator_id, price)
	VALUES("Indosat Kuota Gede 7hari", 3, "Indosat 25GB 7 hari", 4, 23000); -- `product_id:7`
INSERT INTO product(name, type_id, description, operator_id, price)
	VALUES("Indosat Kuota Gede 30hari", 3, "Indosat 85GB 30 hari", 4, 75000); -- `product_id:8`

-- TRANSACTION 1 SYARIF
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(1, 1, 3, 115000); -- `trans_id:1`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 2, 1, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 4, 1, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 6, 1, 1, 5000); 

-- TRANSACTION 2 SYARIF
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(1, 1, 3, 115000); -- `trans_id:2`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 2, 2, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 4, 2, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 6, 2, 1, 5000);

-- TRANSACTION 3 SYARIF
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(1, 1, 3, 115000); -- `trans_id:3`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 2, 3, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 4, 3, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(1, 6, 3, 1, 5000);

-- TRANSACTION 1 ISHAK
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(2, 1, 3, 115000); -- `trans_id:4`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 2, 4, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 4, 4, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 6, 4, 1, 5000);

-- TRANSACTION 2 ISHAK
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(2, 1, 3, 115000); -- `trans_id:5`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 2, 5, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 4, 5, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 6, 5, 1, 5000);

-- TRANSACTION 3 ISHAK
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(2, 1, 3, 115000); -- `trans_id:6`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 2, 6, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 4, 6, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(2, 6, 6, 1, 5000);

-- TRANSACTION 1 AISAH
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(3, 1, 3, 115000); -- `trans_id:7`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 2, 7, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 4, 7, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 6, 7, 1, 5000);

-- TRANSACTION 2 AISAH
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(3, 1, 3, 115000); -- `trans_id:8`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 2, 8, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 4, 8, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 6, 8, 1, 5000);

-- TRANSACTION 3 AISAH
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(3, 1, 3, 115000); -- `trans_id:9`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 2, 9, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 4, 9, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(3, 6, 9, 1, 5000);

-- TRANSACTION 1 ILIF
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(4, 1, 3, 115000); -- `trans_id:10`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 2, 10, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 4, 10, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 6, 10, 1, 5000);

-- TRANSACTION 2 ILIF
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(4, 1, 3, 115000); -- `trans_id:11`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 2, 11, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 4, 11, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 6, 11, 1, 5000);

-- TRANSACTION 3 ILIF
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(4, 1, 3, 115000); -- `trans_id:12`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 2, 12, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 4, 12, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(4, 6, 12, 1, 5000);

-- TRANSACTION 1 ALVIN
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(5, 1, 3, 115000); -- `trans_id:13`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 2, 13, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 4, 13, 1,  25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 6, 13, 1, 5000);

-- TRANSACTION 2 ALVIN
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(5, 1, 3, 115000); -- `trans_id:14`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 2, 14, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 4, 14, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 6, 14, 1, 5000);

-- TRANSACTION 3 ALVIN
INSERT INTO transaction(user_id, payment_id, quantity, price)
	VALUES(5, 1, 3, 115000); -- `trans_id:15`
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 2, 15, 1, 85000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 4, 15, 1, 25000);
INSERT INTO transaction_details(user_id, product_id, trans_id, quantity, price)
	VALUES(5, 6, 15, 1, 5000);

-- SELECT user with gender M
SELECT p.fullName, u.username FROM users u 
	INNER JOIN profiles p ON p.gender = 'M' AND p.user_id = u.id;

-- SELECT product=3
SELECT name FROM product WHERE id = 3;

-- SELECT user with created at 7days ago
SELECT * FROM users WHERE createAt < date(createdAt) = CURDATE() - interval 7 day 
	AND username LIKE %a%;

-- Female users count
SELECT COUNT(id) AS total_female FROM users u 
	INNER JOIN profiles p ON p.gender = 'F' AND p.user_id = u.id;

-- SELECT user BY username ASC
SELECT username FROM users ORDER BY username ASC;

-- SELECT 5 product data
SELECT name FROM product LIMIT 5;

-- UPDATE name of product=1 to product_dummy
UPDATE product SET name='product_dummy' WHERE id = 1;

-- UPDATE quantity IN transaction_details with product=1
UPDATE transaction_details SET quantity=3 WHERE product_id = 1;

-- DELETE product=1
DELETE FROM product WHERE id = 1;

-- DELETE product with type=1
DELETE FROM product WHERE type_id = 1;

-- JOIN data transaction user=1 and user=2
SELECT * FROM `transaction` WHERE user_id BETWEEN 1 AND 2;

-- SELECT SUM(price) transaction user=1
SELECT SUM(price) AS total_price FROM `transaction` WHERE user_id = 1;

-- SELECT COUNT(*) FROM transaction with product type=2
SELECT COUNT(*) AS total_transaction FROM `transaction` t 
INNER JOIN transaction_details td
INNER JOIN product p
ON t.id = td.trans_id AND td.product_id = p.id AND p.type_id = 2;

-- SELECT * FROM product and name IN type
SELECT *, t.`name` FROM `product` p INNER JOIN `type` t ON p.type_id = t.id;

-- SELECT * FROM transaction and name IN product and username IN product
SELECT *, p.name, u.username FROM `transaction` t 
INNER JOIN transaction_details td
INNER JOIN product p
INNER JOIN users u
ON t.id = td.trans_id AND td.product_id = p.id AND td.user_id = u.id;
