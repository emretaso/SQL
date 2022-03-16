-- Homework 5

-- 1.List the 5 longest (length) movies in the film table whose (title) ends with the 'n' character.
select * from film
where title like '%n'
order by length desc
limit 5;

-- 2.List the shortest  second(6,7,8,9,10) 5 movies in the film table whose title ends with the 'n' character.
select * from film
where title like '%n'
order by length asc
offset 5
limit 5;

-- 3.Sort the first 4 data, in descending order over the last name column in the customer table where store_id is 1.
select * from customer
where store_id =1
order by last_name desc
limit 4;

