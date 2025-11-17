-- subquery in where clause --
use sakila;
select * from customer; -- customer_id --
select * from payment;
select count(customer_id) from payment;
select * from customer where customer_id in ( select customer_id from payment where staff_id=1);
select * from payment where customer_id in ( select customer_id from customer where store_id=1);

select * from film;
select * from film_category;
select * from film where film_id in (select film_id from film_category where category_id =11);
select * from film where film_id in (select film_id from film_category where category_id =6);
select * from film_category where film_id in (select film_id from film where rental_duration =6);