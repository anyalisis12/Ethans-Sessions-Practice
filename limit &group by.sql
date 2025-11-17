-- 

use student;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Department, Position, Salary, HireDate) VALUES
(1, 'John', 'Doe', 'HR', 'HR Manager', 60000.00, '2015-04-22'),
(2, 'Jane', 'Smith', 'IT', 'Software Engineer', 75000.00, '2017-08-15'),
(3, 'Michael', 'Brown', 'Finance', 'Accountant', 58000.00, '2016-03-10'),
(4, 'Emily', 'Johnson', 'IT', 'Data Analyst', 72000.00, '2019-11-01'),
(5, 'David', 'Wilson', 'Marketing', 'Marketing Manager', 68000.00, '2014-02-18'),
(6, 'Sarah', 'Lee', 'HR', 'Recruiter', 52000.00, '2020-01-10'),
(7, 'Robert', 'Taylor', 'IT', 'System Admin', 69000.00, '2018-06-30'),
(8, 'Laura', 'Martinez', 'Finance', 'Financial Analyst', 61000.00, '2016-09-25'),
(9, 'James', 'Anderson', 'IT', 'DevOps Engineer', 77000.00, '2021-04-05'),
(10, 'Karen', 'Thomas', 'Marketing', 'Content Strategist', 55000.00, '2019-07-12'),
(11, 'Charles', 'Jackson', 'Sales', 'Sales Manager', 65000.00, '2015-10-28'),
(12, 'Nancy', 'White', 'Sales', 'Sales Representative', 48000.00, '2017-05-14'),
(13, 'Daniel', 'Harris', 'IT', 'UI/UX Designer', 70000.00, '2018-12-03'),
(14, 'Patricia', 'Clark', 'Finance', 'Auditor', 59000.00, '2016-08-09'),
(15, 'Steven', 'Lewis', 'HR', 'HR Assistant', 45000.00, '2020-10-20'),
(16, 'Linda', 'Robinson', 'Marketing', 'SEO Specialist', 53000.00, '2019-02-27'),
(17, 'George', 'Walker', 'IT', 'Tech Lead', 88000.00, '2014-06-17'),
(18, 'Barbara', 'Young', 'Finance', 'Controller', 79000.00, '2013-11-30'),
(19, 'Brian', 'King', 'Sales', 'Sales Executive', 61000.00, '2018-03-22'),
(20, 'Elizabeth', 'Scott', 'IT', 'QA Engineer', 64000.00, '2021-09-14');

select * from Employee;

 -- limit & offset --
 -- select * from table_name order by col-name desc/asc limit X --
select * from Employee order by salary desc limit 1 ;
select * from Employee order by salary desc limit 6 ; -- highest salary --
select * from Employee order by salary desc limit 1 offset 1 ;
select * from Employee order by salary desc limit 6 offset 1; -- 2nd highest salary --

select * from Employee order by salary asc limit 6 ; -- lowest salary --
select * from Employee order by salary asc limit 6 offset 1; -- 2nd lowest salary --
 -- select * from table_name order by col-name desc/asc  limit X offset Y --

-- GROUP BY --
-- count --
select * from Employee;
 select FirstName,Position,Salary,Department, count(EmployeeID)
 as count from Employee group by(Department);
 select FirstName,Position,Salary,Department, max(Salary)
 as max from Employee group by(Department);
 select FirstName,Position,Salary,Department, min(Salary)
 as max from Employee group by(Department);
 select FirstName,Position,Salary,Department, sum(Salary)
 as sum from Employee group by(Department);
 select FirstName,Position,Salary,Department, avg(Salary)
 as average from Employee group by(Department);
 select *, avg(Salary)
 as average from Employee group by(Department);

 
 




