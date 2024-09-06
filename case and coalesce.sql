use dataanalytics;

SELECT
employeeid,
firstname,
lastname,
DepartmentID,
CASE departmentid
WHEN 101 THEN 'HR'
WHEN 102 THEN 'IT'
WHEN 103 THEN 'Finance'
ELSE 'Other'
END AS departmentName
FROM Employees;


SELECT
employeeid,
firstname,
lastname,
salary,
CASE
WHEN salary <50000 THEN 'Low'
WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium'
ELSE 'High'
END AS salary_level
FROM Employees;


SELECT
departmentid,
SUM(CASE
WHEN departmentid=101 THEN salary
ELSE 0
END) AS spent_101,
SUM(CASE
WHEN departmentid=102 THEN salary
ELSE 0
END) AS spent_102,
SUM(CASE
WHEN departmentid=103 THEN salary
ELSE 0
END) AS spent_103
From employees
GROUP BY departmentid;


ALTER TABLE Employees ADD Phonenumber varchar(100);
ALTER TABLE Employees DROP COLUMN Phonenumber;

ALTER TABLE Employees ADD Phonenumber varchar(100);
select *from Employees;

SELECT
employeeid,
firstname,
lastname,
COALESCE(Phonenumber, 'No phone number') AS contact_number
FROM Employees
Limit 5;

ALTER TABLE Department
 ADD Phonenumber varchar(100),
 ADD Email varchar(100);
 
 select * from department;

SELECT
Departmentname,
CASE
WHEN departmentid=101 THEN COALESCE(phonenumber, 'No phone')
WHEN departmentid=102 THEN COALESCE(email, 'No email')
ELSE 'Contact admin'
END AS contact_info
FROM department;

select * from projects;

SELECT
projectsid,
projectname,
startdate,
CASE
WHEN projectsid=1001 THEN 'Complete'
WHEN projectsid BETWEEN 1002 AND 1005 THEN 'Review'
ELSE 'Incomplete'
END AS project_status
FROM Projects;