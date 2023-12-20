--Lấy ra dữ liệu của bảng Contact có ContactID>= 00 và ContactID<=200
SELECT *
FROM Person.Contact
WHERE ContactID >= 100 AND ContactID <= 200
--Lấy ra dữ liệu của bảng Contact có ContactID trong khoảng [100, 200]
SELECT * FROM Person.Contact
WHERE ContactID BETWEEN 100 AND 200
--Lấy ra những Contact có LastName kết thúc bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE '%e'
--Lấy ra những Contact có LastName bắt đầu bởi ký tự R hoặc A kết thúc bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE '[RA]%e'
--Lấy ra những Contact có LastName có 4 ký tự bắt đầu bởi ký tự R hoặc A kết thúc bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE '[RA]__e'
--Sử dụng INNER JOIN
SELECT Person.Contact.*
FROM Person.Contact INNER JOIN HumanResources.Employee ON
Person.Contact.ContactID=HumanResources.Employee.ContactID
SELECT Title, COUNT(*) [Title Number]
FROM Person.Contact
WHERE Title LIKE 'Mr%'
GROUP BY ALL Title
--GROUP BY với HAVING: mệnh đề HAVING sẽ lọc kết quả trong lúc được gộp nhóm
SELECT Title, COUNT(*) [Title Number]
FROM Person.Contact
GROUP BY ALL Title
HAVING Title LIKE 'Mr%'