Student Result System - Setup Script

Database Name: StudentResultDB

Created in SSMS

CREATE DATABASE StudentResultDB;
GO
USE StudentResultDB;
GO

Table 1: Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    Student_Name VARCHAR(20)
);

Table 2: Subjects
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY IDENTITY(1,1),
    Subject_Name VARCHAR(100)
);

Table 3: Results (This links Students and Subjects)
CREATE TABLE Results (
    Result_ID INT PRIMARY KEY IDENTITY(1,1),
    Student_ID INT FOREIGN KEY REFERENCES Students(StudentID),
    Subject_ID INT FOREIGN KEY REFERENCES Subjects(SubjectID),
    Scores INT
);

Insert Students

INSERT INTO Students VALUES ('Prince Atto Yawson');
INSERT INTO Students VALUES ('Charles Ofori');
INSERT INTO Students VALUES ('James Appiah');
INSERT INTO Students VALUES('Blessing Jackson');
INSERT INTO Students VALUES('Mary Anokye');
INSERT INTO Students VALUES('Comfort Annobil');
INSERT INTO Students VALUES('Patience Wajah');
INSERT INTO Students VALUES('Seth Akyirefi');

Insert Subjects

INSERT INTO Subjects VALUES ('Mathematics');
INSERT INTO Subjects VALUES ('Integrated Science');
INSERT INTO Subjects VALUES ('English Language');
INSERT INTO Subjects VALUES ('Social Studies');
INSERT INTO Subjects VALUES ('Information and Communication Technology (ICT)');
INSERT INTO Subjects VALUES ('Religious and Moral Education (R.M.E)');
INSERT INTO Subjects VALUES ('Home Economics');
INSERT INTO Subjects VALUES ('Ghanaian Language');

Insert Results

INSERT INTO Results VALUES (1, 1, 78); 
INSERT INTO Results VALUES (1, 2, 65);
INSERT INTO Results VALUES (2, 1, 45); 
INSERT INTO Results VALUES (2, 3, 88); 
INSERT INTO Results VALUES (3, 2, 92);
INSERT INTO Results VALUES (3, 3, 71); 