-- retrieve full name, first and last joined
SELECT CONCAT(students.first_name,' ', students.last_name) AS full_name
FROM students 
JOIN enrollments ON students.student_id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.course_id
WHERE courses.course_name = 'Java';

-- retrieves all courses and profs full name
SELECT courses.course_name, CONCAT(professors.first_name, ' ', professors.last_name) AS professor_name
FROM courses
JOIN professors ON courses.professor_id = professors.professor_id;

-- retrieves all courses that has student in them
SELECT DISTINCT courses.course_name
FROM courses
JOIN enrollments ON courses.course_id = enrollments.course_id;

-- updates a student email
UPDATE students
SET email = 'dawson.porter@hotmail.com'
WHERE students.student_id = 2;

-- remove student from one of their courses 
DELETE FROM enrollments
WHERE enrollments.student_id = 2 AND course_id = 3;