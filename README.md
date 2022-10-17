# Northcoders Rentakls

With the boom in vinyls Northcoders has decided to get ahead of the the next retro trend, VHS rentals! Our next business venture clearly will need a database to keep track of video tape stock, rentals and customers.

So far we have created the following tables:

-   Movies

-   Stock

-   Customers

# recap

1. Query the database get all the movie titles which were released in the 21st century.

2. Query the database to find the oldest customer.

3. Query the database to find the total value of all of the stock, where the film was released in the 1980s.

## Many to Many

4. Create a new table `genres` table.
   Each genre will need the following:

-   genre_slug
-   description

5. Insert genre data into the genre table

| genre_slug | description                                   |
| ---------- | --------------------------------------------- |
| family     | Fun for everyone!                             |
| comedy     | A giggle a minute                             |
| romance    | I feel it in my fingers, I feel it in my toes |
| fantasy    | There be elves and and witches                |
| action     | Shooty shooty punchy punchy                   |
| drama      | Plot driven story time                        |

6. Create a junction table movies_genres which maps the movies to their appropriate genres.

7. Query the database to find the number of films in stock in each genre.

8. Query the database to find the average rating for films in the family genre made before 2000.

## Subqueries, unions and except

9. Query the database to find retrieve all the fantasy film titles which have a rating greater than the average all with the number of copies we own.

10. Query the database to find the amount copies we have of the top rated film of the 5 most recently released films we own.

11. Query the database to find a list of all the locations customers live in which don't contain a store.

12. Of the stores which exist in locations customers exist, calculate which has the largest catalogue of stock. What is the most abundant genre?

## Windowing

13. Create an output which gives us the following information:
    a) store_id, location, number of customers in the same location
    b) number of films available in store
    c) most valued customer (customer with most rentals)
    d) most popular film (film with most rentals)
    d) average rating of store (calculated as average of all films in store)

TODO:

-   windowing

-   coalesce

-
