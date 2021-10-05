-- Question 4.1
-- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist
(name)
VALUES
('Linkin Park'), ('Ace Hood'), ('Akon')

-- Question 4.2
-- Select 10 artists in reverse alphabetical order.
SELECT name
FROM artist
ORDER BY name DESC
LIMIT 10;

-- Question 4.3
-- Select 5 artists in alphabetical order.
SELECT name
FROM artist
ORDER BY name ASC
LIMIT 10;

-- Question 4.4
-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- Quesiton 4.5
-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE '%Black%';