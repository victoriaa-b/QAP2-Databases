-- 5 students, 4 professors and 3 courses
-- need at least 5 enrollments
-- students in multiples courses

-- insert for student tables 
INSERT INTO students (first_name, last_name, email, enrollment_date) VALUES
('Chloe', 'Smith', 'chloe.smith@codemail.com', '2024-10-07'),
('Dawson', 'Porter', 'dawson.porter@codemail.com', '2024-10-08'),
('Bernard', 'Hunt', 'bernard.hunt@codemail.com', '2024-10-06'),
('Harrison', 'Chippet', 'harrison.chippet@codemail.com', '2024-10-05'),
('Victoria', 'Breen', 'victoria.breen@codemail.com', '2024-10-04');

-- insert for professors tables
INSERT INTO professors(first_name, last_name, department) VALUES
('Matthew', 'English', 'DataBase'),
('Mo', 'Babin', 'Python'),
('Anie', 'Mailk', 'Java'),
('Katelyn', 'Hoyles', 'Math');

-- insert for courses table
INSERT INTO courses(course_name, course_description, professor_id ) VALUES
('Database', 'Introduction to Database', 1),
('Java', 'Introduction to Java', 2),
('Math', 'Calculus I and II', 3),
('Python', 'Introduction to Python', 2),
('FullStack Javascript', 'Introduction to Full-stack JavaScript ', 1);

-- insert for enrollments table
INSERT INTO enrollments(student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-11-05'),
(2, 3, '2024-11-05'),
(3, 2, '2024-11-05'),
(4, 4, '2024-11-04'),
(5, 1, '2024-11-04'),
(2, 5, '2024-11-04'),
(4, 2, '2024-11-04');




