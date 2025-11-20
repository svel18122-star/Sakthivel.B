-- Select employees whose salary is higher than the overall average salary

SELECT *
FROM employees
    -- Subquery returns the average salary from the employees table
    
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Select products where product price is greater than the minimum order price
SELECT *
FROM products
WHERE price > (
        -- Subquery fetches the lowest price from the orders table
        SELECT MIN(price)
        FROM orders
        );

-- Fetch customers whose id exists in the list of customers_ids from  orders
SELECT *
FROM customers
WHERE id IN (
     -- Subquery returns all customers IDs that appear in the orders table   
     SELECT customer_id
     FROM orders
     );
     
-- Select each customer and calculate number of orders using a subquery 
SELECT
c.id,
c.name,
(
       -- Subquery counts how many orders belong to this customer    
       SELECT COUNT(*)
       FROM orders o
       WHERE o.customers_id = c.id
   ) AS order_count
 FROM customers c;
 
 -- Use Exists to check if at least one matching product record is found
 SELECT *
 FROM products p
 WHERE EXISTS (
         -- subquery checks if a product with the same id exists
         SELECT 1
         FROM products
         WHERE id = p.id
         );
         desc employees;
     