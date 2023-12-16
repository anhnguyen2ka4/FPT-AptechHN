USE CustomersTable
GO

SET IDENTITY_INSERT Customers ON;

INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(1,'Alfres Futterkiste','Maria Ander','Obere Str. 57','Berlin'  ,'12250','Germany')
INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(2,'Anbert Anhxtanh'   ,'Anhxtanh'   ,'Wall Street'  ,'New York','65404','American')
INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(3,'Ho Chi Minh' ,'Bac Ho'   ,'Nam Dan'  ,'Nghe An','100000','Viet Nam')
INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(4,'Lep-ton-xtoi'   ,'Lep'   ,'Babylon Garden'  ,'Ai Captian','404','Ai Cap')
INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(5,'Error and Bug'   ,'Fix Bug'   ,'Programming'  ,'Code','99999','Database')
INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(6,'Roman'   ,'kaka'   ,'Sideres'  ,'Shang hai','686868','China')
INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(7,'Ronandol Fake','Real','Wall Street','New York','65404','American')
INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(8,'Messi Normal','Fake','So 8 Ton That Thuyet','Ha Noi','100000','Viet Nam')
INSERT INTO Customers(CustomerID,CustomerName,ContactName,CustomerAddress,City,PostalCode,Country) VALUES(9,'Naruto','GoKu','8 Dragon Ball','Moonlight','9999','Viet Nam')

SET IDENTITY_INSERT Customers OFF;