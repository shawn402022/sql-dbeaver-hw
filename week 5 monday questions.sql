--1. 2 actors with the last name 'walberg' ?
SELECT *
FROM actor 
WHERE last_name = 'Wahlberg'

--2. 5,607 payments were made between $3.99 and $5.99?
SELECT COUNT (*)
FROM payment p 
WHERE amount BETWEEN 3.99 AND 5.99

--3. Crossroads Casualties 
SELECT film_id, count (*) AS total
FROM inventory 
GROUP BY film_id
ORDER BY total DESC
 
--4. 1 customer has the last name Williams
--4. 0 customers have the last name William
SELECT *
FROM customer c 
WHERE last_name = 'Williams'

--5. employee 2 sold the most rentals?
SELECT staff_id, count(*) AS total
FROM payment p 
GROUP BY staff_id
ORDER BY total DESC 

--6. 378 different  district names are there?

SELECT DISTINCT district 
FROM address

--7.Lambs Cincinatti has the most actors in it 
SELECT film_id, count (actor_id) AS total
FROM film_actor 
GROUP BY film_id
HAVING count(actor_id)>0
ORDER BY total DESC

--8.  13  customers From store_id 1 have a last name ending with 'es'? 
SELECT count(store_id)
FROM customer 
WHERE last_name LIKE '%es'
GROUP BY store_id


--9. How many payment amounts (4.99,5.99,etc.) had a number of rentals above 250 customers with ids between 380 and 430 ( use group by having > 250)
SELECT count(payment_id)
FROM payment 

--10. Within the film table, how many rating categories are there? And what rating has the most movies 
SELECT film_id, count(DISTINCT rating) AS total
FROM film f 
GROUP BY rating 
HAVING count(DISTINCT rating) > 0
ORDER BY total DESC 

SELECT rating count(film_id) AS total
FROM film f 
GROUP BY film_id
GROUP BY total DESC 

