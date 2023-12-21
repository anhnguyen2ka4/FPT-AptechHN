USE Exam
GO
CREATE PROCEDURE ViewTotalSalary
AS
BEGIN
    SELECT D.DepartmentID, D.DepartmentName, SUM(WS.Salary) as TotalSalary
    FROM Department D
    JOIN Employee E ON D.DepartmentID = E.DepartmentID
    JOIN WorkSchedule WS ON E.EmployeeID = WS.EmployeeID
    GROUP BY D.DepartmentID, D.DepartmentName
    ORDER BY D.DepartmentID ASC;
END;

EXEC ViewTotalSalary;