 Student Result System 

Database Name: StudentResultDB

Student Result System built in SQL Server Management Studio (SSMS). Covers 3 tables with foreign keys, JOINs, GROUP BY for average, UPDATE and DELETE operations. Built as beginner project.

 Database Structure

Students - Student_ID (PK), Student_Name
Subjects - Subject_ID (PK), Subject_Name
Results - Result_ID (PK), Student_ID (FK), Subject_ID (FK), Scores, Grade

 Files

Setup.sql - Creates database, tables, and inserts sample data
My_Solutions.sql - Solutions for 7 tasks (SELECT, UPDATE, JOIN, DELETE, GROUP BY)

 What I Learned

- CREATE DATABASE, CREATE TABLE with PRIMARY KEY and FOREIGN KEY
- INSERT, SELECT, WHERE, UPDATE, DELETE
- JOIN 3 tables to get Student_Name, Subject_Name, Scores
- GROUP BY + AVG() to calculate average score per student
- ALTER TABLE ADD column + SET KEYWORD for Pass/Fail Grade

 How To Run

1. Open SSMS
2. Run Setup.sql
3. Run My_Solutions.sql one task at a time