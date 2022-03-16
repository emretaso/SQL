--  Homework 6

-- 1.What is the average of the values in the rental_rate column in the film table?
select avg(rental_rate) from film;

-- 2.How many of the movies in the film table start with the character 'C'?
select count(*) from film
where title like 'C%';

-- 3.How many minutes is the longest (length) movie with rental_rate equal to 0.99 among the movies in the film table?
select max(length) from film
where rental_rate=0.99;

-- 4.How many different replacement_cost values are there for the movies longer than 150 minutes in the film table?
select count(distinct replacement_cost) from film
where length >150;



