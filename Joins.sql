# creating a new database
create database join_sql;

# using that database
use join_sql;

# showing tables
show tables;

# creating customers table
create table customers
(
customerid int not null,
customername varchar(100),
contactname varchar(100),
address varchar(100),
city varchar(100),
postalcode varchar(10),
country varchar(20),
PRIMARY KEY (customerid)
);

# creating order table
create table orders
(
OrderID int not null,
CustomerID int,
EmployeeID int,
OrderDate datetime,
ShipperID int,
PRIMARY KEY (orderid)
);

# Inserting into Customers table
INSERT INTO customers VALUES (1, 'Satyajit', 'Satyajit', 'Hong Kong', 'Hong Kong', 000000, 'Hong Kong SAR');
INSERT INTO customers VALUES (2, 'Shalini', 'Shalini', 'Bangalore', 'Bangalore', 000000, 'India');
INSERT INTO customers VALUES (3, 'Rupa', 'Rupa', 'Bangalore', 'Bangalore', 000000, 'India');
INSERT INTO customers VALUES (4, 'Shuvrajit', 'Shuvrajit', 'Bangalore', 'Bangalore', 000000, 'India');
INSERT INTO customers VALUES (5, 'Priya', 'Priya', 'Bangalore', 'Bangalore', 000000, 'India');
INSERT INTO customers VALUES (6, 'Ramesh', 'Ramesh', 'Bangalore', 'Bangalore', 000000, 'India');
INSERT INTO customers VALUES (7, 'Suresh', 'Suresh', 'Delhi', 'Delhi', 000000, 'India');
INSERT INTO customers VALUES (8, 'Sid', 'Sid', 'Mumbai', 'Mumbai', 000000, 'India');
INSERT INTO customers VALUES (9, 'Navya', 'Navya', 'Mumbai', 'Mumbai', 000000, 'India');
INSERT INTO customers VALUES (10, 'Naina', 'Naina', 'Pune', 'Pune', 000000, 'India');

# selcting customer table
select * from customers;

# Inserting into Orders table
INSERT INTO orders VALUES (901, 1, 1, sysdate(), 92801);
INSERT INTO orders VALUES (902, 1, 1, sysdate()-10, 92801);
INSERT INTO orders VALUES (903, 4, 4, sysdate()-6, 92801);
INSERT INTO orders VALUES (904, 5, 5, sysdate()-30, 92801);
INSERT INTO orders VALUES (905, 6, 6, sysdate()-5, 92801);

# selecting order table
select * from orders;

# performing LEFT JOIN
select  c.customerid, c.customername, c.country, o.orderid, o.orderdate 
from customers c LEFT JOIN orders o
ON c.customerid = o.customerid;

# performing RIGHT JOIN
select  c.customerid, c.customername, c.country, o.orderid, o.orderdate 
from customers c RIGHT JOIN orders o
ON c.customerid = o.customerid;

# performing INNER JOIN
select  c.customerid, c.customername, c.country, o.orderid, o.orderdate 
from customers c INNER JOIN orders o
ON c.customerid = o.customerid;

select  c.customerid, c.customername, c.country, o.orderid, o.orderdate 
from customers c, orders o
WHERE c.customerid = o.customerid;

# There is no FULL JOIN in MySQL but we can do that using UNION
select  c.customerid, c.customername, c.country, o.orderid, o.orderdate 
from customers c LEFT OUTER JOIN orders o
ON c.customerid = o.customerid;
UNION
select  c.customerid, c.customername, c.country, o.orderid, o.orderdate 
from customers c RIGHT OUTER JOIN orders o
ON c.customerid = o.customerid;

# Performing CROSS JOIN
select  c.customerid, c.customername, c.country, o.orderid, o.orderdate 
from customers c CROSS JOIN orders o
ON c.customerid = o.customerid;