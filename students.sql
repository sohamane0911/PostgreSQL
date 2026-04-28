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


-- 28/04/26 (Session - 1)

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


-- 28/04/26 (Session - 2)

-- Top 5 CSE students by CGPA
SELECT * FROM students WHERE branch = 'CSE' ORDER BY cgpa DESC LIMIT 5;

-- Distinct cities where fees are paid
SELECT DISTINCT city FROM students WHERE fees_paid = 't';

-- Same, sorted alphabetically
SELECT DISTINCT city FROM students WHERE fees_paid = 't' ORDER BY city ASC;

-- Distinct city + fees_paid combinations, sorted by city
SELECT DISTINCT city, fees_paid FROM students WHERE fees_paid = 't' ORDER BY city ASC;

-- Concatenated city and fees_paid as one column, sorted
SELECT DISTINCT city || '' || fees_paid AS fees_total FROM students WHERE fees_paid = 't' ORDER BY fees_total ASC;

-- Same with a dash separator
SELECT DISTINCT city || '-' || fees_paid AS fees_total FROM students WHERE fees_paid = 't' ORDER BY fees_total ASC;

-- CSE or ECE students with cgpa between 8 and 10, top 10 by cgpa
SELECT * FROM students WHERE branch = 'CSE' OR branch = 'ECE' AND cgpa BETWEEN 8.0 AND 10.0 ORDER BY cgpa DESC LIMIT 10;

-- Students from Merlin aged 18-22, paginated with offset
SELECT * FROM students WHERE city = 'Merlin' AND age between 18 and 22 ORDER BY enrollment_date OFFSET 10 LIMIT 10;

-- Same without city filter
SELECT * FROM students WHERE age between 18 and 22 ORDER BY enrollment_date OFFSET 10 LIMIT 10;

-- Count of fee-paid CSE and ECE students grouped by branch
SELECT branch, count(branch) AS total_no FROM students WHERE fees_paid = 't' AND branch in ('CSE', 'ECE') GROUP BY branch;

-- Students whose first name starts with 'S', not in CSE (case-insensitive), sorted by city
SELECT * FROM students WHERE first_name ILIKE 'S%' AND branch != 'CSE' order by city;

-- Same, sorted by cgpa ascending
SELECT * FROM students WHERE first_name ILIKE 'S%' AND branch != 'CSE' order by cgpa;

-- Same, sorted by cgpa descending
SELECT * FROM students WHERE first_name ILIKE 'S%' AND branch != 'CSE' order by cgpa DESC;

-- Average cgpa per branch for cities containing 'ae', top 3 by avg cgpa
SELECT branch, AVG(cgpa) AS avg_sgpa FROM students WHERE city ILIKE '%ae%' GROUP BY branch ORDER BY avg_sgpa LIMIT 3;