CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    person_id INTEGER REFERENCES person(person_id)
    product_name VARCHAR(30),
    product_price DECIMAL(10, 2),
    quantity INT
);22

INSERT INTO orders (order_id, person_id, product_name, product_price, quantity) VALUES
(1, 1, 'Product A', 10.00, 2),
(2, 1, 'Product B', 15.00, 1),
(3, 2, 'Product A', 10.00, 3),
(4, 2, 'Product C', 20.00, 1),
(5, 2, 'Product B', 15.00, 2);

SELECT * FROM orders;

SELECT SUM(quantity) AS total_products_ordered FROM orders;

SELECT SUM(product_price * quantity) AS total_order_price FROM orders;

SELECT person_id, SUM(product_price * quantity) AS total_order_price FROM orders GROUP BY person_id;