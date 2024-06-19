CREATE DATABASE IF NOT EXISTS STUDENTS;

USE STUDENTS;

CREATE TABLE stdetail(
id int primary key,
name varchar(50),
age int not null
);

INSERT INTO stdetail VALUES(1,"LAKSHAY",22);

select * from stdetail;

show databases;

DROP DATABASE IF EXISTS world;

show tables;

INSERT INTO stdetail(id,age) VALUES(2,21);

/*Practice Q1*/

CREATE DATABASE IF NOT EXISTS GURUKULAM;

USE GURUKULAM;

CREATE TABLE employs(
id int primary key,
name varchar(50),
salary int not null
);

INSERT INTO employs VALUES(1,"AMAN",25000);

INSERT INTO employs
(name,id,salary)
VALUES
("bob",2,20000),
("harry",3,50000);

select * from employs;

/*Practice Q1*/

CREATE DATABASE IF NOT EXISTS college;

USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(30)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

/*OPERATORS WITH CLAUS*/

SELECT name,marks FROM student;

SELECT DISTINCT CITY FROM student; 

SELECT name,marks,city FROM student WHERE marks > 80 AND city = "mumbai";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("mumbai","delhi");
SELECT * FROM student WHERE city NOT IN ("mumbai","delhi");

SELECT * FROM student LIMIT 4;

SELECT * FROM student ORDER BY marks ASC LIMIT 3;

SELECT max(marks) FROM student;
SELECT avg(marks) FROM student;

SELECT city,count(rollno) FROM student GROUP BY city;

