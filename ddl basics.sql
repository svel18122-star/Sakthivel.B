1. Create a table products (id, name, price). 
 2. Add a new column stock INT using ALTER TABLE. 
 3. Rename column price to unit_price. 
 ALTER TABLE products
ADD stock INT;
ALTER TABLE products
RENAME COLUMN price TO unit_price;
ALTER TABLE products
CHANGE price unit_price DECIMAL(10,2);
