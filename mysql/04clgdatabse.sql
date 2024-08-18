CREATE DATABASE college1;
USE college1;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT  INTO student (rollno , name , marks , grade , city )
VALUES
(101 ,"Harsh" , 98 , "A" , "pune"),
(102 ,"nisha" , 97, "A" , "punjab"),
(103 ,"neha" , 90 , "A" , "luknow"),
(104 ,"Hari" , 89 , "B" , "barabanki"),
(105 ,"Hariom" , 88 , "B" , "shultanpur"),
(106 ,"eshan" , 98 , "A" , "kanpur");

select rollno , name from student;
select distinct grade from student;
select * from student where marks >95;
select * from student where grade = "B";
select * from student where marks+10 >100;
SELECT * FROM student  WHERE  marks > 80 AND city =" pune";
SELECT * FROM student  WHERE  marks > 80 OR grade ="A";
SELECT * FROM student  WHERE  marks BETWEEN 80 AND 90;
SELECT * FROM student  WHERE  city IN ("pune" , "Punjab");
SELECT * FROM student  WHERE  city NOT IN ("pune" , "Punjab");
SELECT * FROM student  LIMIT 3 ;
select * from student where marks >80 LIMIT 3;
SELECT * FROM student ORDER BY name ASC LIMIT 4;
-- AGGREGATE FUNCTION._.
SELECT AVG(marks)
FROM student;
SELECT MAX( marks) FROM student;

-- GROUP BY clause._._.
 
SELECT city ,name, count(rollno)
FROM student
GROUP BY city , name ;

select grade, count(rollno)
from student
group by grade
order by grade;

-- update query ._._._

update student
set grade = "O"
where grade = "A";

 

