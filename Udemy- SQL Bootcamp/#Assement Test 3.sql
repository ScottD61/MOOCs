#Assement Test 3

#Teachers table
CREATE TABLE teachers(
teacher_id serial PRIMARY KEY, 
first_name VARCHAR NOT NULL, 
last_name VARCHAR NOT NULL, 
homeroom_number INT NOT NULL, 
department VARCHAR NOT NULL, 
email VARCHAR UNIQUE NOT NULL,
phone VARCHAR UNIQUE NOT NULL
)
;

#Students table
CREATE TABLE students(
student_id serial PRIMARY KEY, 
first_name VARCHAR NOT NULL, 
last_name VARCHAR NOT NULL, 
homeroom_number INT NOT NULL, 
phone VARCHAR NOT NULL, 
email VARCHAR UNIQUE NULL,
graduation_year INT NOT NULL
)
;

#Insert statement for students
INSERT INTO students(student_id, first_name,
last_name, homeroom_number, phone, 
email, graduation_year) 
VALUES (1, 'Mark', 'Watney', 5, 
‘7775551234’, NULL, 2035);

#Insert statement for teachers
INSERT INTO teachers(teacher_id, first_name,
last_name, homeroom_number, department, 
email, phone) 
VALUES (1, 'Jonas', 'Salk', 5, 
'Biology', 'jsalk@school.org', 
‘7775554321’);