USE Create_table
GO

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;