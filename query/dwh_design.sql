DROP TABLE IF EXISTS dim_users;
CREATE TABLE dim_users (
	info_id INT NOT NULL,
	user_first_name VARCHAR(255) NOT NULL,
	user_last_name VARCHAR(255) NOT NULL,
	user_address VARCHAR(255),
	order_item_id INT NOT NULL,
	order_item_quantity INT,
	PRIMARY KEY (info_id),
	CONSTRAINT fk_order_item_id FOREIGN KEY (order_item_id) REFERENCES tb_order_items
);

DROP TABLE IF EXISTS fact_orders;
CREATE TABLE fact_orders (
	nota_id INT NOT NULL,
	nota_date DATE NOT NULL,
	order_price INT NOT NULL,
	order_discount INT,
	PRIMARY KEY (nota_id)
);