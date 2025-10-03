use student;
create table person4(
id int,
name varchar(30),
city varchar(45) default('Mumbai'),
age int);
select * from person4;
insert into person4 values (1,"sakshi","pune",34),(2,"sak","mumbai",12);
set sql_safe_updates=0;
delete from person4 where id=2;

set sql_safe_updates=0;
set autocommit=0;
select * from person4;
delete from person4 where id=1;
insert into person4 values(1,"sakshi",default,32),(2,"rani","Pune",12);
rollback;

-- truncate --
truncate table person4;
select * from person4;

-- drop --
drop table infor;
drop database student1;
rollback;

-- update --
select * from person3; 
select * from person4;
update person4 set city="Nashik" where id=1;
update person4 set city="Nashik" where city="Pune";
update person4 set name="Anu" where name="rani";

-- alter --
alter table person4 drop column age;
alter table person4 add column salary decimal;
update person4 set salary=3000 where id=1;


-- Assignment --
create table job(
job_id int,
job_title varchar(30) not null,
min_salary int,
max_salary int,
unique(job_id),
check (max_salary>25000));
select * from job;
insert into job values (1,"developer",30000,70000),(2,"Engineer",40000,60000);
insert into job values (3,"scientist",20000,10000),(3,"analyst",40000,60000);
create table countries(
country_id int,
country_name varchar(30) not null,
region_id int,
unique(country_id),
CONSTRAINT chk_country CHECK (country_name <> 'Italy' AND country_name <> 'India' AND country_name <> 'China')
);
select * from countries;
insert into countries values (1,"africa",30000),(2,"america",40000),(3,"italy",8000);

create table Staff(
staff_id int,
first_name varchar(20),
last_name varchar(20),
dob date);
select * from staff;
insert into Staff values (1,"Anu","Bansode","17/09/2025"),(2,"Sakshi","Mahajan","16/08/2024");
insert into Staff values (1, 'Anu', 'Bansode', '2025-09-17'),
(2, 'Sakshi', 'Mahajan', '2024-08-16');
alter table staff add column year decimal;
alter table staf drop column dob;
alter table staff drop column dob;
alter table staff drop column last_name;
alter table staff add column last_name text;
alter table staff add column location varchar(20);
insert into Staff values (1, 'Anu', 2025, 'Bansode','Pune'),
(2, 'Sakshi', 2024,'Mahajan','Goa');










