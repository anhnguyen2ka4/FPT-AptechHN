USE Master
GO
IF EXISTS (SELECT * FROM sys.databases WHERE Name='CustomersTable')
DROP DATABASE CustomersTable
GO
CREATE DATABASE CustomersTable
GO
USE CustomersTable
GO

-- create table
CREATE TABLE Customers(
	CustomerID INT IDENTITY (1,1) PRIMARY KEY,
	CustomerName VARCHAR (50) NOT NULL,
	ContactName VARCHAR (25) NOT NULL,
	CustomerAddress VARCHAR (255) NOT NULL,
	City VARCHAR (50) NOT NULL,
	PostalCode VARCHAR (50),
	Country VARCHAR (25) NOT NULL
);