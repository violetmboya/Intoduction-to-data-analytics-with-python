
CREATE DATABASE dataanalytics;
Use dataanalytics;
CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DepartmentID INT,
HireDate date
);

CREATE TABLE Department(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(25)
);

Create Table Projects(
ProjectsID INT PRIMARY KEY,
ProjectName VARCHAR(50),
StartDate date
);
Create Table Assignment(
AssignmentID INT PRIMARY KEY,
EmployeeID INT,
ProjectsID INT,
Role VARCHAR(50),
FOREIGN KEY (EmployeeID)REFERENCES Employees(EmployeeID),
FOREIGN KEY (projectID)REFERENCES Projects(ProjectID)
);


INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(101, 'Human Resources'),
(102, 'Information Technology'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales'),
(106, 'Operations'),
(107, 'Customer Service'),
(108, 'Legal'),
(109, 'Research and Development'),
(110, 'Administration');



