# creating a database
create database Intro_SQL

# using a database
use Intro_SQL;

# to view the tables in the database
show tables;

# creating a table
create table employees
(
emp_name varchar(50),
emp_id int not null,
manager_name varchar(50),
division int,
PRIMARY KEY (emp_id)
);

# selecting values from table
select * from employees;

# creating another table
create table emp_new
(
firstname varchar(20),
lastname varchar(20),
title varchar(5),
age int,
salary int
)

# alter table
ALTER table emp_new ADD gender varchar(1)

# checking the table
select * from emp_new;

# Deleting a column
ALTER table emp_new DROP gender;

# droping a table (deleting a table)
drop table emp_new;

# creating a random database to show drop operation on database
create database random_new;

# droping database
drop database random_new;