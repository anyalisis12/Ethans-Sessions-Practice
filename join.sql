-- join --
-- select col_name from table 1 inner join table 2 on table.col_namer = table2.col_name; --
use sakila;
select * from city;
select * from country;
select city.city_id,city.city,country.country_id,country.country from country 
inner join city on city.country_id=country.country_id;

-- right join --
select city.city_id,city.city,country.country_id,country.country from country 
right join city on city.country_id=country.country_id;

-- left join --
select city.city_id,city.city,country.country_id,country.country from country 
left join city on city.country_id=country.country_id;


-- full outer join --

select city.city_id, city.city, country.country_id, country.country from country 
left join city on city.country_id=country.country_id
union all 
select city.city_id,city.city,country.country_id,country.country from country 
right join city on city.country_id=country.country_id;

use sakila;
select * from film;
select * from film_actor;

select film.title, film.release_year, film_actor.actor_id
from film left join film_actor on film.film_id = film_actor.film_id
union all
select film.title, film.release_year, film_actor.actor_id 
from film right join film_actor on film.film_id = film_actor.film_id;




