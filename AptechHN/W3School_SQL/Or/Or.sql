USE Create_table
GO

SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'American';

SELECT * FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Viet Nam';

SELECT * FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';

SELECT * FROM Customers
WHERE Country = 'Ai Cap' AND CustomerName LIKE 'L%' OR CustomerName LIKE 'R%';