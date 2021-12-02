-- Wednesday HW 
-- Q1)

SELECT first_name, last_name
FROM customer
INNER JOIN address
ON customer.district = address.district
WHERE customer.district LIKE 'Texas';

-- Q2)

SELECT first_name, last_name
FROM customer
INNER JOIN amount
FROM payment
WHERE amount > 6.99;


SELECT * FROM payment;

SELECT customer_id
FROM payment
GROUP BY customer_id
HAVING sum(amount) > 175
ORDER BY sum(amount);

SELECT *
FROM customer; 

SELECT first_name, last_name
FROM customer;

SELECT first_name, last_name, customer_id
FROM customer 
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING sum(amount) > 175
	ORDER BY sum(amount);

);

-- Q3)