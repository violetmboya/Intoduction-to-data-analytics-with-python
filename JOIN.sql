use dataanalytics;


SELECT Employees.FirstName, Employees.LastName, Department.DepartmentName
FROM Employees
INNER JOIN Department ON Employees.DepartmentID = Department.departmentID;

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName,
 Projects.ProjectsID, Projects.ProjectName
FROM Employees
CROSS JOIN Projects;
