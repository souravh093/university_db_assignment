-- Active: 1729224608991@@127.0.0.1@5432@university_db
-- Assignment 7 All Queries

-- Create Student Table with the following fields
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    email VARCHAR(100) UNIQUE NOT NULL,
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(50) NULL
);

-- Create Courses Table with the following fields
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    credits INT
);

-- Create Enrollments Table with the following fields
CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT REFERENCES students (student_id),
    course_id INT REFERENCES courses (course_id)
);

-- Query 1: Insert data into the students table
INSERT INTO students (
    student_id,
    student_name,
    age,
    email,
    frontend_mark,
    backend_mark,
    status
) VALUES 
    (1, 'Sameer', 21, 'sameer@example.com', 48, 60, NULL),
    (2, 'Zoya', 23, 'zoya@example.com', 52, 58, NULL),
    (3, 'Nabil', 22, 'nabil@example.com', 37, 46, NULL),
    (4, 'Rafi', 24, 'rafi@example.com', 41, 40, NULL),
    (5, 'Sophia', 22, 'sophia@example.com', 50, 52, NULL),
    (6, 'Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);

-- Insert data into the courses table
INSERT INTO courses (
    course_id,
    course_name,
    credits
) VALUES 
    (1, 'Next.js', 3),
    (2, 'React.js', 4),
    (3, 'Databases', 3),
    (4, 'Prisma', 3);

-- Insert data into the enrollment table
INSERT INTO enrollment (
    enrollment_id,
    student_id,
    course_id
) VALUES 
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 1),
    (4, 3, 2);

-- Query 2: Select student names enrolled in 'Next.js' course
-- Functionality: 
--1. Join students and courses
--2. Check course name equal Next.js 
--3. If true then render only Student name
SELECT student_name 
FROM enrollment
JOIN students USING(student_id)
JOIN courses USING(course_id)
WHERE course_name = 'Next.js';

-- Query 3: Update status to 'Awarded' for the student with the highest combined marks
-- Functionality: 
--1. Fist using sub query to find max marks sub of frontend mark and backend mark
--2. Where condition check which mark same that get only that student id
--3. And Update to check match which student id using sub Query
UPDATE students
SET status = 'Awarded'
WHERE student_id = (
    SELECT student_id
    FROM students
    WHERE (frontend_mark + backend_mark) = (
        SELECT MAX(frontend_mark + backend_mark)
        FROM students
    )
);

-- Query 4: Delete all courses what not enrollment any students
-- Functionality: 
--1. Using sub Query to find which is enrollment by student
--2. Delete all that no include in this id 
DELETE FROM courses
WHERE course_id NOT IN (
    SELECT DISTINCT course_id
    FROM enrollment
);

-- Query 5: Select student names with an offset of 2 and limit of 2
-- Functionality: 
--1. Find all students show only name
--2. sort by student id
--3. skip 2 student
--4. Take only two student
SELECT student_name 
FROM students 
ORDER BY student_id 
OFFSET 2 LIMIT 2;

-- Query 6: Count the number of students enrolled in each course
-- Functionality:
--1. First join course
--2. grouping courses
--3. count how many student id have each course 
--4. render only that course name and count
SELECT course_name, COUNT(student_id) AS students_enrolled 
FROM enrollment
JOIN courses USING(course_id)
GROUP BY course_name;

-- Query 7: Select the average age of students rounded to 2 decimal places
-- Functionality: 
--1. Using aggregate function avg using age
--2. round show decimal number 22.50
--3. Change the name of the field
SELECT ROUND(AVG(age), 2) AS average_age
FROM students;

-- Query 8: Select student names with email containing 'example.com' and order by student_id
-- Functionality: 
--1. Using Ilike to check example.com have this each email
--2. then sort by student id
--3. Give me only student name
SELECT student_name 
FROM students
WHERE email ILIKE '%example.com%'
ORDER BY student_id;
