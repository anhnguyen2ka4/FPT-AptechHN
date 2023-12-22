USE Create_table
GO

SELECT MIN(Price)
FROM Products;

SELECT MAX(Price)
FROM Products;

SELECT MIN(Price) AS SmallestPrice
FROM Products;