#Select all actors with the firstname "Scarlett"
select * 
from actor
where first_name = "Scarlett";

#Select all actors with the lastname "Johansson"
select * 
from actor
where last_name = "Johansson";

#Count how many movies are available for rent
select count(film_id) from film;

#Count how many movies have been rented
select count(rental_id) from rental;

#Select shortest and longest rental period
select 
min(rental_duration) as "shortest rental duration",
max(rental_duration) as "longest rental duration"
from film;

#select shortest movie duration
select 
min(length) as "shortest movie duration",
max(length) as "longest movie duration"
from film;

#Select average movie duration 
select 
avg(length);

SELECT CONCAT(
    FLOOR(avg(length) / 60),
    ':',
    LPAD(round(avg(length) % 60, 2), 2, '0')
) AS time_value
FROM film;

#select longest movie duration
select 
count(*)
from film
where length > 180;

#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(
    LOWER(first_name), '.', LOWER(last_name), '@sakilacustomer.org'
) AS formatted_address
FROM customer;

#Select the length of the longest film title
select 
max(length(title))
from film