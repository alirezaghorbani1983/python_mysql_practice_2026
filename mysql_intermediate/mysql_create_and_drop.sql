#  how to comment

# welcome to My Sql course

/*
hello
everyone
welcome
Success!
*/

# show database

show databases;
use world;

show tables;

select * from city;
select * from countrylanguage;

# create a database

create database customers;
use customers;
drop database customers;

create database customers;

show databases;

# create table in database

create table customer_info(id integer, first_name varchar(10), last_name varchar(10));


show tables;

select * from customer_info;

drop table customer_info;

insert into customer_info (id, first_name, last_name) values(1, "Alireza", "Ghorbani");

insert into customer_info (id, first_name, last_name) values(1, "John", "kool");

show tables;

drop database customers;

show databases;




