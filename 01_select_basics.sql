-- Day 1: SQL Basics (DDL + DML + Basic SELECT & WHERE)

-- DDL (Data Definition Language)
-- create database
CREATE DATABASE ecommerce;

-- use database
USE ecommerce;

-- Create Table
CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

-- DML (Data Manipulation Language)
-- Insert Data
INSERT INTO customers VALUES
(1, 'Amit', 'Bangalore', 25),
(2, 'Sneha', 'Mysuru', 30),
(3, 'Rahul', 'Chennai', 28);

-- DQL (Data Query Language)
-- View Data
SELECT * FROM customers;

-- Select Only Name And City
SELECT name, city FROM customers;

-- Filter by City
SELECT * FROM customers
WHERE city = 'Mysuru';

-- Filter by Age
SELECT * FROM customers
WHERE age > 25;

-- Day 1 Practice Questions

-- Create Another Table Orders

CREATE TABLE orders1 (
	order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT,
    city VARCHAR(50)
);

-- Insert Sample Data

INSERT INTO orders1 VALUES
(101, 1, 'Laptop', 55000, 'Bangalore'),
(102, 2, 'Phone', 20000, 'Mysuru'),
(103, 3, 'Tablet', 15000, 'Chennai'),
(104, 1, 'Headphones', 3000, 'Bangalore'),
(105, 2, 'Monitor', 12000, 'Mysuru');

-- Q1 - show all customers
SELECT * from customers;

-- Q2 - show only customer names
SELECT name FROM customers;

-- Q3 - show customers from bangalore
SELECT * FROM customers
WHERE city = 'Bangalore';

-- Q4 - Show customers age greater than 27
SELECT * FROM customers
WHERE age > 27;

-- Q5 - Show customers age less than 30
SELECT * FROM customers
WHERE age < 30;

-- Q6 - Show orders with amount greater than 10000
SELECT * FROM orders1
WHERE amount > 10000;

-- Q7 - show orders from Mysuru
SELECT * FROM orders1
WHERE city = 'Mysuru';

-- Q8 - show only product and amount
SELECT product, amount
FROM orders1;

-- Q9 - Show orders where amount less than 20000
SELECT * FROM orders1
WHERE amount < 20000;

-- Q10 - Show orders where product is Laptop
SELECT * FROM orders1
WHERE product = 'Laptop';

-- Q11 - Show customers not from Mysuru
SELECT * FROM customers
WHERE city != 'Mysuru';

-- Q12 - Show orders with amount greater than or equal to 15000
SELECT * FROM orders1
WHERE amount >= 15000;

-- Q13 - Show customers with age between 25 and 30
SELECT * FROM customers
WHERE age BETWEEN 25 AND 30;

-- Q14 - Show orders where amount is not equal to 3000
SELECT * FROM orders1
WHERE amount != 3000;

-- Q15 - Show customers whose age = 30
SELECT * FROM customers
WHERE age = 30;

-- Q16 - Show orders where amount > 10000 AND city = 'Mysuru'
SELECT * FROM orders1
WHERE amount > 10000 AND city = 'Mysuru';

-- Q17 - Show only product names from orders
SELECT product FROM orders1;

-- Q18 - Show customers not from Chennai
SELECT * FROM customers
WHERE city != 'Chennai';

-- Q19 - Show orders where amount between 10000 and 50000
SELECT * FROM orders1
WHERE amount BETWEEN 10000 AND 50000;
