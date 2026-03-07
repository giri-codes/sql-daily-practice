-- Day 2: Filtering & Sorting Practice
USE ecommerce;

-- Add More Sample Data
INSERT INTO customers VALUES
(4, 'Priya', 'Bangalore',35),
(5, 'Arjun', 'Mysuru', 22),
(6, 'Kiran', 'Chennai', 29),
(7, 'Meena', 'Bangalore', 27);

-- AND (Both Conditions Must Be True)
-- Customers from Bangalore AND age > 26
SELECT * FROM customers
WHERE city = 'Bangalore' AND age > 26;

-- OR (At Least One Condition Must Be True)
-- Customers from Mysuru OR Chennai
SELECT * FROM customers
WHERE city = 'Mysuru' OR city = 'Chennai';

-- NOT (Exclude Condition)
-- Customers NOT from Bangalore
SELECT * FROM customers
WHERE NOT city = 'Bangalore';

-- BETWEEN (Range Filtering)
-- Customers age between 25 and 30
SELECT * FROM customers
WHERE age BETWEEN 25 AND 30;

-- IN (Multiple Possible Values)
-- Customers from Mysuru or Chennai
SELECT * FROM customers
WHERE city IN ('Mysuru', 'Chennai');

-- LIKE (Pattern Matching)
-- Names starting with 'A'
SELECT * FROM customers
WHERE name LIKE 'A%';

-- ORDER BY (Sorting)
-- Sort customers by age descending
SELECT * FROM customers
ORDER BY age DESC;

-- ORDER BY + LIMIT
-- Top 3 oldest customers
SELECT * FROM customers
ORDER BY age DESC
LIMIT 3;

------------------------------------------------------------------------------

-- SQL Day 2 Practice

-- Q1: Show customers from Bangalore AND age greater than 30.
SELECT * FROM customers
WHERE city = 'Bangalore' AND age > 30;

-- Q2: Show customers from Mysuru OR Bangalore.
SELECT * FROM customers
WHERE city = 'Mysuru' OR city = 'Bangalore';

-- Q3: Show customers NOT from Chennai.
SELECT * FROM customers
WHERE city <> 'Chennai';

-- Q4: Show customers whose age is between 25 and 35.
SELECT * FROM customers
WHERE age BETWEEN 25 AND 35;

-- Q5: Show customers whose city is Mysuru or Chennai using IN.
SELECT * FROM customers
WHERE city IN ('Mysuru', 'Chennai');

-- Q6: Show customers whose name starts with 'M'.
SELECT * FROM customers
WHERE name LIKE 'M%';

-- Q7: Show customers whose name ends with 'a'.
SELECT * FROM customers
WHERE name LIKE '%a';

-- Q8: Show customers whose name contains 'ri'.
SELECT * FROM customers
WHERE name LIKE '%ri%';

-- Q9: Show all customers sorted by age in ascending order.
SELECT * FROM customers
ORDER BY age ASC;

-- Q10: Show all customers sorted by age in descending order.
SELECT * FROM customers
ORDER BY age DESC;

-- Q11: Show the top 2 youngest customers.
SELECT * FROM customers
ORDER BY age ASC
LIMIT 2;

-- Q12: Show the top 3 oldest customers.
SELECT * FROM customers
ORDER BY age DESC
LIMIT 3;

-- Q13: Show customers from Bangalore AND age between 25 and 35.
SELECT * FROM customers
WHERE city = 'Bangalore'
AND age BETWEEN 25 AND 35;

-- Q14: Show customers NOT from Mysuru AND age greater than 25.
SELECT * from customers
WHERE city <> 'Mysuru'
AND age > 25;

-- Q15: Show customers from Bangalore or Chennai whose age is greater than 27.
SELECT * FROM customers
WHERE city IN ('Bangalore', 'Chennai')
AND age > 27;

SELECT * FROM customers
WHERE (city = 'Bangalore' OR city = 'Chennai')
AND age > 27;