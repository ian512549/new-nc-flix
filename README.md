# NC-flix

Video streaming services are all well and good, but they lack a certain physical quality. Not to miss out on a questionable business venture, Northcoders is opening bring back the video rental store!

Business is somewhat slow at the moment (surprisingly!) so it makes sense to thinking about how we store our data as a business. At the moment we have the following three tables:

- stores

- customers

- movies

## Task 1

1. Query the database to retrieve all of the movie titles that were released in the 21st century.

2. Query the database to find the oldest customer.

3. Query the database to find the average rating of the movies released in the 1980s.

4. The rise in living costs is affecting rentals, drop the cost of all rentals by 5% and display the updated table. **As this is a monetary value make sure it is rounded to 2 decimal places**

> _**If you want to run the updates multiple times without going bankrupt, the data will need to be reset. We've added a bash script that will run all of the *.sql files in the ./db folder. Try running the command `./run-all.sh` from your terminal in the root of this repository. This will save the output of each *.sql file in the ./db directory to a \*.txt file of the same name.**_

## Task 2

1. Create a `stock` table with the following columns:

- `stock_id` - PK
- `store_id` - FK
- `movie_id` - FK
- `copies` - INT

2. Insert some data into this table. You'll want at least 10 rows, feel free to use the stock information provided below:

| Movie ID | Film                               | Leeds(ID: 1) | Manhester(ID: 2) | Newcastle(ID: 3) | Birmingham(ID: 4) |
| -------- | ---------------------------------- | ------------ | ---------------- | ---------------- | ----------------- |
| 1        | Ghostbusters II                    | 2            | 1                | 2                | 1                 |
| 2        | The Breakfast Club                 | 3            | 2                | 2                | 0                 |
| 3        | Todo Sobre Mi Madre                | 0            | 1                | 3                | 2                 |
| 4        | The Lion King II: Simba''s Pride   | 2            | 0                | 3                | 3                 |
| 5        | The Care Bears Movie               | 0            | 1                | 2                | 0                 |
| 6        | Tron                               | 0            | 3                | 1                | 1                 |
| 7        | Highlander                         | 1            | 0                | 1                | 2                 |
| 8        | Cleopatra                          | 2            | 3                | 1                | 1                 |
| 9        | Catch Me If You Can                | 1            | 2                | 2                | 0                 |
| 10       | Taxi Driver                        | 0            | 0                | 5                | 1                 |
| 11       | The Princess Switch                | 0            | 1                | 3                | 0                 |
| 12       | Girl, Interrupted                  | 3            | 2                | 1                | 2                 |
| 13       | The Fellowship of the Ring         | 0            | 0                | 5                | 0                 |
| 14       | Episode I - The Phantom Menace     | 3            | 5                | 2                | 2                 |
| 15       | Episode IV - A New Hope            | 2            | 0                | 2                | 1                 |
| 16       | Episode IX - The Rise of Skywalker | 0            | 1                | 3                | 1                 |
| 17       | Back to the Future                 | 1            | 0                | 4                | 1                 |
| 18       | Back to the Future Part II         | 5            | 2                | 2                | 2                 |
| 19       | The Godfather                      | 0            | 3                | 3                | 1                 |
| 20       | Raiders of the Lost Ark            | 2            | 0                | 2                | 2                 |
| 21       | Pulp Fiction                       | 0            | 0                | 0                | 0                 |
| 22       | Toy Story                          | 2            | 4                | 3                | 2                 |
| 23       | Groundhog Day                      | 1            | 0                | 2                | 4                 |
| 24       | A Fish Called Wanda                | 0            | 2                | 1                | 6                 |
| 25       | Independance Day                   | 0            | 1                | 0                | 2                 |

## Task 3

1. Create a `genres` table with the following data:

| genre_slug | description                                                    |
| ---------- | -------------------------------------------------------------- |
| family     | Fun for everyone!                                              |
| comedy     | A giggle a minute                                              |
| romance    | I feel it in my fingers, I feel it in my toes                  |
| fantasy    | There be elves and and witches                                 |
| action     | Shooty shooty punchy punchy                                    |
| drama      | Plot driven story time                                         |
| crime      | Watch out, there's gangsters about                             |
| sci_fi     | Your scientists were so preoccupied with whether they could... |

2. Movies can often be associated with more than one genre. Create a this many-many relationsip between the `genres` table and the `movies`.

3. Insert some data about the film genres. Feel free to use the information in the table below:

| Film                               | Genres               |
| ---------------------------------- | -------------------- |
| Ghostbusters II                    | Family, Comedy       |
| The Breakfast Club                 | Comedy, Drama        |
| Todo Sobre Mi Madre                | Comedy, Drama        |
| The Lion King II: Simba''s Pride   | Family               |
| The Care Bears Movie               | Family               |
| Tron                               | Fantasy, Action      |
| Highlander                         | Fantasy, Action      |
| Cleopatra                          | Romance, Drama       |
| Catch Me If You Can                | Comedy, Drama, Crime |
| Taxi Driver                        | Drama, Crime         |
| The Princess Switch                | Comedy, Romance      |
| Girl, Interrupted                  | Drama                |
| The Fellowship of the Ring         | Fantasy, Action      |
| Episode I - The Phantom Menace     | Fantasy, Action      |
| Episode IV - A New Hope            | Fantasy, Action      |
| Episode IX - The Rise of Skywalker | Fantasy, Action      |
| Back to the Future                 | Comedy, Sci-Fi       |
| Back to the Future Part II         | Comedy, Sci-Fi       |
| The Godfather                      | Drama, Crime         |
| Raiders of the Lost Ark            | Action, Fantasy      |
| Pulp Fiction                       | Crime                |
| Toy Story                          | Family               |
| Groundhog Day                      | Comedy, Romance      |
| A Fish Called Wanda                | Comedy, Crime        |
| Independance Day                   | Action, Sci-Fi       |

## Task 4

1. Query the database to find the number of films in stock for each genre.

2. Query the database to find the average rating for films in stock in Newcastle.

3. Query the database to retrieve all the films released in the 90s which have a rating greater than the total average.

4. Query the database to find the amount of copies in stock of the top rated film of the five most recently released films.

5. Query the database to find a list of all the locations customers live in which don't contain a store.

6. Of the stores which exist in locations that have customers, calculate which store has the largest catalogue of stock. What is the most abundant genre?

## Task 5

1. Query the database to find the store with store with the most copies of sequels.

   > _Note: For now let's assume you can tell if a film is a sequel if the title contains something like 'II' or 'VI'._

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

- store_id, location, number of customers in the same location
- number of films available in store
- most valued customer (customer with most rentals)
- most popular film (film with most rentals)
- average rating of store (calculated as average of all films in store)
