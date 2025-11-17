use sakila;
-- Write a SQL query to fetch all columns from the” category" table.
SELECT * FROM category;

-- Retrieve only the names from the "category" table.
SELECT name FROM category;

-- Fetch the total number of counts in the "category" table.
SELECT COUNT(*) AS total_categories FROM category;

-- Find the no. of counts from the payment table where staff_id is greater than 2 and amount is less than 5.
SELECT COUNT(*) AS total_payments 
FROM payment 
WHERE staff_id > 2 AND amount < 5;

-- Find the minimum and maximum values of column active from table customer.
SELECT MIN(active) AS min_active, MAX(active) AS max_active 
FROM customer;
 -- Retrieve the film id from table film where rental_rate = 4
SELECT film_id 
FROM film 
WHERE rental_rate = 4;

-- Retrieve the details of title from table film whose names start with the letter 'A'.
SELECT title 
FROM film 
WHERE title LIKE 'A%';

-- Fetch the name of the language from the "language" table in ascending order
SELECT name 
FROM language 
ORDER BY name ASC;

-- Delete the language name 'English' from the "language" table.
select * from language;
DELETE FROM language 
WHERE name = 'English';
set sql_safe_updates=0;

-- Update the title to ‘ANGELS LIFE’ from table film_text where film_id =25.
UPDATE film_text 
SET title = 'ANGELS LIFE' 
WHERE film_id = 25;