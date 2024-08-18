-- Create the database
CREATE DATABASE mystudent;

-- Use the database
USE mystudent;

-- Create the table
CREATE TABLE mystudent (
    name VARCHAR(50),
    rollno INT PRIMARY KEY,
    marks INT NOT NULL,
    city VARCHAR(30)
);

-- Insert data into the table
INSERT INTO mystudent (name, rollno, marks, city) 
VALUES
("harsh", 31, 79, "delhi"),
("Eshan", 32, 80, "PUNE"),
("SURESH", 33, 90, "delhi"),
("RAMESH", 34, 69, "PUNE");

-- Query to find average marks in each city in ascending order
-- SELECT city, AVG(marks) AS average_marks
-- FROM mystudent
-- GROUP BY city
-- ORDER BY average_marks ASC; self try 
-- write the query to find avg marks in each city in ascending order 

select city , avg(marks)
from mystudent 
group by city
order by avg(marks) ASC ;

select city from mystudent
group by city
having max(marks) > 90;
