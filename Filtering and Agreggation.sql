use dataanalytics;

SELECT SUM(Salary) AS TotalSalary
From Employees2;

SELECT AVG(Salary) AS AVGSalary
From Employees2;

-- Find the latest hire date for each departmrnt
SELECT DepartmentID, MAX(HireDate) AS LatestHireDate
From Employees
GROUP BY DepartmentID;

-- Filtering
SELECT *FROM Employees2
WHERE Salary > 70000;

-- Select the DepartmentID and the count of employees for each department
SELECT  DepartmentID, COUNT(*) AS EmployeeCount
-- From the Employees table
FROM Employees
-- Group the results by departmentID
GROUP BY DepartmentID
-- only include groups where the count of employees is greater than 5
HAVING COUNT(*)>=2;

SELECT * FROM Employees2
WHERE Department='HR' OR Salary>=70000;

-- select who do not work in department 101
SELECT * FROM Employees2
WHERE NOT Department = 'HR';

SELECT * FROM Employees
WHERE DepartmentID IN (101, 102, 103);

SELECT * FROM Employees2
WHERE Salary BETWEEN 60000 AND 70000;

-- BEGIN WITH J
SELECT * FROM Employees2
WHERE Name LIKE 'J%';

-- END WITH E
SELECT * FROM Employees2
WHERE Name LIKE '%E';

-- in between ac
SELECT * FROM Employees2
WHERE Name LIKE '%ac%';