\c nc_flix

\echo '\n Here are all the movie titles which were released in the 21st century:'

SELECT title AS "21st century movies"
FROM movies
WHERE release_date > '1999-12-31';

\echo '\n This is our oldest customer:'

SELECT customer_name AS oldie 
FROM customers
ORDER BY date_of_birth ASC
LIMIT 1;

\echo '\n Customers beginning with D (youngest to oldest):'

SELECT *
FROM customers
WHERE customer_name LIKE 'D%'
ORDER BY date_of_birth DESC;

\echo '\n This is the average rating of the all the movies made in the 80s:'

SELECT AVG(rating) 
FROM movies
WHERE release_date > '1979-12-31'
AND release_date < '1991-01-01';

\echo '\n These are the locations our customers live in, along with the total, and average number of loyalty points in that area.'

\echo '\n After decreasing the price of the movie rentals, the movie table now looks like:'

UPDATE movies
SET cost = ROUND(cost * 0.95, 2)
RETURNING *;




