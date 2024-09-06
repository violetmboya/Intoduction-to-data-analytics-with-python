create database Assignment;

use assignment;

create table Orders (OrderID int primary key,
Orderdate date,
ProductName varchar (30),
shippeddate date,
deliveryStatus varchar (50),
Quantity int
);

create table Customers (OrderID int,
CustomerID varchar (20),
phonenumber varchar (30),
customerName varchar (50),
Address varchar (50),
SalesrepID varchar (20)
);

create table Salesrep (SalesrepID varchar (20),
Salesperson varchar (30)
);

insert into Orders (OrderID,
Orderdate,
ProductName,
shippeddate, 
deliveryStatus, 
Quantity) values 
(001, '2024/01/02', 'zenta', '2024/01/05','Delivered',150),
(002, '2024/01/03', 'detal', '2024/01/07','Pending',200),
(003, '2024/01/04', 'cusons', '2024/01/09','Pending',70),
(004, '2024/01/05', 'menengai', '2024/01/12','Pending',500),
(005, '2024/01/06', 'kibuyu', '2024/01/18','Cancelled',600),
(006, '2024/01/02', 'jamaa', '2024/01/05','Delivered',370);


select* from orders;

insert into Customers (OrderID, 
CustomerID, 
phonenumber, 
customerName, 
Address,
SalesrepID) values
(001, 'CST1','0798547324','Wachira_M','kisumu','SLR10'),
(002, 'CST2','0718547524','Rhoda_K','kissi','SLR08'),
(003, 'CST3','0097547329','Salome_M','Nyeri','SLR06'),
(004, 'CST4','0778541320','Violet_A','Homabay','SLR07'),
(005, 'CST5','0791567323','John_O','Kakamega','SLR05'),
(006, 'CST6','0758540328','Sherif_w','kisumu','SLR10');

select* from customers;

insert into Salesrep (SalesrepID,
Salesperson) values
('SLR05', 'Nyaboke'),
('SLR06', 'Amondi'),
('SLR06', 'Wetangula'),
('SLR07', 'Butita'),
('SLR10', 'Ochieng'),
('SLR04', 'Immaculate');

select* from salesrep;

select orders.orderid, orders.productName, orders.quantity, customers.customername
from orders
inner join customers on orders.orderid=customers.orderid;

select  orders.quantity, customers.customername, orders.orderid, orders.ProductName
from customers
left join orders on orders.orderid=customers.orderid;

select customers.customerID,customers.customerName, orders.productname, salesrep.salesperson
from orders
inner join customers on orders.orderid=customers.orderid
inner join salesrep
on customers.salesrepid=salesrep.salesrepid;

select * from orders cross join salesrep;



  select*from customers;
  
  SELECT c.CustomerID AS OrderID1,
       s.SalesrepID AS SalesrepID2
FROM customers c
INNER JOIN salesrep s
ON c.CustomerName = c.CustomerName
AND c.CustomerID <> s.SalesrepID;


insert into Customers (OrderID, 
CustomerID, 
phonenumber, 
customerName, 
Address,
SalesrepID) values
(008, 'CST8','0718547524','Missi_K','kisIi','SLR010');

set sql_safe_updates =0;
delete from customers 
where customername ='missi_k';

select* from customers;
set sql_safe_updates=1;
insert into Customers (OrderID, 
CustomerID, 
phonenumber, 
customerName, 
Address,
SalesrepID) values
(008, 'CST8','0718547524','Missi_K','kisIi','SLR010');

select* from customers;

 select * from orders cross join customers;


use  assignment;

-- 
SELECT c1.CustomerID AS CustomerID1,
       c1.customerName AS CustomerName1,
       c2.CustomerID AS CustomerID2,
       c2.customerName AS CustomerName2,
       c1.SalesrepID
FROM customers c1
inner JOIN customers c2
ON c1.SalesrepID = c2.SalesrepID
AND c1.CustomerID <> c2.CustomerID
ORDER BY c1.SalesrepID, c1.CustomerID;


SELECT c1.CustomerID AS CustomerID1,
       c1.customerName AS CustomerName1,
       c2.CustomerID AS CustomerID2,
       c2.customerName AS CustomerName2,
       c1.SalesrepID as SalesrepID1,
       c2.SalesrepID as SalesrepID2
FROM customers c1
right JOIN customers c2
ON c1.SalesrepID = c2.SalesrepID
AND c1.CustomerID <> c2.CustomerID
ORDER BY c1.CustomerID, c2.CustomerID;

select * from orders;

USE assignment;


SELECT *
FROM Orders
FULL JOIN Customers ON Orders.OrderID = Customers.orderID;

use assignment;
SELECT 
    orders.OrderID, 
    orders.Orderdate, 
    orders.ProductName, 
    orders.Shippeddate, 
    orders.DeliveryStatus, 
    orders.Quantity, 
    Customers.CustomerName
FROM Orders
FULL JOIN Customers ON orders.OrderID = Customers.OrderID
LIMIT 0, 1000;

create table family( member_id varchar(10), names varchar(100), age int, parent_id varchar(10));
insert into family 
(member_id, names, age, parent_id)
values
("F1", "DARIDE", 4,"F5"),
("F2", "CAROL", 10, "F5"),
("F3", "MICHAEL", 12, "F5"),
("F4", "JOHNSON", 36," "),
("F5", "MARY", 40, "F6"),
("F6", "STEWART",70, "F4"),
("F7", "REGAN", 6, "F4"),
("F8", "ASHA", 8," ");

SELECT* FROM FAMILY;

SELECT * FROM CUSTOMERS;

SELECT PARENTS.NAMES AS PARENT_NAME, PARENTS.AGE AS PARENTS_AGE, CHILDS.NAMES AS CHILDS_NAME,CHILDS.AGE AS CHILDS_AGE
FROM FAMILY AS PARENTS
INNER JOIN FAMILY AS CHILDS
ON PARENTS.MEMBER_ID = CHILDS.PARENT_ID;


SELECT PARENTS.NAMES AS PARENT_NAME, PARENTS.AGE AS PARENTS_AGE, CHILDS.NAMES AS CHILDS_NAME,CHILDS.AGE AS CHILDS_AGE
FROM FAMILY AS PARENTS
INNER JOIN FAMILY AS CHILDS
ON PARENTS.MEMBER_ID = CHILDS.PARENT_ID
AND PARENTS.MEMBER_ID<> CHILDS.PARENT_ID
ORDER BY PARENTS.MEMBER_ID;
