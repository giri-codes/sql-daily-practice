-- Day 5: Subqueries Practice

USE ecommerce;

-- Q1: Customers Who Placed Orders Above Average Order Amount

SELECT name
FROM customers
WHERE customer_id IN (
	SELECT customer_id
    FROM orders
    WHERE amount > (
		SELECT AVG(amount) FROM orders
	)
);

-- Q2: Customer Who Placed the Highest Order

SELECT name
FROM customers
WHERE customer_id = (
	SELECT customer_id
    FROM orders
    ORDER BY amount DESC
    LIMIT 1
);

-- Q3: Orders Greater Than Average Order Amount

SELECT * FROM orders
WHERE amount > (
	SELECT AVG(amount)
    FROM orders
);

-- Q4: Customers Who Placed At Least One Order

SELECT name
FROM customers
WHERE customer_id IN (
	SELECT customer_id
    FROM orders
);
    
    
-- Practice Examples:
-- Q1: Orders Greater Than Average Order Amount
-- (Subquery with AVG)
SELECT * FROM orders
WHERE amount > (
	SELECT AVG(amount)
    FROM orders
);

-- Q2: Customer Who Placed the Highest Order
-- (Subquery with MAX)
SELECT name
FROM customers
WHERE customer_id = (
	SELECT customer_id
    FROM orders
    WHERE amount = (
		SELECT MAX(amount)
        FROM orders
	)
);

-- Q3: Customers Who Placed Orders
-- (Subquery with IN)
SELECT name
FROM customers
WHERE customer_id IN (
	SELECT customer_id
    FROM orders
);

-- Q4: Customers Who Never Placed Orders
-- (Subquery with NOT IN)
SELECT name
FROM customers
WHERE customer_id NOT IN (
	SELECT customer_id
    FROM orders
);

-- Q5: Orders From Customers Living In Bangalore
-- (Subquery with condition)
SELECT * 
FROM orders
WHERE customer_id IN (
	SELECT customer_id
    FROM customers
    WHERE city = 'Bangalore'
);