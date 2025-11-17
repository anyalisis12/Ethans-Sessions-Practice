-- assignment 2 --
use sakila;
CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
department VARCHAR(50),
salary DECIMAL(10, 2),
hire_date DATE
);
INSERT INTO Employees (emp_id,emp_name, department, salary, hire_date)
VALUES(1,'Alice Johnson', 'HR', 60000.00, '2022-01-15'),
(2,'Bob Smith', 'IT', 75000.00, '2021-06-10');
select * from employees;
alter table employees add column email varchar(40);
alter table employees 
modify salary decimal(12,2);

alter table employees drop column emp_name;
alter table employees add column full_name varchar(100);

RENAME TABLE Employees TO Staffs;
truncate table staffs;
alter table staffs add column phone_number int(11);
alter table staffs
modify department text;
alter table staffs drop column salary;




-- next table --
-- Assignment 1--

CREATE DATABASE LibraryDB; 
USE LibraryDB; 
CREATE TABLE Books ( 
 book_id INT PRIMARY KEY AUTO_INCREMENT, 
 title VARCHAR(100), 
 author VARCHAR(100), 
 genre VARCHAR(50), 
 published_year INT, 
 available BOOLEAN DEFAULT TRUE 
); 
CREATE TABLE Members ( 
 member_id INT PRIMARY KEY AUTO_INCREMENT, 
 full_name VARCHAR(100), 
 join_date DATE, 
 membership_type ENUM('Regular', 'Premium') 
); 
INSERT INTO Books (title, author, genre, published_year) VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925), 
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960), ('1984', 'George Orwell', 'Dystopian', 1949), 
('Clean Code', 'Robert C. Martin', 'Programming', 2008), ('A Brief History of Time', 'Stephen Hawking', 'Science', 1988); 
commit; 
select * from Books;

INSERT INTO Members (full_name, join_date, membership_type) VALUES 
('Alice Brown', '2023-01-15', 'Regular'), 
('Bob Smith', '2022-11-10', 'Premium'), 
('Charlie Johnson', '2023-03-05', 'Regular'), 
('Dana White', '2021-12-20', 'Premium'), 
('Eve Black', '2023-06-01', 'Regular'); 
commit;
select * from Members;

-- after the year List all books published 1950. --
select * from Books where published_year>1950;
-- Find all Premium members --
select * from members where membership_type="premium";

-- Get the total number of books available.  --
SELECT COUNT(*) AS total FROM Books WHERE available = TRUE;

-- List all books in the "Fiction" genre. --
select * from Books where genre='fiction';

-- Display members who joined in 2023.
select * from members where year(join_date)=2023;

-- DML --
-- Change the genre of "1984" to "Science Fiction".
update books set genre='Science Fiction' where published_year=1949;
set sql_safe_updates=0;
select * from Books;

--  Set all books published before 1950 as unavailable.
update books set available=0 where published_year<1950;

--  Upgrade "Alice Brown" to Premium membership. 
select * from members;
update members set membership_type="premium" where full_name="Alice Brown";
rollback;

-- Delete the book titled "Clean Code"
DELETE FROM Books
WHERE title = 'Clean Code';

--  Remove members who joined before 2022. 
DELETE FROM members
WHERE year(join_date)<2022;

-- Insert a new book, then update it with a new author. 
INSERT INTO Books (title, author, genre, published_year)
VALUES ('Deep Learning with Python', 'François Chollet', 'Programming', 2017);

UPDATE Books SET author = 'Andrew Ng' WHERE title = 'Deep Learning with Python';








