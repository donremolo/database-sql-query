CREATE database `don_remolo_db`;

use 'don_remolo_db';

CREATE TABLE categories
(
	category_id          INTEGER PRIMARY KEY AUTO_INCREMENT,
	name                 VARCHAR(100) NOT NULL
);







CREATE TABLE customers
(
	customer_id          INTEGER PRIMARY KEY AUTO_INCREMENT,
	name                 VARCHAR(100) NOT NULL,
	phone                VARCHAR(15) NOT NULL,
	delivery_address     TEXT NOT NULL
);


CREATE TABLE order_details
(
	order_detail_id      INTEGER PRIMARY KEY AUTO_INCREMENT,
	quantity             INTEGER NOT NULL,
	product_id           INTEGER NOT NULL,
	order_id             INTEGER NOT NULL
);



CREATE TABLE orders
(
	order_id             INTEGER PRIMARY KEY AUTO_INCREMENT,
	date                 DATE NOT NULL,
	customer_id          INTEGER NOT NULL
);



CREATE TABLE products
(
	product_id           INTEGER PRIMARY KEY AUTO_INCREMENT,
	name                 VARCHAR(100) NOT NULL,
	description          TEXT NOT NULL,
	price                FLOAT NOT NULL,
	photo                TEXT NULL,
	category_id          INTEGER NOT NULL
);







CREATE TABLE users
(
	user_id              INTEGER PRIMARY KEY AUTO_INCREMENT,
	fullname             VARCHAR(100) NOT NULL,
	email                VARCHAR(100) NOT NULL,
	password             VARCHAR(16) NOT NULL
);






ALTER TABLE order_details
ADD FOREIGN KEY R_3 (product_id) REFERENCES products (product_id);



ALTER TABLE order_details
ADD FOREIGN KEY R_4 (order_id) REFERENCES orders (order_id);



ALTER TABLE orders
ADD FOREIGN KEY R_2 (customer_id) REFERENCES customers (customer_id);



ALTER TABLE products
ADD FOREIGN KEY R_1 (category_id) REFERENCES categories (category_id);

