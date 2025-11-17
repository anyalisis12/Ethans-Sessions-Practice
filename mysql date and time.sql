-- MYSQL time nd date functions --
select now();
select curdate();
select curtime();
use sakila;
select * from customer;
select create_date,date_add(create_date,interval 1 year) as updated from customer;
select create_date,date_add(create_date,interval 6 month) as updated from customer;
select create_date,date_add(create_date,interval 6 day) as updated from customer;