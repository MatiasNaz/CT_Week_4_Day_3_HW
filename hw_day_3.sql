-- Wednesday HW 
-- Q1)

SELECT customer_id, customer.customer_id, district
FROM ADDRESS
INNER JOIN customer
ON customer.address_id = address.address_id
WHERE district LIKE 'Texas';

-- Q2)

SELECT * FROM payment;
SELECT customer.first_name, customer.last_name, 
amount FROM payment INNER JOIN customer ON
customer.customer_id = payment.customer_id
WHERE amount > 6.99;

-- Q3)

SELECT first_name, last_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id 
	FROM payment
	GROUP BY customer_id
	HAVING sum(amount) > 175);


-- Q4)

SELECT *
FROM customer; 
SELECT first_name, last_name
FROM customer;
where customer_id IN (
	SELECT customer_id 
	FROM ADDRESS
	INNER JOIN customer
	ON customer.address_id  = ADDRESS.address_id 
	INNER JOIN city
	ON city.city_id = ADDRESS.city_id
	INNER JOIN country
	ON country.country_id = city.country_id 
	WHERE country = 'Nepal'
	);

-- Q5)

SELECT first_name, last_name COUNT(rental.staff_id)
FROM staff INNER JOIN rental
ON staff.staff_id = rental.staff_id
GROUP BY staff.staff_id
ORDER BY COUNT(rental.staff_id) DESC;

-- Q6)

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating 
ORDER BY COUNT(rating) DESC;

-- Q7)

SELECT first_name, last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment.amount IN(
	SELECT payment.amount
	FROM  payment
	WHERE payment.amount > 6.99
	GROUP BY payment.amount)
GROUP BY first_name, last_name
HAVING COUNT(amount) = 1;
SELECT COUNT(amount)
FROM payment
WHERE amount = 0;

-- Q8)

SELECT COUNT(amount)
FROM payment
WHERE amount = 0;
