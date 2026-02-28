use classicmodels

show tables

select concat(trim(contactFirstName), ' ', trim(contactLastName)) from customers

select trim(contactFirstName) from customers

SELECT SUBSTR("SQL Tutorial", 5, 8) AS ExtractString;

SELECT SUBSTR(contactFirstName, 3, 3) as sub_firstname, contactFirstName from customers;

select contactFirstName, upper(contactFirstName), lower(contactFirstName)
from customers


select character_length(trim(contactFirstName)), trim(contactFirstName) from customers 

select character_length("Hello world") as ch

select MID('hello world', 2,3), SUBSTR('hello world', 2,3)


select MID(trim(contactFirstName), 2,3), SUBSTR(trim(contactFirstName), 2,3) from customers


select contactFirstName, ceiling(character_length(contactFirstName)/2) from customers
