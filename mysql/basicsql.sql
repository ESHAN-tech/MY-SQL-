-- Create and drop databases
-- create database temp1;
-- drop database temp1;
-- create database temp2;
-- drop database temp2;

-- Create the 'college' database and switch to it

CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;
USE college;

-- Create the 'student' table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- Insert records into the 'student' table
INSERT INTO student (id, name, age) VALUES (1, 'AMAN', 20);
INSERT INTO student (id, name, age) VALUES (2, 'RAM', 20);

-- Select all records from the 'student' table
SELECT * FROM student;
