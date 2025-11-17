use crm_db;

create table person(
 adhar_id int not null,
 first_name varchar(30),
 city varchar(20),
 unique (adhar_id));
 insert into person values (1222, 'charles', 'sushant');
 select * from person;
 
 -- Write a SQL query to create a table with specific columns and constraints.--
 create database Course;
 use course;
 create table sql_course(
 id int not null,
 name varchar(20),
 fees int,
 check(fees<25000),
 course_time time);
 select * from sql_course;
 insert into sql_course values(1,'anuradha',26000,'14:30:00'),(2,'sanika',24000,'12:25:00');
 
 -- Write a SQL query to add a new column to an existing table.--
 alter table sql_course add column course_date date;
 
 -- Write a SQL query to change the data type of an existing column in a table.--
 alter table sql_course drop column fees;
 alter table sql_course add column fees int not null;
 
 -- Write a SQL query to remove a column from an existing table.--
 alter table sql_course drop column course_date;
 
 -- Write a SQL query to add a unique constraint to a column in an existing table.
 alter table sql_course add constraint course_id unique(id); 
 
 -- Write a SQL query to create a foreign key relationship between two tables.
 create table db_course(
 id int,
 name varchar(40),
 course_name varchar (20),
 course_date date,
 course_id int primary key
 );
 select * from db_course;
 alter table db_course drop column id; 
 create index idx_course_id on db_course(course_id);
 ALTER TABLE db_course
ADD CONSTRAINT fk_db_course_course_id
FOREIGN KEY (course_id)
REFERENCES db_course(course_id);

-- Write a SQL query to permanently delete a table and all its data.--
drop table db_course;


-- Write a SQL query to remove all rows from a table while retaining its structure --
