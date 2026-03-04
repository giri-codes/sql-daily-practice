-- Day 4: JOINS Practice
USE ecommerce;

-- Create Orders Table
CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE
    );
    
-- Insert Into Sample Orders
INSERT INTO orders VALUES
(101, 1, 500.00, '2025-01-01'),
(102, 2, 750.00, '2025-01-03'),
(103, 1, 300.00, '2025-01-10'),
(104, 3, 900.00, '2025-01-15'),
(105, 6, 400.00, '2025-01-20');


-- INNER JOIN
-- Show customer name with order amount
SELECT c.name, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- LEFT JOIN
-- Show all customers and their orders (if any)
SELECT c.name, o.amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- RIGHT JOIN
-- Show all orders and customer names
SELECT c.name, o.amount
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;


-- Q1: Total Order Amount Per Customer
-- (JOIN + SUM + GROUP BY)

SELECT c.customer_id, c.name, SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;


-- Q2: Customers Who Never Placed an Order
-- (LEFT JOIN + WHERE amount IS NULL)

SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


-- Q3: Customer With Highest Total Spending
-- (JOIN + GROUP BY + ORDER BY DESC + LIMIT 1)

SELECT c.customer_id, c.name, SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 1;
