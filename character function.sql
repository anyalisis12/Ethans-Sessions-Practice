-- character function --
-- upper nd lower --
select upper('ethans');
select lower('xyz');
use sakila;
select * from language;
select name,lower(name) from language;
select name,upper(name) as uppercase from language;

-- length --
select length('ethans');
select name,length(name) as length from language;
select length(582697065739);

-- substring --
-- fetching value from the complete data --
-- first four letter pass --
select substring('ethans',1,4);
select substring('ethans',3,4);
select substring('ethans',4,4);
select * from film;
select title,substring(title,1,4) as substring from film;
select title,substring(title,1,9) as first_nine from film;

-- replace --
select replace('the sun tower','the','The');
select replace('the sun tower','t','T');
select title,description,replace(description,'A','The')as description_new from film;
 
 
