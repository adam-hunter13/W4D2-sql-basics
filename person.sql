-- Question 2.1
-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    person_name VARCHAR (30),
    person_age NUMERIC,
    person_height NUMERIC,
    person_city VARCHAR (30),
    favorite_color VARCHAR (30)
);

-- Question 2.2
-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.

INSERT INTO person
(person_name, person_age, person_height, person_city, favorite_color)
VALUES
('Adam', 27, 187, 'Payson', 'Blue'), ('Blake', 30, 190, 'Glendale', 'Green'), ('Cole', 32, 175, 'Salem', 'Red'), ('Dylan', 24, 187, 'Orem', 'Orange'), ('William', 54, 185, 'Payson', 'Yellow');

-- Question 2.3
-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY person_height DESC;

-- Question 2.4
-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY person_height ASC;

-- Question 2.5
-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY person_age DESC;

-- Question 2.6
-- Select all the people in the person table older than age 20.
SELECT * FROM person
ORDER BY person_age ASC;

-- Question 2.7
-- Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE person_age = 18;

-- Question 2.8
-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE person_age < 20 OR person_age > 30;

-- Question 2.9
-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE person_age != 27;

-- Question 2.10
-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color != 'Red';

-- Quesiton 2.11
-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- Question 2.12
-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- Question 2.13
-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- Question 2.14
-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');
