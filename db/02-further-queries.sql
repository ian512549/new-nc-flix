\c nc_flix

\echo '\n The number of films in stock for each genre:'

SELECT COUNT(stock_id), genre_name
FROM movies
JOIN movies_genres
ON movies.movie_id = movies_genres.movie_id
JOIN genres
ON movies_genres.genre_id = genres.genre_id
JOIN stock
on movies.movie_id = stock.movie_id
GROUP BY genres.genre_name;

\echo '\n Here is the average rating for films in stock in Newcastle:'

SELECT 
AVG(rating)
FROM movies
JOIN stock
ON movies.movie_id = stock.movie_id
JOIN stores
ON stores.store_id = stock.store_id
WHERE city = 'Newcastle';


\echo '\n Here are all the films made in 90s with above average rating available in Leeds'


SELECT DISTINCT title 
FROM movies
JOIN stock
ON movies.movie_id = stock.movie_id
JOIN stores
ON stores.store_id = stock.store_id
WHERE city = 'Leeds'
AND rating > (SELECT AVG(rating)
FROM movies);

\echo '\n Here is the number of copies of the top rated film of the 5 most recently released films we have in stock across all stores:'

WITH recent_releases AS (SELECT
movies.movie_id,
movies.title,
movies.release_date,
COUNT(stock.stock_id),
COALESCE(rating, 0) AS rating
FROM movies
JOIN stock
ON movies.movie_id = stock.movie_id
JOIN stores
ON stores.store_id = stock.store_id
GROUP BY movies.movie_id
ORDER BY release_date DESC
LIMIT 5)
SELECT *
FROM recent_releases
ORDER BY rating DESC
LIMIT 1;

\echo '\n These are the locations where our customers live which dont have stores:'

SELECT location 
FROM customers
EXCEPT
SELECT city
FROM stores;


\echo '\n These are all the locations which our business has influences over'

SELECT location
FROM customers
UNION
SELECT city
FROM stores;

\echo '\n This store has the highest quantity of stock:'


SELECT city,
COUNT(stock_id)
FROM stores
JOIN stock
ON stores.store_id = stock.store_id
WHERE city in (SELECT location
FROM customers
INTERSECT
SELECT city
FROM stores)
GROUP BY city
ORDER BY count DESC
LIMIT 1;

\echo '\n ...and this is the most abundant genre in that store:'

