-- Homework 9

-- 1.Write the INNER JOIN query where we can see the city and country names in the city table and the country table together.
select country.country, city.city from city
inner join country on country.country_id=city.country_id;

-- 2.Write the INNER JOIN query where we can see the payment_id , first_name and last_name together.
select customer.first_name, customer.last_name, payment.payment_id from customer
inner join payment on payment.customer_id=customer.customer_id;

-- 3.Write the INNER JOIN query where we can see the rental_id, first_name and last_name names together.
select customer.first_name, customer.last_name, rental.rental_id from customer
inner join rental on rental.customer_id=customer.customer_id;