#Group By

#1
SELECT SUM(amount), COUNT(amount), staff_id
FROM payment
GROUP BY staff_id;

#2
SELECT ROUND(AVG(replacement_cost), 2), rating 
FROM film
GROUP BY rating;

#3 (Hardest example)
SELECT SUM(amount), customer_id 
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
