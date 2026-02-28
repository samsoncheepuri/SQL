# Creating a table
create table emp_excercise
(
emp_name varchar(50),
designation varchar(30),
age int,
salary float
);

# inserting columns
INSERT INTO emp_excercise VALUES ('Jonie Weber', 'Secretary', 28, 19500.00);
INSERT INTO emp_excercise VALUES ('Potsy Weber', 'Programmer', 32, 45300.00);
INSERT INTO emp_excercise VALUES ('Dark Smith', 'Programmer II', 45, 75020.00);
INSERT INTO emp_excercise VALUES ('Satyajit Pattnaik', 'IT Support', 31, 29500.00);
INSERT INTO emp_excercise VALUES ('Namrata Nayak', 'Programmer', 27, 65300.00);
INSERT INTO emp_excercise VALUES ('Ravi Kishan', 'Data Scientist', 21, 15020.00);
INSERT INTO emp_excercise VALUES ('Soniya Mukherjee', 'Data Analyst', 29, 29500.00);
INSERT INTO emp_excercise VALUES ('Shalini Guptae', 'Analyst II', 32, 45300.00);

# selecting rows
select * from emp_excercise;

# select rows whose salary > 30000
select * from emp_excercise where salary > 30000;

# select emp_name where age<30
select emp_name from emp_excercise where age < 30;

# select name and salary where designation is Programmer
select emp_name, salary from emp_excercise where designation like 'Programmer%';

# select where emp_name has 'ebe' in it
select * from emp_excercise where emp_name like '%ebe%';

# Update table's designation to Sr.Programmer where emp_name is Potsy Weber
SET SQL_SAFE_UPDATES = 0;
UPDATE emp_excercise set designation = 'Sr. Programmer' where emp_name = 'Potsy Weber';

# Select row where emp_name is Potsy Weber to check the above condition
select * from emp_excercise where emp_name = 'Potsy Weber';

# Update designation to Sr. Data Analyst where age = 30 and employee name is Soniya Mukherjee
UPDATE emp_excercise set designation = 'Sr. Data Analyst', age=30  where emp_name = 'Soniya Mukherjee';

# select all rows of the table
select * from emp_excercise;

# Update increment in age of Dark Smith
UPDATE emp_excercise set age = age + 1 where emp_name = 'Dark Smith';

# delete record from table where designation is IT Support
delete from emp_excercise where designation = 'IT Support';