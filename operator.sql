-- operators --
-- AND --
use sakila;
select * from customer;
select * from customer where first_name="mary" and last_name="smith";

-- or --
select * from customer where first_name="mary" or  last_name="johnson";

-- not --
select * from customer where active<>0;
select * from customer where not active=0;
select * from customer where active!=0;

-- like --
select * from customer where first_name like "D%";
select * from customer where first_name like "%E";
select * from customer where first_name like "%E%";
select * from customer where create_date like '2006%';
select * from customer where address_id like "22%";

-- IN/ NOT IN --
select * from customer where customer_id in(1,3,8,5,9);
select * from customer where customer_id not in(1,3,8,5,9);


-- between --
select * from customer where customer_id between 45 and 70;
select * from customer where customer_id not between 45 and 70;
select * from customer where first_name between 'lo' and 'yn';

-- comaprison operator --
select * from customer where customer_id>67;
select * from customer where customer_id<67;
select * from customer where customer_id>=66;
select * from customer where customer_id<=67;

-- alias --
select last_name as 'surname' from customer;
select last_name as 'surname', first_name as 'name', email from customer;

