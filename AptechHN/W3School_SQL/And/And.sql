USE Create_table
GO

SELECT *
FROM Customers
WHERE Country = 'Viet Nam' AND CustomerName LIKE 'R%';

SELECT * FROM Customers
WHERE Country = 'Viet Nam'
AND City = 'Nghe An'
AND PostalCode > '12000';

SELECT * FROM Customers
WHERE Country = 'Viet Nam' AND (CustomerName LIKE 'A%' OR CustomerName LIKE 'R%');