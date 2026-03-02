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