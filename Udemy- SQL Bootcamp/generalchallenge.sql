#General challenge 1

#1
SELECT COUNT(payment_id)
FROM payment 
WHERE amount >= '5'

#2
SELECT COUNT(first_name)
FROM actor 
WHERE first_name LIKE 'P%';

#3
SELECT DISTINCT COUNT(district)
FROM address;

#4
SELECT DISTINCT district
FROM address;

#5
SELECT COUNT(*)
FROM film
WHERE rating = 'R' 
AND
replacement_cost BETWEEN 5 and 15;

#6
SELECT COUNT(*)
FROM film
WHERE title LIKE '%Truman%';

