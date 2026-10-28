# views

use customer;

show tables;

drop table student;


CREATE TABLE student (
    studentid INT AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    PRIMARY KEY (studentid)
);

select * from student;

insert into student values(1, "Alireza", "Ghorbani", 24),
(2, 'John', 'Taylor', 38),
(3, 'maryam', 'babayi', 39);

create table department(
student_id int auto_increment,
department_name varchar(25) not null,
foreign key(student_id) references student(studentid)
);

desc department;

insert into department values(1, 'Computer Science'),
(2,'Elctronics'),
(3, 'Mechanical');

select * from department;

create view student_info as
select first_name, last_name, age from student inner join department
using (studentid);

select * from student_info;

drop view student_info;


