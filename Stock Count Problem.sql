CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100), 
         stock INT
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone', 5), 
         (2, 'Laptop', 20), 
         (3, 'T-shirt', 8);


SELECT * FROM PRODUCTS


/*
List products with stock less than 10.
*/

SELECT PRODUCT_NAME
FROM PRODUCTS
WHERE STOCK < 10;