--------- TABLE CREATION
1.CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price NUMERIC(10, 2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    total_amount NUMERIC(10, 2)
);

CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT
);

------------CHECKING IMPORT
2.select * from orders;
3.select * from order_details;
4.select * from products;
5.select * from customers;

-------------SELECT + WHERE + ORDER BY
--6. Show all customers from USA
SELECT * FROM customers WHERE country = 'USA';

--7.  List all products sorted by price (descending)
SELECT product_name, unit_price FROM products ORDER BY unit_price DESC;

---------------GROUP BY + Aggregates (SUM, AVG)
-- 8. Total order amount per customer
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders GROUP BY customer_id;

-- 9. Average order amount
SELECT AVG(total_amount) AS average_order_value
FROM orders;

--------------- JOINS — INNER, LEFT, RIGHT
-- 10. INNER JOIN: Show orders with customer names
SELECT o.order_id, o.order_date, c.first_name, c.last_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- 11. LEFT JOIN: Show all customers and their orders (if any)
SELECT c.first_name, o.order_id, o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
 
-- 12. RIGHT JOIN: Show all customers and their orders (if any)
SELECT c.first_name, o.order_id, o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

----------------- Subqueries
-- 13. Find customers who placed orders more than the average order value
SELECT * FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  WHERE total_amount > (SELECT AVG(total_amount) FROM orders)
);

-- 14.SELECT * FROM customers WHERE customer_id IN (
  SELECT customer_id FROM orders GROUP BY customer_id HAVING SUM(total_amount) > 1000);

-- 15.SELECT * FROM products WHERE unit_price = (SELECT MAX(unit_price) FROM products);

-----------------Create views
-- 16 Create a view of high-value orders (above 1000)
CREATE VIEW high_value_orders AS
SELECT * FROM orders
WHERE total_amount > 1000;

-- 17. Create a view for customer order summary
CREATE VIEW customer_order_summary AS
SELECT c.customer_id, c.first_name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- 18. Create view for customer spending
CREATE VIEW customer_spending AS
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;
 
------------------Indexing (Optimization)
-- 19. Create index on customer_id in orders table
CREATE INDEX idx_customer_id ON orders(customer_id);

-- 20. Create index on product_id in order_details
CREATE INDEX idx_product_id ON order_details(product_id);






-

