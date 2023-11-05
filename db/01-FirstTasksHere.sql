\c nc_flix
SELECT title
FROM movies
WHERE release_date >= '2000-01-01';

SELECT customer_name
FROM customers
ORDER BY date_of_birth ASC
LIMIT 1;

SELECT customer_name
FROM customers
WHERE customer_name LIKE 'D%'
ORDER BY date_of_birth DESC;

SELECT AVG(rating)
FROM movies
WHERE release_date BETWEEN '1980-01-01' AND '1989-12-31';

SELECT location, SUM(COALESCE(loyalty_points, 0)), ROUND(AVG(COALESCE(loyalty_points, 0)), 1)
FROM customers
GROUP BY location;

UPDATE movies
SET
    cost = ROUND(cost * 0.95, 2);

SELECT movie_id, title, release_date, rating, ROUND(cost, 2), classification
FROM movies;

SELECT COUNT(stock.stock_id), genres.genre_name, genres.description
FROM movies_genres
JOIN movies ON movies.movie_id = movies_genres.movie_id
JOIN genres ON genres.genre_id = movies_genres.genre_id
JOIN stock ON stock.movie_id = movies_genres.movie_id
GROUP BY genres.genre_name, genres.description;

SELECT ROUND(AVG(movies.rating), 2), stores.city
FROM movies
JOIN stock ON stock.movie_id = movies.movie_id
JOIN stores ON stores.store_id = stock.store_id
WHERE city = 'Newcastle'
GROUP BY stores.city;

SELECT *
FROM movies
WHERE release_date 
BETWEEN '1990-01-01' AND '1999-12-31'
AND rating > (
    SELECT AVG(rating)
    FROM movies
);

WITH top_5_movies AS (
SELECT title, release_date, rating, COUNT(stock.stock_id) AS stock_count
FROM movies
LEFT JOIN stock ON movies.movie_id = stock.movie_id
GROUP BY title, release_date, rating
ORDER BY release_date DESC
LIMIT 5)
SELECT stock_count, title
FROM top_5_movies
ORDER BY COALESCE(rating, 0) DESC
LIMIT 1;

-- Find a list of locations where customers live that don't contain a store.

SELECT location
FROM customers
GROUP BY location
except
SELECT location
FROM customers
JOIN stores ON stores.city = customers.location;

--Query a list of locations that contain either a store or customers. Seems to want either union or intersect.

SELECT DISTINCT city AS location_or_store
FROM stores
union
SELECT DISTINCT location AS location_or_store
FROM customers;

--From a list of our stores which have customers living in the same location, calculate which store has the largest catalogue of stock. What is the most abundant genre in that store?

WITH customer_stores AS(
SELECT DISTINCT stores.store_id, stores.city, COUNT(stock_id) AS count
FROM stores
JOIN stock ON stores.store_id = stock.store_id
WHERE stores.city IN (
    SELECT city
    FROM stores
    intersect
    SELECT location
    FROM customers
)
GROUP BY stores.city, stores.store_id
ORDER BY COUNT(stock_id) DESC
LIMIT 1
)
SELECT genres.genre_name, COUNT(genres.genre_name)
FROM customer_stores
JOIN stock ON customer_stores.store_id = stock.store_id
JOIN movies_genres ON stock.movie_id = movies_genres.movie_id
JOIN genres ON genres.genre_id = movies_genres.genre_id
GROUP BY city, genre_name
ORDER BY count DESC
LIMIT 1;