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
salary int not null DEFAULT 25000
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
SELECT name,marks,city FROM student WHERE marks > 80 OR city = "mumbai";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("mumbai","delhi");
SELECT * FROM student WHERE city NOT IN ("mumbai","delhi");

SELECT * FROM student LIMIT 4; --(limit table by four)

SELECT * FROM student ORDER BY marks ASC LIMIT 3;

SELECT max(marks) FROM student;
SELECT avg(marks) FROM student;

SELECT city,count(rollno) FROM student GROUP BY city;

SELECT city,count(rollno) FROM student GROUP BY city HAVING MAX(marks) > 90;

SELECT city 
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city ASC;

/*OPERATORS WITH CLAUS*/

/*TABLE RELATED QUERY*/

for safe mode on/off
SET SQL_SAFE_UPDATES = 0/1

UPDATE student
SET grade = "O"
WHERE grade = "A";

DELETE FROM student 
WHERE marks < 33;

-- FOREIGN KEY QUERY

CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO dept
VALUES
(101, "english"),
(102,"IT");

INSERT INTO teacher
VALUES
(101, "malik",101),
(102,"BOB",102);

UPDATE dept
SET id = "103"
WHERE id = "102";

-- FOREIGN KEY QUERY

ALTER TABLE student
ADD COLUMN age INT ;

ALTER TABLE student 
DROP COLUMN age;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

select * from student;

ALTER TABLE student 
MODIFY age VARCHAR(2);

ALTER TABLE student 
CHANGE age stu_age INT;

INSERT INTO student
(rollno,name,marks,stu_age)
VALUES
(107,"gargi",68,100);

select * from student;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE studs
RENAME TO student;

-- JOINS IN TABLE --

CREATE TABLE student(
id int primary key,
name varchar(50)
);

INSERT INTO student
(id,name)
VALUES
(101,"anil"),
(102,"bhumika"),
(103,"farah");

CREATE TABLE course(
id int primary key,
course varchar(50)
);

INSERT INTO course
(id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science");
(107,"computer science");

SELECT * 
FROM student
INNER JOIN course
ON student.id = course.id

-- use aliance in join
SELECT * 
FROM student as s 
INNER JOIN course as c
ON s.id = c.id
-- use aliance in join

SELECT * 
FROM student as s 
LEFT JOIN course as c
ON s.id = c.id

SELECT * 
FROM student as s 
RIGHT JOIN course as c
ON s.id = c.id;

SELECT * 
FROM student as s 
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT * 
FROM student as s 
RIGHT JOIN course as c
ON s.id = c.id;

-- EXCLUSIVE JOINS 
SELECT * 
FROM student as s 
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL;

SELECT * 
FROM student as s 
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL;

-- UNION it gives the unique data without repeating values in table 
-- UNION ALL it gives the all the data with repeating values in table 
SELECT course FROM course
UNION 
SELECT course FROM course;

-- JOINS IN TABLE --
/*TABLE RELATED QUERY*/

-- SQL Sub Query

-- inside student table

SELECT * FROM student;

SELECT AVG(marks)
FROM student;

SELECT name,marks
FROM student
WHERE marks > 74.333;

-- in this case we have problem when any student marks get disturbed therfore 

SELECT name,marks
FROM student
WHERE marks > (SELECT AVG(marks)FROM student);

SELECT rollno,name
FROM student
WHERE rollno % 2 = 0;

SELECT name,rollno
FROM student
WHERE rollno IN (SELECT rollno,name FROM student WHERE rollno % 2 = 0;)

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") AS temp;

-- Virtual table for your given limited or whole data 

CREATE VIEW view1 AS 
SELECT rollno,name,marks FROM student;

SELECT * FROM view1;

DROP VIEW view1;