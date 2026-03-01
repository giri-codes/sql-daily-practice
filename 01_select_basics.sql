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
