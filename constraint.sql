-- not null --
use student;
create table infor(
Id int not null,
name varchar(30) not null,
age int,
marks int not null
);
-- unique --
create table person(
adhar_id int not null,
first_name varchar(30),
city varchar(20),
unique(adhar_id)
);

insert into person values (1222,"anu","Pune");
select * from person;
insert into person values (1346,"Tanu","Aurangabad"),(1234,"Ram","Mumbai");
select * from person;
select adhar_id,city from person;

-- primary key --
create table customer(
customer_id int,
first_name varchar(30),
last_name varchar(30),
quantity int,
primary key(customer_id));

-- foreign  key --
create table orders(
order_id int,
product_name varchar(90),
sale int,
customer_id int,
primary key(order_id),
constraint order_fkorders foreign key (customer_id) references customer(customer_id) );

-- check --
create table person2(
id int,
name varchar(30),
age int,
check(age >19));
insert into person2 values (1,"anuradha",34),(2,"Gujju",16);
Select * from person2;
insert into person2 values (1,"anuradha",34),(2,"Gujju",16);
Select * from person2;
insert into person2 values (2,"radha",34),(3,"Gujju",13);
Select * from person2;

create table person3(
id int,
name varchar(30),
age int,
constraint chk_con check(age>19 and id>1));
insert into person3 values (2,"radha",34),(3,"Vir",13);
Select * from person3;


-- default --
create table person4(
id int,
name varchar(30),
city varchar(45) default('Mumbai'),
age int);
insert into person4 values(1,"sak",default,32);
select * from person4;
insert into person4 values(1,"sakshi",default,32),(2,"rani","Pune",12);
select * from person4;
