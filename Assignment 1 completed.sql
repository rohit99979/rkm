 -- 1)Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- A PRIMARY KEY generally focuses on the uniqueness of the table.It assures the value in the specific column is unique.
-- the table allows only one primary key.
-- a foreign key generally used to build a relationship between the two tables.
-- tables can allow more than one foreign key.
show tables;
desc actor;
-- actor_id is primary key and last_name is foreign key
desc actor_award;
-- actor_award_id is primary key and last_name is foreign key
desc address;
-- address_od is primary key and city_id is foreign key
desc advisor;
-- advisor_id is primary key
desc category;
-- category_id is primary key
desc city;
-- city_id is primary key and country_id is foreign key
desc country;
-- country_id is primary key
desc customer;
-- customer_id is primary key and store_id,last_name,address_id are foreign key
desc film;
-- film_id is primary key and description,language_id,original_language_id are primary key
desc film_actor;
-- actor_id,film_id are primary key
desc film_category;
-- film_id,category_id are primary key
desc film_text;
-- film_id is primary key and title is foreign key
desc inventory;
-- inventory_id is primary key and film_id,store_id are foreign key
desc investor;
-- investor_id is primary key
desc language;
-- language_id is primary key
desc payment;
-- payment_id is primary key and customer_id,staff_id,rental_id are foreign key
desc rental;
-- rental_id is primary key and rental_date,inventory_id,customer_id,staff_id are foreign key
desc staff;
-- staff_id is primary key and address_id, store_id are foreign key
desc store;
-- store_id is primary key and address_id is foreign key and manager_staff_id is unique

-- 2 List Details of all Actors
select * from actor;

-- 3 List all Customer information from Database.
select * from customer;

-- 4 List Different Countries
select distinct country from country;

-- 5 Display all active customers.
select * from customer where active =1;

-- 6 List of all rental IDs for customer with ID 1.
select customer_id , rental_id from rental where customer_id =1;

-- 7 Display all the films whose rental duration is greater than 5 .
select * from film where rental_duration>5;

-- 8 List the total number of films whose replacement cost is greater than $15 and less than $20.

select count(*) as total_film from film where replacement_cost >15 and replacement_cost <20;

-- 9 Find the number of films whose rental rate is less than $1.
select count(*) as no_of_films from film where rental_rate < 1;

-- 10 Display the count of unique first names of actors.
select count(distinct first_name) as first_name from actor;

-- 11 Display the first 10 records from the customer table .
select * from CUSTOMER  limit 10;

-- 12 Display the first 3 records from the customer table whose first name starts with ‘b’.
select first_name  from customer where first_name  like 'b%' limit 3;

-- 13 Display the names of the first 5 movies which are rated as ‘G’.
select title,rating from film where rating='G' limit 5;

-- 14 Find all the customers whose first name starts with a
select * from customer where first_name like 'a%';

-- 15 Find all the customers whose first name ends with a
select * from customer where first_name like '%a';

-- 16 Display the list of first 4 cities which start and end with ‘a’ .
select city from city where city like 'a%a' limit 4;

-- 17 Find all customers whose first name have "NI" in any position.
select * from customer where first_name like "%NI%";

-- 18 Find all customers whose first name have "r" in the second position
select * from customer where first_name like "_r%";

-- 19 Find all customers whose first name starts with "a" and are at least 5 characters in length.
select * from customer where first_name like 'a%' and length(first_name)>=5;

-- 20 Find all customers whose first name starts with "a" and ends with "o".
select * from customer where first_name like "a%o";

-- 21 Get the films with pg and pg-13 rating using IN operator.
select * from film where rating in ("pg","pg-13");

-- 22 Get the films with length between 50 to 100 using between operator.
select * from film where length between 50 and 100;

-- 23 Get the top 50 actors using limit operator.
select * from actor order by actor_id desc limit 50;

-- 24 Get the distinct film ids from inventory table.
select distinct film_id from inventory;

