-- 1.Query country names in the country column of the country table, starting with 'A'  and ending with 'a'.
select country from country
where country like 'A%a';
-- 2.Query country names in the country table, consisting of at least 6 characters and ending with the 'n' character.
select country from country
where country like '_____%n';
-- 3.Query the film table, list the film title containing at least 4 'T' characters, regardless of upper or lower case letters.
select title from film
where title ilike '%t%t%t%t%';
-- 4.Query all the columns in the film table, sort the data that starts with the title 'C' character, length greater than 90 and a rental_rate of 2.99.
select * from film
where title like 'C%' and length>90 and rental_rate = 2.99;