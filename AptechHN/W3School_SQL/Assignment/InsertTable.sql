USE CitySoftware
GO

SET IDENTITY_INSERT Employee ON;

INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (1, 'Nguyen Van A', '0123456789', 'nguyenvana@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (2, 'Tran Thi B', '0987654321', 'tranthib@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (3, 'Le Van C', '0123456789', 'levanc@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (4, 'Pham Thi D', '0987654321', 'phamthid@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (5, 'Hoang Van E', '0123456789', 'hoangvane@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (6, 'Nguyen Thi F', '0987654321', 'nguyenthif@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (7, 'Tran Van G', '0123456789', 'tranvang@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (8, 'Le Thi H', '0987654321', 'lethih@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (9, 'Pham Van I', '0123456789', 'phamvani@gmail.com')
INSERT INTO Employee (EmployeeID, Name, Tel, Email) VALUES (10, 'Nguyen Thi J', '0987654321', 'nguyenthij@gmail.com')

SET IDENTITY_INSERT Employee OFF;

SET IDENTITY_INSERT Project ON;

INSERT INTO Project (ProjectID, ProjectName, StartDate, EndDate, Period, Cost) VALUES (11, 'Project 11', 2023-09-01, '2023-12-31', 3, 1000000)
INSERT INTO Project (ProjectID, ProjectName, StartDate, EndDate, Period, Cost) VALUES (12, 'Project 12', 2022-12-31, '2023-12-31', 12, 99999999)
INSERT INTO Project (ProjectID, ProjectName, StartDate, EndDate, Period, Cost) VALUES (13, 'Project 13', 2023-03-01, '2023-08-31', 5, 3000000)
INSERT INTO Project (ProjectID, ProjectName, StartDate, EndDate, Period, Cost) VALUES (14, 'Project 14', 2023-12-01, '2023-12-31', 1, 20000)
INSERT INTO Project (ProjectID, ProjectName, StartDate, EndDate, Period, Cost) VALUES (15, 'Project 15', 2023-05-01, '2023-12-01', 7, 68686868)


SET IDENTITY_INSERT Project OFF;

SET IDENTITY_INSERT Groups.Group1 ON;

INSERT INTO Groups.Group1 (GroupID,GroupName,LeaderID,ProjectID) VALUES(16,'G1',1,11)
INSERT INTO Groups.Group1 (GroupID,GroupName,LeaderID,ProjectID) VALUES(17,'G2',3,12)
INSERT INTO Groups.Group1 (GroupID,GroupName,LeaderID,ProjectID) VALUES(18,'G3',5,13)
INSERT INTO Groups.Group1 (GroupID,GroupName,LeaderID,ProjectID) VALUES(19,'G4',7,14)
INSERT INTO Groups.Group1 (GroupID,GroupName,LeaderID,ProjectID) VALUES(20,'G5',9,15)

SET IDENTITY_INSERT Groups.Group1 OFF;


INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (16,1,'Doing')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (16,2,'Doing')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (17,3,'Doing')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (17,4,'Doing')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (18,5,'Done')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (18,6,'Done')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (19,7,'Prepare')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (19,8,'Prepare')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (20,9,'Doing')
INSERT INTO Groups.GroupDetail(GroupID,EmployeeID,Status) VALUES (20,10,'Doing')

