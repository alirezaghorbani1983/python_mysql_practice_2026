# Mysql

/*
SQL Null Values
SQL update Statement
SQL Delete Statement
SQL Alter Table
    --Add column in existing Column
    --Modify/alter Column
    --Alter Table-Drop column
*/

# create database

create database  customer;
use customer;
SHOW databases;

drop database customer;
show databases;

create database  customer;
use customer;

# create customer_info table

create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id)
);

SHOW tables;

## insert records in table

## SQL NULL value

insert into customer_info(first_name, last_name, salary)
values
('John', 'Daniel', 50000),
('Krish', 'Naik', 60000),
('Darius', 'Bengali', 70000),
('Chandan', 'Kumar', 40000),
('Ankit','Sharma', NULL);

select * from customer_info;

## How we retrieve Null values

select * from customer_info where salary is null;

select * from customer_info where salary is NOT null;

## SQL UPADTE  statement  to replace NULL  values

update customer_info set salary = 50000 where id = 5;

select * from customer_info;

## SQL ALTER TABLE
## add coulmn in existing table

alter table customer_info add email varchar(25);


## SQL DELETE statement

delete from customer_info where id = 5;

select * from customer_info;

alter table customer_info  add dob date;

## alter table modify column_format

alter table customer_info modify dob year;

desc customer_info;

## alter table for drop column

alter table customer_info drop column  email;



