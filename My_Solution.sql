Student Result System - My Solutions

Database Name: StudentResultDB

USE StudentResultDB;
GO

Task 1: Show all results where score is less than 50

SELECT * FROM Results
WHERE Score < 50;

Task 2: Update Charles Ofori's Maths score from 45 to 55 

UPDATE Results
SET Scores = 55
WHERE Student_ID = 2 AND Subject_ID = 1;

Task 3: Show Student_Name, Subject_Name, Scores - JOIN 3 tables

SELECT Students.Student_Name, Subjects.Subject_Name, Results.Scores
FROM Results
JOIN Students ON Students.Student_ID = Results.Student_ID;
JOIN Subjects ON Subjects.Subject_ID = Results.Subject_ID;

Task 4: Delete James Appiah's Science result

DELETE FROM Results
WHERE Result_ID = 2;

Task 5: Show each student's average score

SELECT Student_ID, AVG(Scores) AS AverageScore
FROM Results
GROUP BY Student_ID;

Task 6: Show Student_Name and Average Score (Headmaster Report)

SELECT Students.Student_Name, AVG(Results.Scores) AS AverageScore
FROM Results
JOIN Students ON Results.Student_ID = Students.Student_ID
GROUP BY Students.Student_Name;

Task 7: Add Grade column and set Pass / Fail

ALTER TABLE Results ADD Grade VARCHAR(30);

UPDATE Results
SET Grade = 'Pass' 
  WHERE Scores >= 
 UPDATE RESULTS
SET Grade = 'Fail'
WHERE Scores < 50
SELECT * FROM Results;