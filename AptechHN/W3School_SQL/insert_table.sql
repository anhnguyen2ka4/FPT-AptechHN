USE Create_table
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


SET IDENTITY_INSERT Categories ON;

INSERT INTO Categories(CategoryID,CategoryName,Description) VALUES (1,'Beverages','Soft drinks,coffees,teas,bears and ales')
INSERT INTO Categories(CategoryID,CategoryName,Description) VALUES (2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings')
INSERT INTO Categories(CategoryID,CategoryName,Description) VALUES (3,'Confections','Desserts, candies, and sweet breads ')
INSERT INTO Categories(CategoryID,CategoryName,Description) VALUES (4,'Dairy Products','Cheese')
INSERT INTO Categories(CategoryID,CategoryName,Description) VALUES (5,'Grains/Cereals','Breads, crackers, pasta, and cereal ')
INSERT INTO Categories(CategoryID,CategoryName,Description) VALUES (6,'Meat/Poultry','Prepared meats')
INSERT INTO Categories(CategoryID,CategoryName,Description) VALUES (7,'Produce','Dried fruit and bean curd')
INSERT INTO Categories(CategoryID,CategoryName,Description) VALUES (8,'Seafood','Seaweed and fish')

SET IDENTITY_INSERT Categories OFF;

SET IDENTITY_INSERT Employees ON;

INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (1,'Davolio','Nancy','12/8/1968','EmpID1.pic','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of Toastmasters International. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (2,'Fuller','Andrew','2/19/1952','EmpID2.pic','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (3,'Leverling','Janet','8/30/1963','EmpID3.pic','Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (4,'Peacock','Margaret','9/19/1958','EmpID4.pic','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (5,'Buchanan','Steven','3/4/1955','EmpID5.pic','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses Successful Telemarketing and International Sales Management. He is fluent in French. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (6,'Suyama','Michael','7/2/1963','EmpID6.pic','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses Multi-Cultural Selling and Time Management for the Sales Professional. He is fluent in Japanese and can read and write French, Portuguese, and Spanish. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (7,'King','Robert','5/29/1960','EmpID7.pic','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled Selling in Europe, he was transferred to the London office. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (8,'Callahan','Laura','1/9/1958','EmpID8.pic','Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (9,'Dodsworth','Anne','7/2/1969','EmpID9.pic','Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German. ')
INSERT INTO Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Note) VALUES (10,'West','Adam','9/19/1928','EmpID10.pic','An old chum')

SET IDENTITY_INSERT Employees OFF;