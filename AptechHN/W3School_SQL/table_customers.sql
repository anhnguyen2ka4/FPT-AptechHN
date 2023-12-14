USE Master
GO
IF EXISTS (SELECT * FROM sys.databases WHERE Name='Customers_table')
DROP DATABASE Customers_table
GO
CREATE DATABASE Customers_table
GO
USE Customers_table
GO

-- create table
CREATE TABLE customers(
	customer_id INT IDENTITY (1,1) PRIMARY KEY,
	customer_name VARCHAR (50) NOT NULL,
	contact_name VARCHAR (25) NOT NULL,
	c_address VARCHAR (255) NOT NULL,
	city VARCHAR (50) NOT NULL,
	postal_code VARCHAR (50),
	country VARCHAR (25) NOT NULL
);