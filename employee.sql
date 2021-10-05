-- Question 5.1
-- List all employee first and last names only that live in Calgary.
SELECT last_name, first_name From employee
WHERE city = 'Calgary';

-- Question 5.2
-- Find the birthdate for the youngest employee.
SELECT last_name, first_name, birth_date FROM employee
WHERE birth_date = (SELECT MAX(birth_date) FROM employee);

-- Question 5.3
-- Find the birthdate for the oldest employee.
SELECT last_name, first_name, birth_date FROM employee
WHERE birth_date = (SELECT MIN(birth_date) FROM employee);

-- Question 5.4
-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to = 2;

-- Quesiton 5.5
-- Count how many people live in Lethbridge.
SELECT COUNT(city)
FROM employee
WHERE city IN ('Lethbridge');
