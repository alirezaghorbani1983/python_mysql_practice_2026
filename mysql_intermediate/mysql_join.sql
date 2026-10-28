## SQL Joins

/*
1. inner join
2. left join
3. right join
4.natural join
5. cross join
*/

use customer;

DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS student;

CREATE TABLE student (
    studentid INT AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    PRIMARY KEY (studentid)
);



SELECT * FROM student;

INSERT INTO student (studentid, first_name, last_name, age)
VALUES
(1, 'Krish', 'Naik', 31),
(2, 'Ram', 'Sharma', 31),
(3, 'Sam', 'Joe', 31),
(4, 'Ankit', 'Kumar', 27);

CREATE TABLE department (
    studentid INT,
    department_name VARCHAR(25),
    FOREIGN KEY (studentid) REFERENCES student(studentid)
);

INSERT INTO department (studentid, department_name)
VALUES
(1, 'Computer science'),
(2, 'Electronics'),
(3, 'Mechanical');

insert into student values(5, 'Ramesh', 'Singh', 27);

## inner join

select  student.first_name, student.last_name, student.age, department.department_name from student inner join department 
on student.studentid = department.studentid;

SELECT * FROM student;

## left join

select  student.first_name, student.last_name, student.age, department.department_name from student 
left join department 
on student.studentid = department.studentid;

SELECT * FROM department;

## right join

select  student.first_name, student.last_name, student.age, department.department_name from student 
right join department 
on student.studentid = department.studentid;

select  student.first_name, student.last_name, student.age, department.department_name from student 
left join department 
on student.studentid = department.studentid;


## full outer join

select  student.first_name, student.last_name, student.age, department.department_name from student 
left join department 
on student.studentid = department.studentid
union
select  student.first_name, student.last_name, student.age, department.department_name from student 
right join department 
on student.studentid = department.studentid;

## cross join

select  student.first_name, student.last_name, student.age, department.department_name from student 
cross join department;


## Natural join

select  student.first_name, student.last_name, student.age, department.department_name from student 
natural join department;


