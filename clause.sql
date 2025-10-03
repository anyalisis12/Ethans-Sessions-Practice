-- clause --
-- where --
select * from customer;
select customer_id,email,first_name,active,last_name
from customer where first_name="Mary";
select * from customer where active=1;