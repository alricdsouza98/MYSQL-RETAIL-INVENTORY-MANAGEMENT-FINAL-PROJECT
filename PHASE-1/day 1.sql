-- single line comment

/*

Multi
Line
Comments

*/

## This is also used as a single line comment in sql

/*
Usage of comments

1. Documentation: Comments can be used to document the purpose of a SQL query or the logic behind complex operations.alter
2. Debugging: You can temporarily disable parts of your SQL code by commenting them out, which is useful for debugging.
3. Collabration: When working in teams, comments help communicate the intent and functionality of the code to other developers.
*/

--------------------------------------------------- Database Queries -------------------------------------------------------------

-- create a database first
create database SKP;

-- to work on this database, you need to use it first
-- to execute (ctrl+enter)
use skp;

-- SQL is not a case-sensitive language (As- AGE or age will be treated as same word)

-- --------------------------------------------------------- Table Related Queries ----------------------------------------------------

-- Table-1 Student

create table Student (
id int primary key,  -- primary key= unique + not null
name varchar(100) not null,
std varchar(5),
Address varchar(150) not null,
age int check(age>0)
);

-- to display table data
select * from student;

-- insert a single values
insert into student(id,name,std,address,age)
values
(1, 'Kajal' , '1st A', 'Mumbai' ,6);

-- insert records without writing attributes name
insert into student values(2,'kavya' , '1st A' , 'Mumbai' , 6);

-- insert multiple records into a table
insert into student
values
(3, 'Riya' , '1st A', 'Mumbai' ,6),
(4, 'Omkar' , '1st A' , 'Mumbai' ,6),
(5, 'Anamika' , '1st A' , 'Mumbai' ,6),
(6, 'yash' , '1st A' , 'Mumbai' ,6),
(7, 'Prasad' , '1st A' , 'Mumbai' ,6),
(8, 'Rahul' , '1st A' , 'Mumbai' ,6),
(9, 'Trisha' , '1st A', 'Mumbai' ,6),
(10, 'Riya' , '1st A' , 'Mumbai' ,6);

-- to remove complete records from table
truncate table student;

-- to remove complete records and attributes from table
drop table student;


-- Table 2: Teachers
CREATE TABLE Teachers (
     TeachersID INT PRIMARY KEY,
     Name VARCHAR(100),
     Subject VARCHAR(50),
     Experience INT,
     Email VARCHAR(100)
);

 -- to display table data
   select * from Teachers;
   
   -- insert value in a table 

INSERT INTO Teachers (TeachersID, Name, Subject, Experience, Email) VALUES
(1, 'Mr Rajesh Kumar' , 'Mathematics' , 10, 'rajesh.kumar@example.com'),
(2, 'Ms Anita Desai', 'Science' , 8, 'anita.desai@example.com'),
(3, 'Mr Sanjay Gupta' , 'English' , 12, 'sanjay.gupta@example.com'),
(4, 'Ms Priya Sharma' , 'History' , 5, 'priya.sharma@example.com'),
(5, 'Mr Rakesh Mehta' , 'Geography' , 15, 'rakesh.mehta@example.com');

-- to remove complete records from table
truncate table teachers;

-- to remove complete records and attributes from table
drop table teachers;


-- Table 3: Classes
CREATE TABLE Classes (
     ClassID INT PRIMARY KEY,
     ClassName VARCHAR(10),
     Section CHAR(1),
     TotalStudents INT,
     TeacherID INT,
     FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

-- to display table data
select * from Classes;

-- insert value in a table

INSERT INTO Classes (ClassID, ClassName, Section, TotalStudents, TeacherID) values
(1, '10th' , 'A' , 30, 1),
(2, '9th' , 'B' , 25, 2),
(3, '11th' , 'C' , 20, 3),
(4, '8th' , 'A' , 28, 4),
(5, '12th' , 'B' , 22, 5);

-- to remove complete records from tables
truncate table classes;

-- to remove complete records and attributes from tables
drop table classes;


-- Table 4: Subjects
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR (50),
    Credits INT,
    ClassID INT,
    FOREIGN KEY (CLASSID) REFERENCES Classes (ClassID)
);

-- to display table data
select * from subjects;

-- insert value in a table

INSERT INTO Subjects (SubjectID, SubjectName, Credits, ClassID) VALUES
(1, 'Mathematics', 4, 1),
(2, 'Science' , 4, 2),
(3, 'English' , 3, 3),
(4, 'History' , 3, 4),
(5, 'Geography' , 3, 5);

-- to remove complete records from tables
truncate table subjects;

-- to remove complete records and attributes from tables
drop table subjects;

-- Table 5: Exams
CREATE TABLE Exams (
   ExamID INT PRIMARY KEY,
   ExamName VARCHAR (50),
   Date DATE,
   TotalMarks INT,
   ClassID INT,
   FOREIGN KEY (ClassID) REFERENCES Classes (ClassID)
);

-- to display table data
select * from exams;

-- insert value in a table

INSERT INTO Exams (ExamID, ExamName, Date, TotalMarks, ClassID) VALUES
(1, 'Mid Term Exam' , '2023-10-15' , 100, 1),
(2, 'Final Exam' , '2023-12-20', 100, 2),
(3, 'Unit Test' , '2023-11-10' , 50, 3),
(4, 'Quarterly Exam' , '2023-09-25' , 75, 4),
(5, 'Annual Exam' , '2024-03-15' , 100, 5);

-- to remove complete records from tables
truncate table Exams;

-- to remove complete records and attributes from tables
drop table Exams;

-- Table 6 Attendance
CREATE TABLE Attendance (
AttendanceID INT PRIMARY KEY,
StudentID INT,
ClassID INT,
Date DATE,
Status ENUM('Present', 'Absent'),
FOREIGN KEY (STUDENTID) REFERENCES Students(StudentID),
FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

-- to display table data
select * from Attendance;

-- insert value in a table

INSERT INTO Attendance (AttendanceID, StudentID, ClassID, Date, Status) VALUES
(1, 1, 1, '2023-10-01' , 'Present'),
(2, 2, 2, '2023-10-01' , 'Absent'),
(3, 3, 3, '2023-10-01' , 'Present'),
(4, 4, 4, '2023-10-01' , 'Present'),
(5, 5, 5, '2023-10-01' , 'Absent');

-- to remove complete records from tables
truncate table Attendance;

-- to remove complete records and attributes from tables
drop table Attendance;

