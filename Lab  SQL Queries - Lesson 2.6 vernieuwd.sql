USE Sakila;
-- Question 1 In the table actor, which are the actors whose last names are not repeated? 
-- For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, 
-- Kirsten Arkoyd, and Debbie Arkoyd. These three actors have the same last name. So we do not want to include this last name 
-- in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our 
-- output list.
SELECT * from Sakila.actor;
SELECT * from Sakila.actor
ORDER by last_name ASC;
SELECT last_name, COUNT(*) FROM Sakila.actor
GROUP BY last_name
HAVING COUNT(*) =1;
-- Question 2 Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
SELECT last_name, COUNT(1) FROM Sakila.actor
GROUP BY last_name
HAVING COUNT(*) >1;
 -- Question 3 Using the rental table, find out how many rentals were processed by each employee
 SELECT * from Sakila.rental
 SELECT staff_id, COUNT(*) fROM Sakila.rental
 GROUP BY staff_id;
 -- Question 4 Using the film table, find out how many films were released each year.
 SELECT release_year, COUNT(*) from Sakila.film
 GROUP BY release_year;
 -- Question 5 Using the film table, find out for each rating how many films were there.
 Select rating from Sakila.film; 
 -- Question 6 What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
 SELECT AVG(length) FROM Sakila.film
 Group by rating;
 -- Question 7 Which kind of movies (rating) have a mean duration of more than two hours?
 SELECT AVG(length) FROM Sakila.film
 Group by rating
 HAVING COUNT(*) > 120;
 -- Question 8 Rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.
 SELECT length, title, rating FROM Sakila.film
 WHERE (length IS NULL);