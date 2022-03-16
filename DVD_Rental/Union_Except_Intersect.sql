-- Homework 11

-- 1.Sort all the data for the first_name columns in the actor and customer tables.
(select first_name from customer)
union
(select first_name from actor);


-- 2.Sort the intersecting data for the first_name columns in the actor and customer tables.
(select first_name from customer)
intersect
(select first_name from actor);

-- 3.Sort the data in the first table but not in the second table.
(select first_name from customer)
except
(select first_name from actor);
