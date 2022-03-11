CREATE DATABASE alta_online_shop;

USE alta_online_shop;

CREATE TABLE users (
	id integer(10) NOT NULL AUTO_INCREMENT,
	username varchar(50),
	password varchar(50),
	level int(1),
	createdAt date DEFAULT CURRENT_TIMESTAMP,
	updatedAt date DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY (id)
);

CREATE TABLE profiles (
	id integer(10) NOT NULL AUTO_INCREMENT,
	fullName varchar(100),
	gender char(1),
	birthDate date,
	user_id integer(10) UNIQUE,
	createdAt date DEFAULT CURRENT_TIMESTAMP,
	updatedAt date DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY (ID),
	CONSTRAINT fk_profile_user FOREIGN KEY (user_id)
	REFERENCES users(id)
);

CREATE TABLE address (
	id integer(10) NOT NULL AUTO_INCREMENT,
	address varchar(100),
	isMain integer(1),
	user_id integer(10),
	createdAt date DEFAULT CURRENT_TIMESTAMP,
	updatedAt date DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY (ID),
	CONSTRAINT fk_users_profile FOREIGN KEY (user_id)
	REFERENCES users(id)
);

CREATE TABLE operator (
	id integer(10) NOT NULL AUTO_INCREMENT,
	name varchar(20),
	description varchar(50),

	PRIMARY KEY (id)
);

CREATE TABLE type (
	id integer(10) NOT NULL AUTO_INCREMENT,
	name varchar(20),
	description varchar(50),

	PRIMARY KEY (id)
);

CREATE TABLE product (
	id integer(10) NOT NULL AUTO_INCREMENT,
	name varchar(100),
	type_id integer(50),
	description varchar(100),
	operator_id integer(10),
	price integer(15),
	createdAt date DEFAULT CURRENT_TIMESTAMP,
	updatedAt date DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY (ID),
	CONSTRAINT fk_prod_operator	FOREIGN KEY (operator_id) 
	REFERENCES operator(id),
	CONSTRAINT fk_prod_type	FOREIGN KEY (type_id) 
	REFERENCES type(id)

);

CREATE TABLE payment (
	id integer(10) NOT NULL AUTO_INCREMENT,
	name varchar(100),
	api_key varchar(100),
	createdAt date DEFAULT CURRENT_TIMESTAMP,
	updatedAt date DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY (ID)
);

CREATE TABLE transaction (
	id integer(10) NOT NULL AUTO_INCREMENT,
	user_id integer(10),
	payment_id integer(10),
	quantity integer(30),
	price integer(15),
	createdAt date DEFAULT CURRENT_TIMESTAMP,
	updatedAt date DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY (ID),
	CONSTRAINT fk_trans_user FOREIGN KEY (user_id)
	REFERENCES users(id),
	CONSTRAINT fk_trans_payment FOREIGN KEY (payment_id)
	REFERENCES payment(id)
);

CREATE TABLE transaction_details (
	id integer(10) NOT NULL AUTO_INCREMENT,
	user_id integer(10),
	product_id integer(10),
	trans_id integer(10) NULL,
	quantity integer(30),
	price integer(15),
	createdAt date DEFAULT CURRENT_TIMESTAMP,
	updatedAt date DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY (ID),
	CONSTRAINT fk_trans_details_user FOREIGN KEY (user_id)
	REFERENCES users(id),
	CONSTRAINT fk_trans_product FOREIGN KEY (product_id)
	REFERENCES product(id),
	CONSTRAINT fk_transaction_details FOREIGN KEY (trans_id)
	REFERENCES transaction(id)
);

-- CREATE TABLE kurir
CREATE TABLE kurir (
	id integer(10) NOT NULL AUTO_INCREMENT,
	name varchar(50),
	createdAt date DEFAULT CURRENT_TIMESTAMP,
	updatedAt date DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY(id)
);

-- ADD COLUMN ongkos_dasar TO TABLE kurir
ALTER TABLE kurir ADD ongkos_dasar integer(10) NOT NULL;

-- RENAME TABLE kurir
RENAME TABLE kurir TO shipping;

-- DROP shipping
DROP TABLE shipping;
