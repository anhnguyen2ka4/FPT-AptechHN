USE Create_table
GO

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

UPDATE Customers
SET ContactName='update'
WHERE Country='Ai Cap';

UPDATE Customers
SET ContactName='update';