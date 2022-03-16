-- Homework 12

-- 1.How many films are longer than the average film length?
select count(*) from film
where length > ( select avg(length) from film);

-- 2.How many movies have the highest rental_rate in the film table?
select count(*) from film
where rental_rate = ( select max(rental_rate) from film);

-- 3.In the film table, list the movies with the lowest rental_rate and the lowest replacement_cost values.
select * from film
where rental_rate = (select min(rental_rate)from film) 
and
replacement_cost =( select min(replacement_cost) from film);

-- 4.In the payment table, list the customers who make the most purchases.
select concat(first_name,' ',last_name), sum(amount) from payment
join customer on customer.customer_id = payment.customer_id
group by concat(first_name,' ',last_name)
order by sum desc

