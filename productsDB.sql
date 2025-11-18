CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);
ALTER TABLE products
ADD stock INT;
ALTER TABLE products
RENAME COLUMN price TO unit_price;
INSERT INTO products (id, name, unit_price, stock) VALUES
(1, 'Laptop', 55000, 10),
(2, 'Mouse', 500, 50),
(3, 'Keyboard', 900, 40),
(4, 'Monitor', 12000, 15),
(5, 'Pendrive', 700, 60);
UPDATE products
SET stock = 20
WHERE id = 4;
DELETE FROM products
WHERE id = 2;
desc products;