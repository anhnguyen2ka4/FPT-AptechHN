USE CitySoftware
GO

-- viết câu lệnh thay đổi các trường với thuộc tính khóa vừa xác định.
ALTER TABLE Employee ADD Address VARCHAR(255);

--a. Hiển thị thông tin của tất cả nhân viên
SELECT * FROM Employee;
--b. Liệt kê danh sách nhân viên đang làm dự án 'Project 13'
SELECT E.* 
FROM Employee E
JOIN Groups.Group1 G ON E.EmployeeID = G.LeaderID
JOIN Project P ON G.ProjectID = P.ProjectID
WHERE P.ProjectName = 'Project 13';
--c. Thống kê số lượng nhân viên đang làm việc tại mỗi nhóm
SELECT G.GroupID, COUNT(E.EmployeeID) as NumberOfEmployees
FROM Groups.Group1 G
JOIN Groups.GroupDetail GD ON G.GroupID = GD.GroupID
JOIN Employee E ON GD.EmployeeID = E.EmployeeID
GROUP BY G.GroupID;
--d. Liệt kê thông tin cá nhân của các trưởng nhóm
SELECT E.*
FROM Employee E
JOIN Groups.Group1 G ON E.EmployeeID = G.LeaderID;
--e. Liệt kê thông tin về nhóm và nhân viên đang làm các dự án có ngày bắt đầu làm trước ngày 2023/01/20
SELECT E.*, G.*, P.*
FROM Employee E
JOIN Groups.Group1 G ON E.EmployeeID = G.LeaderID
JOIN Project P ON G.ProjectID = P.ProjectID
WHERE P.StartDate < '2023-01-20';
--f. Liệt kê tất cả nhân viên dự kiến sẽ được phân vào các nhóm làm việc
SELECT E.*
FROM Employee E
WHERE E.EmployeeID NOT IN (SELECT GD.EmployeeID FROM Groups.GroupDetail GD);
--g. Liệt kê tất cả thông tin về nhân viên, nhóm làm việc, dự án của những dự án đã hoàn thành
SELECT E.*, G.*, P.*
FROM Employee E
JOIN Groups.Group1 G ON E.EmployeeID = G.LeaderID
JOIN Project P ON G.ProjectID = P.ProjectID
WHERE P.EndDate < GETDATE();
--Kiểm tra: a. Đảm bảo ngày hoàn thành dự án sau ngày bắt đầu dự án
ALTER TABLE Project
ADD CONSTRAINT CheckDates CHECK (EndDate > StartDate);
--b. Đảm bảo trường tên nhân viên không được null
ALTER TABLE Employee
MODIFY Name VARCHAR(100) NOT NULL;
--c. Đảm bảo trạng thái làm việc chỉ nhận một trong 3 giá trị: in progress, pending, done
ALTER TABLE Groups.GroupDetail
ADD CONSTRAINT CheckStatus CHECK (Status IN ('Doing', 'Done', 'Prepare'));
--d. Đảm bảo trường giá trị dự án phải lớn hơn 1000
ALTER TABLE Project
ADD CONSTRAINT CheckCost CHECK (Cost > 1000);
--e. Đảm bảo trưởng nhóm làm việc phải là nhân viên
ALTER TABLE Groups.Group1
ADD CONSTRAINT LeaderID FOREIGN KEY (LeaderID) REFERENCES Employee(EmployeeID);
--f. Đảm bảo trường điện thoại của nhân viên chỉ được nhập số và phải bắt đầu bằng số 0
ALTER TABLE Employee
ADD CONSTRAINT CheckTel CHECK (Tel LIKE '0%' AND Tel NOT LIKE '%[^0-9]%');
--Tạo các thủ tục lưu trữ23: a. Tăng giá thêm 10% của các dự án có tổng giá trị nhỏ hơn 2000
CREATE PROCEDURE IncreaseCost
AS
UPDATE Project
SET Cost = Cost * 1.1
WHERE Cost < 2000;
-- Hiển thị thông tin về dự án sắp được thực hiện
CREATE PROCEDURE ShowUpcomingProjects
AS
SELECT *
FROM Project
WHERE StartDate > GETDATE();
-- Hiển thị tất cả các thông tin liên quan về các dự án đã hoàn thành
CREATE PROCEDURE ShowCompletedProjects
AS
SELECT *
FROM Project
WHERE EndDate < GETDATE();
--Tạo các chỉ mục: a. Tạo chỉ mục duy nhất tên là IX_Group trên 2 trường GroupID và EmployeeID của bảng GroupDetail
CREATE UNIQUE INDEX IX_Group
ON Groups.GroupDetail (GroupID, EmployeeID);
-- Tạo chỉ mục tên là IX_Project trên trường ProjectName của bảng Project gồm các trường StartDate và EndDate
CREATE INDEX IX_Project
ON Project (ProjectName, StartDate, EndDate);
--Tạo các khung nhìn: a. Liệt kê thông tin về nhân viên, nhóm làm việc có dự án đang thực hiện
CREATE VIEW WorkingEmployees AS
SELECT E.*, G.*
FROM Employee E
JOIN Groups.Group1 G ON E.EmployeeID = G.LeaderID
JOIN Project P ON G.ProjectID = P.ProjectID
WHERE P.EndDate > GETDATE();
-- Tạo khung nhìn chứa các dữ liệu sau: tên Nhân viên, tên Nhóm, tên Dự án và trạng thái làm việc của Nhân viên
CREATE VIEW EmployeeStatus AS
SELECT E.Name AS EmployeeName, G.GroupName, P.ProjectName, GD.Status
FROM Employee E
JOIN Groups.GroupDetail GD ON E.EmployeeID = GD.EmployeeID
JOIN Groups.Group1 G ON GD.GroupID = G.GroupID
JOIN Project P ON G.ProjectID = P.ProjectID;
