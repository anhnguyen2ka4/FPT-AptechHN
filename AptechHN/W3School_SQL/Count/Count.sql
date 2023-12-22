USE Create_table
GO

SELECT COUNT(*)
FROM Products;

SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;

SELECT COUNT(ProductName)
FROM Products;

SELECT COUNT(DISTINCT Price)
FROM Products;

SELECT COUNT(*) AS [number of records]
FROM Products;