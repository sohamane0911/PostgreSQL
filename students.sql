-- 26/04/26

SELECT * FROM students;


-- 27/04/26

SELECT first_name, city FROM students;

SELECT first_name FROM students;

SELECT first_name FROM students ORDER BY first_name;

SELECT city FROM students ORDER BY city;

SELECT cgpa FROM students ORDER BY cgpa;

SELECT first_name, last_name FROM students;

SELECT first_name || ' ' || last_name AS full_name FROM students;

SELECT first_name || ' ' || last_name AS full_name FROM students ORDER BY full_name;

SELECT first_name || ' ' || last_name AS full_name FROM students ORDER BY last_name, first_name;


-- 28/04/26

SELECT DISTINCT city FROM students;

SELECT DISTINCT city FROM students ORDER BY city ASC;

SELECT DISTINCT branch, city FROM students;

SELECT COUNT(DISTINCT branch) FROM students;

SELECT * FROM students WHERE city = 'Pune';

SELECT * FROM students WHERE city = 'Mogzon';

SELECT city FROM students ORDER BY city;

SELECT * FROM students WHERE city = 'Mogzon' AND branch = 'CSE';

SELECT * FROM students WHERE cgpa > 9.0;

SELECT * FROM students WHERE cgpa > 9.0 ORDER BY cgpa ASC;

SELECT * FROM students WHERE cgpa > 9.0 ORDER BY cgpa DESC;

SELECT * FROM students WHERE age != 20;

SELECT * FROM students WHERE cgpa >= 7.5 AND age <= 21 AND fees_paid != 't';

SELECT * FROM students OFFSET 20 FETCH FIRST 10 ROWS ONLY;

SELECT * FROM students WHERE branch IN ('CSE', 'IT');

SELECT * FROM students WHERE branch IN ('CSE', 'IT') ORDER BY branch ASC;

SELECT * FROM students WHERE branch IN ('CSE', 'IT') AND cgpa >= 9.0 ORDER BY branch ASC;

SELECT * FROM students WHERE first_name LIKE '%nne';

SELECT * FROM students WHERE first_name LIKE 'Cor%';

SELECT city, branch, COUNT(first_name) AS total_students FROM students GROUP BY city, branch;