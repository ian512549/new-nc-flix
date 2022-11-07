DROP DATABASE IF EXISTS nc_flix;

CREATE DATABASE nc_flix;

\c nc_flix

CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,
    city VARCHAR
);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  customer_name VARCHAR,
  date_of_birth DATE,
  location VARCHAR
);

CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR,
  release_date DATE,
  rating INT,
  cost DECIMAL
);

INSERT INTO stores
(city)
VALUES
('Leeds'),
('Manchester'),
('Newcastle'),
('Birmingham');


INSERT INTO customers
(customer_name, date_of_birth, location)
VALUES
('David','1992-12-30', 'Leeds'),
('Joe','1989-06-21', 'Liverpool'),
('Verity','1997-01-07', 'Leicester'),
('Cat','1985-11-02', 'Manchester'),
('Alex','2001-06-24', 'Manchester'),
('Duncan', '1994-01-19', 'Manchester');


INSERT INTO movies
(title, release_date, rating, cost)
VALUES
('Ghostbusters II', '1989-12-01', 9, 1.50),
('The Breakfast Club', '1985-06-07', 3, 2.00),
('Todo Sobre Mi Madre', '2015-08-15', 5, 1.25),
('The Lion King II: Simba''s Pride', '1998-10-26', 1, 1.50),
('The Care Bears Movie', '1985-08-14', 10, 1.00),
('Tron', '1982-10-21', 7, 2.00),
('Highlander', '1986-08-29', 3, 1.00),
('Cleopatra', '1963-07-31', 6, 1.00),
('Catch Me If You Can', '2003-01-27', 7, 2.00),
('Taxi Driver', '1976-08-19', 9, 1.00),
('The Princess Switch', '2018-11-16', 3, 1.00),
('Girl, Interrupted', '2000-03-24', 8, 2.00),
('The Fellowship of the Ring', '2001-12-19', 9, 2.50),
('Episode I - The Phantom Menace', '1999-05-19', 7, 1.50),
('Episode II - Attack of the Clones', '2002-05-16', 8, 1.50),
('Episode IV - A New Hope', '1977-05-25', 10, 2.25),
('Episode IX - The Rise of Skywalker', '2019-12-20', 3, 1.25),
('Back to the Future', '1985-07-03', 10, 2.50),
('Back to the Future Part II', '1989-11-22', 8, 1.75),
('Back to the Future Part III', '1990-05-25', 7, 1.50),
('The Godfather', '1972-03-14', 10, 1.50),
('Raiders of the Lost Ark', '1981-06-12', 9, 2.25),
('Pulp Fiction', '1994-05-21', 5, 2.00),
('Toy Story', '1995-11-19', 10, 1.50),
('Groundhog Day', '1993-02-12', 7, 1.50),
('A Fish Called Wanda', '1988-07-07', 7, 1.50),
('21 Jump Street', '2012-03-12', 8, 2.00),
('Captain America: The First Avenger', '2011-07-19', 4, 1.00),
('Independance Day', '1996-07-03', 7, 1.00),
('Suicide Squad', '2016-08-01', 2, 0.75),
('Zootopia', '2016-02-13', 7, 2.00);
