# using the database
use Intro_SQL;

# showing the tables
show tables;

# creating a new table emp_info
create table emp_info
(
first_name varchar(20),
last_name varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20),
PRIMARY KEY (id)
);

# inserting the rows in the table
insert into emp_info values('John','Jones',99980,45,'Payson','Arizona');
insert into emp_info values('Mary','Jones',99982,25,'Payson','Arizona');
insert into emp_info values('Eric','Edwards',88232,32,'San Diego','California');
insert into emp_info values('Mary Ann','Edwards',88233,32,'Phonix','Arizona');
insert into emp_info values('Ginger','Howell',98002,42,'Cottonwood','Arizona');
insert into emp_info values('Sebastian','Smith',92001,23,'Gila Bend','Arizona');
insert into emp_info values('Gus','Gray',22322,35,'Bagdad','Arizona');
insert into emp_info values('Mary Ann','May',32326,52,'Tucson','Arizona');
insert into emp_info values('Erica','William',32327,60,'Show','Low Arizona');
insert into emp_info values('Leoroy','Brown',32380,22,'Pinetop','Arizona');
insert into emp_info values('Elory','Cleaver',32382,22,'Globe','Arizona');

# selecting from the table
select * from emp_info;
select first_name, last_name from emp_info;

# selecting from table using alias 
select first_name as First_Name, last_name as Last_Name from emp_info;

# count function
select count(id) from emp_info;
select count(*) from emp_info;

# using alias
select count(*) as Record_Count from emp_info;

# selecting first_name, last_name, city from the table
select first_name, last_name, city from emp_info;

# select rows where age > 30
select * from emp_info where age>30;

# select rows where age>30 and age<50
select * from emp_info where age>30 and age<50;

# select first_name where name starts with 'E'
select * from emp_info where first_name like'E%';

# select last_name where name ends with 's'
select * from emp_info where last_name like'%s';

# select rows where age=22 or age=32
select * from emp_info where age = 22 or age = 32;

# select rows from table where age is in 22 or 32 (using in operator)
select * from emp_info where age in (22,32);

# select rows from table where state has letter 'f' in it
select * from emp_info where state like '%f%';

# select rows from table where city has letter 't' in it
select * from emp_info where city like '%t%';

# select rows from table where first_name starts with 'er'
select * from emp_info where first_name like 'er%';

# select rows from table where first_name is Erica and last_name is Williams and id is 32327
select * from emp_info where first_name = 'Erica' and last_name = 'Williams' and id = 32327;