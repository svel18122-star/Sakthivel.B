CREATE VIEW customer_orders AS
SELECT 
    o.order_id,
    c.customer_name,
    p.name AS product_name,
    o.quantity,
    o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.id;

SELECT * FROM customer_orders;

CREATE VIEW product_info AS
SELECT id, name, unit_price
FROM products;

UPDATE product_info
SET unit_price = 500
WHERE id = 3;

CREATE VIEW customer_orders AS
SELECT c.customer_name, o.order_id
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

UPDATE customer_orders
SET customer_name = 'Sakthi';
