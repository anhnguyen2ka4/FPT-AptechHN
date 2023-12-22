USE Create_table
GO

SELECT * FROM Customers
ORDER BY CustomerID DESC;

SELECT * FROM Customers
ORDER BY CustomerName;

SESELECT * FROM Customers
ORDER BY Country, CustomerName;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;