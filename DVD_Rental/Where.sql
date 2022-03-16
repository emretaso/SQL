-- Homework 1
-- 1.Bring title and description columns in the film table.
select title, description from film;

-- 2.Query all columns in the film table with the movie length greater than 60 AND less than 75.
select * from film
where length >60 and length < 75;

-- 3.Query all columns in the film table with rental_rate 0,99 AND replacement_cost 12,99 OR 28,99.
select * from film
where rental_rate = 0.99 and (replacement_cost =12.99  or replacement_cost =28.99);

-- 4. What is the last_name of the customer whose value is 'Mary' in the first_name column of the customer table?
select last_name from customer
where first_name = 'Mary';

-- 5. Query film table whose length not greater than 50 and  rental_rate is not 2.99 or 4.99.
select * from film
where length<50 and rental_rate !=2.99 and rental_rate !=4.99
