use dataanalytics;

select distinct
employeeid,
TRIM(firstname) AS firstname,
TRIM(lastname) AS lastname
FROM employees;

SELECT *
FROM employees
WHERE phonenumber IS NOT NULL;