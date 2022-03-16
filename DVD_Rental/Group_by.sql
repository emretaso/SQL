--  Homework 7

-- 1.Group the film table according to their rating values.
select count(*), rating from film
group by rating;

-- 2.Group the film table according to the replacement_cost column, list the replacement_cost value with more than 50 films and the corresponding number of films.
select count(*) as amount_film, replacement_cost from film
group by replacement_cost
having count(*) > 50;


-- 3. What are the number of customers corresponding to the store_id values in the customer table?
select store_id, count(*) as customer_amount from customer
group by store_id;

--4. After grouping city table according to the country_id column,share the country_id information with the highest number of cities and the number of cities.
select country_id,count(distinct city) as city_amount from city
group by country_id
order by city_amount desc
limit 1;