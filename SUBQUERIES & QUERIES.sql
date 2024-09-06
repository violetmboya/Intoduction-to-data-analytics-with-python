use dataanalytics;

ALTER TABLE Employees ADD Salary INT;
select *from Employees;
select *from Employees;

SET SQL_SAFE_UPDATES = 0;

-- Update the salary column with random values
UPDATE Employees
SET Salary = ROUND(RAND() * (80000-40000), 2);

select *from Employees;
SET SQL_SAFE_UPDATES = 1;

SELECT DepartmentName,
(SELECT COUNT(*)
From Employees
WHERE Employees.DepartmentID = Department.DepartmentID) AS EmployeeCount
FROM Department;

SELECT *
FROM Employees
WHERE Salary = (SELECT MAX(Salary)
FROM Employees AS e
WHERE e.DepartmentID = Employees.DepartmentID);


SELECT DepartmentID,AverageSalary
FROM (SELECT DepartmentID,Avg(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID) AS AvgSalaries
WHERE AverageSalary > 50000;

SELECT DepartmentID,Avg(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID;




