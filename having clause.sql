-- having clause --
 --  filter results after applying aggregate functions.unlike where,which filters individual row haviing works with aggregated results --
-- select aggregate_function(col) from table_name having condition--
use student;
select * from employee;
-- filter the total salary --
select sum(salary) from employee having sum(salary)>50000;
select salary, sum(salary) from employee having sum(salary)>45667876
or sum(salary)<45667876;

select avg(salary) as AVG_SAlary fromleads employee having avg(salary)>50000;
select department, avg(salary) from employee group by department having avg(salary)>30000;
select FirstName,salary from employee;

select max(salary) as AVG_SAlary from employee having max(salary)>100000;
select min(salary) as AVG_SAlary from employee having min(salary)>10000;
select department, max(salary) as MAX_Salary from employee  group by department having max(salary) > 50000;
