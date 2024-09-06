use dataanalytics;

SELECT
employeeid,
firstname,
lastname,
departmentid,
ROW_NUMBER() OVER (PARTITION BY departmentid ORDER BY lastname) AS
row_num
FROM employees;

update employees set departmentid=102 where employeeid=11;


select * from employees;

insert into employees(employeeid,firstname,lastname,departmentid,salary,phonenumber)
values
(13,'Cebby','Amondi',103,40000,0700336677),
(14,'Wamboi','auma',102,3000,0124252627);

select * from employees;

SET SQL_SAFE_UPDATES = 0;

update employees set salary=40000 where employeeid= 13 or 14;

SET SQL_SAFE_UPDATES = 1;

SELECT
employeeid,
firstname,
lastname,
departmentid,
salary,
RANK() OVER (PARTITION BY departmentid ORDER BY salary DESC) AS ranks
FROM employees;

SET SQL_SAFE_UPDATES = 0;

update employees
set salary = round(rand()*(100000),2);

update employees set salary=50000 where employeeid= 13;
update employees set salary=50000 where employeeid= 14;

select * from employees;

SELECT
employeeid,
firstname,
lastname,
departmentid,
salary,
SUM(salary) OVER (PARTITION BY departmentid) AS total_salary
FROM employees;

SELECT
employeeid,
firstname,
lastname,
departmentid,
salary,
AVG(salary) OVER (ORDER BY employeeid ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM employees;

WITH EmployeeSalaries AS(
SELECT
employeeid,
firstname,
lastname,
salary,
departmentid
FROM employees
WHERE salary>50000
)
SELECT
departmentid,
AVG(salary) AS avg_salary
FROM EmployeeSalaries
GROUP BY departmentid;
