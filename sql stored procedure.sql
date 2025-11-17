-- SQL stored procedure --

use student;
delimiter //
create procedure test1()
begin 
select * from employee;

end //

create procedure test3()
begin 
select * from employee;
select * from orders;
end //

delimiter //
create procedure test2()
begin 
select * from customer;
end //

delimiter $$ 
create procedure condition_sal()
begin 
select FirstName,department,position,salary from employee
where salary> 5000;
end $$

use student;
delimiter //
create procedure get_emp_id(in id int)
begin
select * from employee where Employeeid=id;
end //





