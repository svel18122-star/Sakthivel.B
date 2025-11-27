CREATE TABLE OrdersRaw (
    order_id INT,
    customer_name VARCHAR(50),
    product1 VARCHAR(50),
    qty1 INT,
    product2 VARCHAR(50),
    qty2 INT
);
-- Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

-- OrderItems table
CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product VARCHAR(50),
    qty INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
CREATE TABLE StudentsRaw (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    city VARCHAR(50),
    pincode VARCHAR(10)
);
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE CityInfo (
    city VARCHAR(50) PRIMARY KEY,
    pincode VARCHAR(10)
);

SELECT AVG(price) AS average_order_price
FROM orders;

SELECT product_name, SUM(price) AS total_sales
FROM orders
GROUP BY product_name;

SELECT product_name, SUM(price) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC;
