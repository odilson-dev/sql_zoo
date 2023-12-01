-- 1.
-- List the films where the yr is 1962 [Show id, title]

SELECT id, title
 FROM movie
 WHERE yr=1962;


-- 2.
-- Give year of 'Citizen Kane'.

SELECT yr FROM movie
WHERE title = 'Citizen Kane';

-- 3.
-- List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.

SELECT id, title, yr 
FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr;

-- 4.
-- What id number does the actor 'Glenn Close' have?

SELECT * FROM actor
WHERE name = 'Glenn Close';

-- 5.
-- What is the id of the film 'Casablanca'

SELECT id FROM movie
WHERE title =  'Casablanca';



-- 6.
-- Obtain the cast list for 'Casablanca'.

-- what is a cast list?
-- The cast list is the names of the actors who were in the movie.

-- Use movieid=11768, (or whatever value you got from the previous question)

SELECT name FROM actor
JOIN casting ON id = actorid
WHERE movieid = 11768;

-- 7.
-- Obtain the cast list for the film 'Alien'

SELECT name FROM actor
JOIN casting ON id = actorid
WHERE movieid = (SELECT id FROM movie
WHERE title = 'Alien');

-- 8.
-- List the films in which 'Harrison Ford' has appeared

SELECT * FROM movie
JOIN casting ON id = movieid
WHERE actorid = (
SELECT * FROM actor
WHERE name = 'Harrison Ford');

