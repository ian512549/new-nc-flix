# NC-flix

Video streaming services are all well and good, but they lack a certain physical quality. Not to miss out on a questionable business venture, Northcoders is opening bring back the video rental store!

Business is somewhat slow at the moment (surprisingly!) so it makes sense to thinkning about how we store our data as a business. At the moment we have the following three tables:

-   stores

-   customers

-   movies

## Task 1

1. Query the database to retrieve all of the movie titles that were released in the 21st century.

2. Query the database to find the oldest customer.

3. Query the database to find the average rating of the movies released in the 1980s.

4. The rise in living costs is affecting rentals, drop the cost of all rentals by 5% and display the updated table. \_Note that you'll want to ensure that you can run.

_**If you want to run the updates multiple times without going bankrupt, the data will need to be reset. We've added a bash script that will run all of the *.sql files in the ./db folder. Try running the command ./run-all.sh from your terminal in the root of this repository. This will save the output of each *.sql file in the ./db directory to a \*.txt file of the same name.**_

## Task 2

1. Create a `stock` table with the following columns:

-   `stock_id` - PK
-   `store_id` - FK
-   `movie_id` - FK

2. Insert some data into this table. You'll want >10 rows.

## Task 3

1. Create a `genres` table with the following data:

| genre_slug | description                                   |
| ---------- | --------------------------------------------- |
| family     | Fun for everyone!                             |
| comedy     | A giggle a minute                             |
| romance    | I feel it in my fingers, I feel it in my toes |
| fantasy    | There be elves and and witches                |
| action     | Shooty shooty punchy punchy                   |
| drama      | Plot driven story time                        |

2. Movies can often be associated with more than one genre. Create a this many-many relationsip between the `genres` table and the `movies`

## Task 4

1. Query the database to find the number of films in stock in each genre.

2. Query the database to find the average rating for films in stock in Newcastle.

3. Query the database to retrieve all the films released in the 90s which have a rating greater than the total average.

4. Query the database to find the amount copies in stock of the top rated film of the five most recently released films.

5. Query the database to find a list of all the locations customers live in which don't contain a store.

6. Of the stores which exist in locations customers exist, calculate which has the largest catalogue of stock. What is the most abundant genre?

## Task 5

1. Query the database to find the store with store with the most copies of sequels. _Note: For now let's assume you can tell if a film is a sequel based on it's title._

2. This is likely not a good way to identify sequels going forward. Alter the table to track this information better and then update previous query to make use of this new structure.

## Task 6

1. Design a way of storing information on rentals. A rental should track the following information:

    - rental_id
    - stock_id
    - rental_start
    - rental_end
    - customer_id

    Add some rental rows we can query later.

2. Create an output with the following information:

-   store_id, location, number of customers in the same location
-   number of films available in store
-   most valued customer (customer with most rentals)
-   most popular film (film with most rentals)
-   average rating of store (calculated as average of all films in store)

## Task 7
