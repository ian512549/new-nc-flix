\c nc_flix

\echo '\n Here are all the movie titles which were released in the 21st century:'

SELECT title AS "21st century movies"
FROM movies
WHERE release_date > '1999-12-31';

\echo '\n This is our oldest customer:'


\echo '\n Customers beginning with D (youngest to oldest):'


\echo '\n This is the average rating of the all the movies made in the 80s:'


\echo '\n These are the locations our customers live in, along with the total, and average number of loyalty points in that area.'



\echo '\n After decreasing the price of the movie rentals, the movie table now looks like:'






