-- Homework 10

-- 1.Write the LEFT JOIN query where we can see the city and country names together.
select country,city from country
left join city on country.country_id=city.country_id;

-- 2.Write the RIGHT JOIN query where we can see the names Payment_id , first_name and last_name together.
select first_name,last_name,payment_id from payment
right join customer on customer.customer_id=payment.customer_id;

-- 3.Write the FULL JOIN query where we can see rental_id , first_name and last_name names together.
select first_name,last_name,rental_id from customer
full join rental on customer.customer_id=rental.customer_id;