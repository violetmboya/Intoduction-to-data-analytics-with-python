use dataanalytics;

UPDATE Employees SET LastName = 'Ndegwa' WHERE EmployeeID = 1;
UPDATE Projects SET ProjectName = 'Project Z' WHERE ProjectsID = 1005;

select *from Employees;

select *from Projects;

DELETE FROM Employees WHERE EmployeeID = 9;

select *from Employees;

insert into Employees(EmployeeID, FirstName, LastName, DepartmentID, HireDate)
values(11, 'Kiplagat', 'Kosgei', 104, '2024-01-01');

insert into Employees(EmployeeID, FirstName, LastName, DepartmentID, HireDate)
values(12, 'Violet', 'Mboya', 102, '2024-01-01');

ALTER TABLE Employees ADD Email VARCHAR(100);
select *from Employees;
ALTER TABLE Employees DROP COLUMN Email;
select *from Employees;

SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;













