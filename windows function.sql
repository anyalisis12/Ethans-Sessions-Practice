use student;
select * from restaurants;

-- Window Functions --
-- aggregate window function --
-- avg --
select restaurant_name,cuisine,avg(price) over(
partition by cuisine)  as average_price from restaurants;
select restaurant_name,cuisine,ratings,avg(price) over(
partition by cuisine order by ratings desc)  as average_price from restaurants;

select restaurant_name,cuisine,ratings,avg(ratings) over(
partition by cuisine)  as average_rate from restaurants;

select restaurant_name,cuisine,ratings,avg(ratings) over(
partition by cuisine order by ratings desc)  as average_rate from restaurants;

-- sum --
select restaurant_name,cuisine,sum(price) over(
partition by cuisine)  as total from restaurants;

-- ranking--
select restaurant_name,cuisine,ratings,rank() over(order by ratings desc)
as rank_of_rasto from restaurants;

-- dense rank --
select restaurant_name,cuisine,ratings,dense_rank() over(order by ratings desc)
as rank_of_rasto from restaurants;

-- n_tile --
select restaurant_name,cuisine,ratings,ntile(2) over(order by ratings)
as groups_ from restaurants;
select restaurant_name,cuisine,ratings,ntile(3) over(partition by cuisine order by ratings)
as groups_ from restaurants;

-- lead & lag --
select restaurant_name,restaurant_id,price, lead( price) over(order by price) 
as lead_price from restaurants;
select restaurant_name,restaurant_id,price, lag( price) over(order by price) 
as lag_price,
lead( price)over(order by price) as lag_price from restaurants;


