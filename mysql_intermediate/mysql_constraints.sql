##  MySQL constraints

use customer;

CREATE TABLE student (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT
);

show tables;

desc student;

alter table student modify age int not null;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);

INSERT INTO person (id, first_name, last_name, age)
VALUES (1, 'Ali3', 'Ghorbani3', 45);

select * from person;


alter table person
add unique(first_name);

alter table person
add constraint uc_person unique(age, first_name);

desc person;

alter table person 
drop index uc_person;

## primary key

create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25), 
age int,
constraint pk_person primary key(id,last_name)
);

desc person1;

## all primary keys would be deleted
alter table person1
drop primary key;

desc person1;

ALTER table person1
add primary key(id);

alter table person1
drop primary key;

drop table person;

## Foreign key

use customer;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);

## how can we make primary key 
desc person;

ALTER TABLE person
DROP PRIMARY KEY;

alter table person
add constraint pk_person primary key(id,age);

ALTER TABLE person
DROP PRIMARY KEY,
ADD PRIMARY KEY (id);

ALTER TABLE person
DROP PRIMARY KEY;

drop table person;

-- Foreign key

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id)
);

desc person;

create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id)
);

alter table department
add foreign key(id) references person(id);

desc department;

drop table department;
drop table pesron;

## check contraints
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check(salary <50000)
);

show tables; 

drop table person;

insert into person values(1,"Alireza", "Ghorbani", 34,  60000);
# (2, "John", "simone", 52, 47000)

## check contraints
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check(salary <50000)
);

insert into person values(1,"Alireza", "Ghorbani", 34,  40000);

select * from person;

## Default constraint

drop table person;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
city_name varchar(25) default 'Rome'
);

desc person;