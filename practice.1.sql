--Count total number of row in the table
SELECT COUNT(*)
FROM film;

--Return all movies wiht a PG rating
SELECT *
FROM film 
WHERE rating = 'PG';

--How movies with PG rating?
SELECT COUNT(*)
FROM film 
WHERE rating = 'PG';

-- Return available ratings categories

SELECT DISTINCT(rating)
FROM film;

SELECT DISTINCT(rating)
FROM film;
-- Fetch all movies with PG or R or G ratings

SELECT *
FROM film 
WHERE rating = 'PG'
	OR rating = 'R'
	OR rating = 'G';

--Or using the IN operator
SELECT *
FROM film 
WHERE rating IN ('PG', 'R', 'G');

--Fetch all movies whose ratings is not PG or R or G
--NOTE:not equal to operators are != or <>

-- SELECT *
-- FROM film 
-- WHERE rating != 'PG'
-- 	OR rating != 'R'
-- 	OR rating != 'G';

SELECT *
FROM film 
WHERE rating != 'PG'
	AND rating != 'R'
	AND rating != 'G';

--Or using the IN operator
SELECT *
FROM film 
WHERE rating NOT IN ('PG', 'R', 'G');

--Class activities

-- 1. Select rows from the film table where the film_id is less than 4.
SELECT *
FROM film
WHERE film_id < 4;

-- 2. Select rows from the film table where the rating is not PG.
SELECT *
FROM film
where rating <> 'PG';

-- 3. Select rows from the film table where the rating is PG or G.
SELECT *
FROM film
WHERE rating IN ('PG', 'G');

-- 4. Select rows from the actor table where the first name is Angela, Angelina, or Audrey

SELECT *
FROM actor
WHERE first_name IN ('Angela', 'Angelina', 'Audrey');

--5. How many different rental_rates do we have for renting out films and what are those?

SELECT DISTINCT(rental_rate)
FROM film;

--GROUP BY clause
SELECT rental_rate, COUNT(film_id)
FROM film
GROUP BY rental_rate;

--WHERE
SELECT *
FROM film 
WHERE lenth <= 60;

--ORDER BY

SELECT *
FROM film 
ORDER BY length, rental_rate, rental_duration;














--
