use intro_sql

select count(*) from telco_churna where paymentmethod like 'e%'

select * from telco_churna where paymentmethod REGEXP '^e'

select * from telco_churna --customerID: v w x

select * from telco_churna 
where customerId like '%v%' 
OR customerID like '%v%' 
Or customerId like '%v%' --3180

select count(*) from telco_churna
where customerID REGEXP '[vwx]' --3180

select count(*) from telco_churna where customerid like '%v%'
or customerid like '%w%
or customerid like '%x%
or customerid like '%y%
or customerid like '%z%

select count(*) from telco_churna where customerid REGEXP '[vwxyz]'