-- SQL Functions --
-- Aggregate Function --
use student;
select * from Employee;
select count(*) from employee;
select FirstName,lastname,department,avg(salary) as average from employee
 where department='Hr';
 
 select avg(salary) as average from employee;
 select Department ,sum(salary) as sum from employee;