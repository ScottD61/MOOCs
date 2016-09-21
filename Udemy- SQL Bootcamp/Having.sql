#Having 

#1
SELECT COUNT(amount), customer_id 
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

#2
SELECT ROUND(AVG(rental_duration), 0), rating 
FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5;