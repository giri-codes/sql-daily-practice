-- Day 6: Classic SQL Interview Problems

USE ecommerce;

-- Q1: Find the Highest Order Amount
-- (MAX function)

SELECT MAX(amount) AS highest_order
FROM orders;

-- Q2: Find the Second Highest Order Amount
-- (ORDER BY + LIMIT)

SELECT DISTINCT amount
FROM orders
ORDER BY amount DESC
LIMIT 1 OFFSET 1;


-- Q3: Find Total Spending Per Customer
-- (JOIN + SUM + GROUP BY)

SELECT c.customer_id, c.name, SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;


-- Q4: Find Customers Who Placed More Than One Order
-- (GROUP BY + HAVING)

SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- Q5: Find Customers Who Placed the Most Orders
-- (GROUP BY + ORDER BY + LIMIT)

SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC
LIMIT 1;