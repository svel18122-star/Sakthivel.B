CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    event_name VARCHAR(50),
    event_date DATE
);

INSERT INTO orders (order_id, product_name, quantity, price, event_name, event_date)
VALUES
(1, 'Apple Watch', 3, 250.00, 'Launch', '2025-01-10'),
(2, 'Airpods', 1, 150.00, 'Sale', '2025-02-15'),
(3, 'Android Phone', 4, 450.00, 'Offer', '2025-03-01'),
(4, 'Book', 2, 80.00, 'Festival', '2025-03-10'),
(5, 'Adapter', 5, 120.00, 'Clearance', '2025-04-05');

SELECT *
FROM orders
WHERE quantity > 2;

SELECT *
FROM orders
WHERE price BETWEEN 100 AND 500;

SELECT *
FROM orders
WHERE product_name LIKE 'A%';

SELECT *
FROM orders
ORDER BY quantity DESC;

SELECT CONCAT(event_name, ' - ', event_date) AS event_details
FROM orders;
