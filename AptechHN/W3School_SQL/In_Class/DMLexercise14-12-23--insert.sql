USE DMLexercise
GO

SET IDENTITY_INSERT student ON;

INSERT INTO student(s_id,s_fname,s_lname) VALUES (12345,'Chris','Rock')
INSERT INTO student(s_id,s_fname,s_lname) VALUES (23456,'Chris','Farley')
INSERT INTO student(s_id,s_fname,s_lname) VALUES (34567,'David','Spade')
INSERT INTO student(s_id,s_fname,s_lname) VALUES (45678,'Liz','Lemon')
INSERT INTO student(s_id,s_fname,s_lname) VALUES (56789,'Jack','Donaghy')

SET IDENTITY_INSERT student OFF;

SET IDENTITY_INSERT courses.course_grades ON;

INSERT INTO courses.course_grades(cg_id, semester, c_id, s_id, grade) VALUES (2010101,'SP10',101005,34567,'D+')
INSERT INTO courses.course_grades(cg_id, semester, c_id, s_id, grade) VALUES (2010308,'FA10',101005,34567,'A-')
INSERT INTO courses.course_grades(cg_id, semester, c_id, s_id, grade) VALUES (2010309,'FA10',101001,45678,'B+')
INSERT INTO courses.course_grades(cg_id, semester, c_id, s_id, grade) VALUES (2011308,'FA11',101003,23456,'B-')
INSERT INTO courses.course_grades(cg_id, semester, c_id, s_id, grade) VALUES (2012206,'SU12',101002,56789,'A+')

SET IDENTITY_INSERT courses.course_grades OFF;

SET IDENTITY_INSERT courses.course ON;

INSERT INTO courses.course(c_id,c_name) VALUES (101001,'Intro to Computers')
INSERT INTO courses.course(c_id,c_name) VALUES (101002,'Programming')
INSERT INTO courses.course(c_id,c_name) VALUES (101003,'Databases')
INSERT INTO courses.course(c_id,c_name) VALUES (101004,'Websites')
INSERT INTO courses.course(c_id,c_name) VALUES (101005,'IS Management')

SET IDENTITY_INSERT courses.course OFF;

