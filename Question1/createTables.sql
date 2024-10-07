-- students

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL, -- text instead of varchar so you don't have to guess length
    last_name TEXT NOT NULL, -- always want the columns to be filled out and not left empty
    email TEXT NOT NULL,
    enrollment_date DATE NOT NULL

);
-- professors
CREATE TABLE professors (
    professor_id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    department TEXT NOT NULL
);
-- courses
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name TEXT NOT NULL,
    course_description TEXT NOT NULL, 
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES professors(professor_id)
);
-- enrollments 
CREATE Table enrollments (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);