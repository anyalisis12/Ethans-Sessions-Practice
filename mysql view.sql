-- mysql views --
-- interview ques --
-- mysql views are a type of virtual tables --
-- create view_name as select_statement from table_name; --
use sakila;
create view temp as select customer_id,store_id from customer;
select * from temp;

create view inner_join as select customer.customer_id,payment.payment_id 
from customer inner join payment on customer.customer_id=payment.customer_id;
select * from inner_join where payment_id=5;



