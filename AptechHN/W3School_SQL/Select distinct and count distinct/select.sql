USE Customers_table
GO

-- Use SELECT DISTINCT
SELECT DISTINCT country FROM customers;

-- Use SELECT without DISTINCT 
SELECT country FROM customers;

-- Result of two lines code are different.

-- Use Count Distinct
SELECT COUNT(DISTINCT country) FROM customers;
-- we can see 6 different countries in the table