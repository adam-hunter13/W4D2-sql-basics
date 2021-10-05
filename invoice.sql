-- Question 6.1
-- Count how many orders were made from the USA.
SELECT COUNT(billing_country)
FROM invoice
WHERE billing_country IN ('USA');

-- Question 6.2
-- Find the largest order total amount.
SELECT total FROM invoice
WHERE total = (SELECT MAX(total) FROM invoice);

-- Question 6.3
-- Find the smallest order total amount.
SELECT total FROM invoice
WHERE total = (SELECT MIN(total) FROM invoice);

-- Question 6.4
-- Find all orders bigger than $5.
SELECT * FROM invoice
WHERE total > 5

-- Question 6.5
-- Count how many orders were smaller than $5.
SELECT * FROM invoice
WHERE total < 5

-- Question 6.6
-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(billing_state)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Question 6.7
-- Get the average total of the orders.
SELECT AVG(total) FROM invoice

-- Question 6.8
-- Get the total sum of the orders.
SELECT SUM(total) FROM invoice

-- Question 6.9
-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

-- Question 6.10
-- Delete the invoice with an invoice_id of 1.
DELETE FROM invoice
WHERE invoice_id = 1;