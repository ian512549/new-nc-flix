DROP DATABASE IF EXISTS nc_flix;

CREATE DATABASE nc_flix;

\c nc_flix

CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,
    city varchar
);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  customer_name varchar,
  date_of_birth date,
  location varchar
);

CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  title varchar,
  release_date date,
  rating int,
  cost FLOAT
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
('Alex','2001-06-24', 'Manchester');


INSERT INTO movies
(title, release_date, rating, cost)
VALUES
('Ghostbusters II', '1989-12-01', 9, 1),
('The Breakfast Club', '1985-06-07', 3, 1),
('Todo Sobre Mi Madre', '2015-08-15', 5, 1),
('The Lion King II: Simba''s Pride', '1998-10-26', 1, 1),
('The Care Bears Movie', '1985-08-14', 10, 1),
('Tron', '1982-10-21', 7, 1),
('Highlander', '1986-08-29', 3, 1),
('Cleopatra', '1963-07-31', 6, 1),
('Catch Me If You Can', '2003-01-27', 7, 2),
('Taxi Driver', '1976-08-19', 9, 1),
('The Princess Switch', '2018-11-16', 3, 1),
('Girl, Interrupted', '2000-03-24', 8, 1);
