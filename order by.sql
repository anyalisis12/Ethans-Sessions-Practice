-- order by --
use sakila;
select * from payment;
select customer_id,staff_id,amount from payment order by amount asc;
select customer_id,staff_id,amount from payment order by amount desc;
select customer_id,amount from payment order by amount asc;
