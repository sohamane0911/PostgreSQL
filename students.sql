-- 26/04/36


SELECT * FROM students;

-- 27/04/36


SELECT first_name, city FROM students;

SELECT first_name FROM students;

SELECT first_name FROM students ORDER BY first_name;

SELECT city FROM students ORDER BY city;

SELECT cgpa FROM students ORDER BY cgpa;

SELECT first_name, last_name FROM students;

SELECT first_name || ' ' || last_name AS full_name FROM students;

SELECT first_name || ' ' || last_name AS full_name FROM students ORDER BY full_name;

SELECT first_name || ' ' || last_name AS full_name FROM students ORDER BY last_name, first_name;