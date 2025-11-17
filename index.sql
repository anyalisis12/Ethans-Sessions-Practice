-- indexes --
-- create index index_name on table_nam(col_name); --
create index IND on employee(employeeid);
select * from employee;
desc employee;
 -- describe details of table --

create index xyz on employee(position,firstname);

drop index xyz on employee;