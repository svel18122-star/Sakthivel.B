CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Arun'),
(2, 'Bala'),
(3, 'Chitra'),
(4, 'Dinesh'),
(5, 'Elango');
INSERT INTO orders (order_id, customer_id, product) VALUES
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 4, 'Monitor'),
(105, 4, 'Headset');
SELECT c.customer_name, o.product
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
SELECT c.customer_name, o.product
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
desc customers;
