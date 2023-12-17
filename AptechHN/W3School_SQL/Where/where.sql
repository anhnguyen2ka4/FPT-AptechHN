USE CustomersTable
GO

-- The SQL Where Clause

SELECT * FROM Customers WHERE Country='Viet Nam';
-- Text Fields vs. Numeric Fields
SELECT * FROM Customers WHERE CustomerID=6;
-- Operators in The Where Clause
SELECT * FROM Customers WHERE CustomerID >= 5;
