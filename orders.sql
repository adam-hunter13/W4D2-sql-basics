-- Question 3.1
-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id NUMERIC,
    product_name VARCHAR (30),
    product_price NUMERIC,
    quantity NUMERIC
);

-- Question 3.2
-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(001,'.223 / 5.56 Nato', 25.99, 50), (002,'9mm', 20.99, 50), (001,'6.5 Creedmoor', 30.99, 20), (002,'.22 lr', 20.99, 500), (001,'12 guage', 12.99, 20)

-- Question 3.3
-- Select all the records from the orders table.
SELECT * FROM orders

-- Question 3.4
-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Question 3.5
-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

-- Question 3.6
-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = '1';
