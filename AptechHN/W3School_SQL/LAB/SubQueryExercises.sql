-- show the Course ID and grade of the courses that Jones has taken
SELECT CourseInfo.CID, CourseGrade.Grade
FROM StudentInfo
JOIN CourseGrade ON StudentInfo.SID = CourseGrade.SID
JOIN CourseInfo ON CourseGrade.CID = CourseInfo.CID
WHERE StudentInfo.S_Name = 'Jones';

--For each of the students with an IS major, to show the Course ID and the grades of all the courses they have taken
SELECT StudentInfo.SID, CourseInfo.CID, CourseGrade.Grade
FROM StudentInfo
JOIN CourseGrade ON StudentInfo.SID = CourseGrade.SID
JOIN CourseInfo ON CourseGrade.CID = CourseInfo.CID
WHERE StudentInfo.Major = 'IS';

-- show the phone number and name of the faculty who is teaching ISM 301
SELECT Faculty.F_Name, Faculty.F_Phone
FROM Faculty
JOIN CourseInfo ON Faculty.FID = CourseInfo.FID
WHERE CourseInfo.C_Name = 'ISM 301';

--For each of the students whose name starts with an ‘A’, to show the course name of all the courses that he/she has taken
SELECT StudentInfo.S_Name, CourseInfo.C_Name
FROM StudentInfo
JOIN CourseGrade ON StudentInfo.SID = CourseGrade.SID
JOIN CourseInfo ON CourseGrade.CID = CourseInfo.CID
WHERE StudentInfo.S_Name LIKE 'A%';

--show the name of the faculty who earns the highest salary
SELECT F_Name
FROM Faculty
WHERE Salary = (SELECT MAX(Salary) FROM Faculty);

--show the name(s) of the faculty who earns more than the average salary
SELECT F_Name
FROM Faculty
WHERE Salary > (SELECT AVG(Salary) FROM Faculty);

--To show the name(s) of the students who have gotten an A in ISM 218
SELECT StudentInfo.S_Name
FROM StudentInfo
JOIN CourseGrade ON StudentInfo.SID = CourseGrade.SID
JOIN CourseInfo ON CourseGrade.CID = CourseInfo.CID
WHERE CourseGrade.Grade = 'A' AND CourseInfo.C_Name = 'ISM 218';

-- show the grade in the ISM 218 course for student ID 2
SELECT CourseGrade.Grade
FROM CourseGrade
JOIN CourseInfo ON CourseGrade.CID = CourseInfo.CID
WHERE CourseGrade.SID = 2 AND CourseInfo.C_Name = 'ISM 218';

--show the name of the course where student ID 1 received an A
SELECT CourseInfo.C_Name
FROM CourseInfo
JOIN CourseGrade ON CourseInfo.CID = CourseGrade.CID
WHERE CourseGrade.SID = 1 AND CourseGrade.Grade = 'A';