-- Day 3: Aggregation & GROUP BY
USE ecommerce;

-- COUNT()
-- Total number of customers
SELECT COUNT(*) AS total_numbers
FROM customers;

-- COUNT with condition
-- Number of customers from Bangalore
SELECT COUNT(*) AS bangalore_customers
FROM customers
WHERE city = 'Bangalore';

-- AVG()
-- Average age of customers
SELECT AVG(age) AS average_age
FROM customers;

-- MAX()
-- Oldest customer age
SELECT MAX(age) AS max_age
FROM customers;

-- MIN()
-- Youngest customer age
SELECT MIN(age) as min_age
FROM customers;

-- GROUP BY
-- Count customers city-wise
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;

-- GROUP BY + AVG
-- Average age city-wise
SELECT city, AVG(age) AS average_age
FROM customers
GROUP BY city;

-- HAVING (Filter After Grouping)
-- Cities having more than 1 customer
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
HAVING COUNT(*) > 1;