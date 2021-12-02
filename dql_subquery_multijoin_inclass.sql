-- Multi Join
select first_name, last_name, title
from actor
inner join film_actor
on actor.actor_id = film_actor.actor_id
inner join film
on film.film_id = film_actor.film_id
where first_name like 'Nick';

-- Sub Query
-- You can make sub queries in the SELECT, FROM, and WHERE statement

SELECT headers_you_want_to_see
FROM my_table
WHERE condition_goes_here;

-- WHERE clause
-- Two basic queries, before combining them
-- query 1: find a customer_id that has more than $175 total purchase
select * from payment;

select customer_id
from payment
group by customer_id 
having sum(amount) > 175
order by sum(amount) desc;

-- query 2: find the customer info (name, address, ...)
select * from customer;

select first_name, last_name, email
from customer;
-- FINAL query: we combine the two queries into 1 using subqueries
-- our inner query will always happen first
select first_name, last_name, email, customer_id
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount) desc
);

-- ANOTHER WHERE clause subquery
select first_name, last_name
from actor
where actor_id in (
	select film_actor.actor_id
	from actor
	inner join film_actor
	on actor.actor_id = film_actor.actor_id
	inner join film
	on film.film_id = film_actor.film_id 
	where title = 'Mulan Moon'
);

-- FROM clause subqeury but doing the same thing as above
select first_name, last_name
from (
	select first_name, last_name, title
	from actor
	inner join film_actor
	on actor.actor_id = film_actor.actor_id 
	inner join film
	on film.film_id = film_actor.film_id
) as actors_and_movies_title
where title = 'Mulan Moon';

--select clause
select first_name, last_name, (
	select count(rental_id)
	from rental
) as count_of_rentals
from customer;



