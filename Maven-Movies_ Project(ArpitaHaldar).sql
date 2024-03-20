SHOW databases;
use mavenmovies;
show tables;
SELECT * FROM actor;
SELECT * FROM actor_award;
SELECT * FROM actor_info;
SELECT * FROM address;
SELECT * FROM advisor;
SELECT * FROM category; 
SELECT * FROM city; 
SELECT * FROM country; 
SELECT * FROM customer; 
SELECT * FROM customer_list; 
SELECT * FROM film; 
SELECT * FROM film_actor; 
SELECT * FROM film_category; 
SELECT * FROM film_list; 
SELECT * FROM inventory; 
SELECT * FROM investor; 
SELECT * FROM language; 
SELECT * FROM nicer_but_slower_film_list; 
SELECT * FROM payment; 
SELECT * FROM rental; 
SELECT * FROM sales_by_store;
SELECT * FROM staff; 
SELECT * FROM staff_list; 
SELECT * FROM store; 

-- 1. Identify the primary keys and foreign keys in the Maven Movies database. Discuss the differences.
SELECT actor.actor_id, actor.first_name,actor.last_name FROM actor
INNER JOIN actor_info ON actor.actor_id = actor_info.actor_id;
desc actor;
/*
Primary Keys: Uniquely identify records within a table, ensuring no duplicates. They maintain entity integrity.
Foreign Keys: Establish relationships between tables by referencing the primary key of another table. They maintain referential integrity.
*/

-- 2. List all details of actors.
SELECT * FROM actor_info;

-- 3. List all customer information from the database.
SELECT * FROM customer_list;

-- 4. List different countries.
SELECT * FROM country;

-- 5. Display all active customers.
SELECT * FROM customer WHERE active = 1 ;

-- 6. List all rental IDs for customers with ID 1.
SELECT * FROM rental WHERE customer_id = 1;

-- 7. Display all the films whose rental duration is greater than 5.
SELECT * FROM film WHERE rental_duration > 5;

-- 8. List the total number of films whose replacement cost is greater than $15 and less than $20.
SELECT * FROM film WHERE replacement_cost > 15 AND replacement_cost < 20;

-- 9. Display the count of unique first names of actors.
SELECT DISTINCT first_name FROM actor;

-- 10. Display the first 10 records from the customer table.
SELECT * FROM customer LIMIT 10;

-- 11. Display the first 3 records from the customer table whose first name starts with 'b'.
SELECT * FROM customer WHERE first_name LIKE 'B%' LIMIT 3;

-- 12. Display the names of the first 5 movies which are rated as 'G'
SELECT * FROM film_list WHERE rating = 'G' LIMIT 5;

-- 13. Find all customers whose first name starts with "a".
SELECT * FROM customer WHERE first_name LIKE 'a%';

-- 14. Find all customers whose first name ends with "a".
SELECT * FROM customer WHERE first_name LIKE '%a';

-- 15. Display the list of first 4 cities which start and end with 'a'.
SELECT * FROM city WHERE city LIKE 'a%' LIMIT 4;

-- 16. Find all customers whose first name contains "NI" in any position.
SELECT * FROM customer WHERE first_name LIKE '%NI%';

-- 17. Find all customers whose first name has "r" in the second position.
SELECT * FROM customer WHERE first_name LIKE '_r%';

-- 18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
SELECT * FROM customer WHERE first_name LIKE 'a%' AND LENGTH(first_name) >= 5;

-- 19. Find all customers whose first name starts with "a" and ends with "o".
SELECT * FROM customer WHERE first_name LIKE 'a%o';

-- 20. Get the films with PG and PG-13 ratings using the IN operator.
SELECT * FROM film_list WHERE rating IN ('PG','PG-13');

-- 21. Get the films with lengths between 50 to 100 using the BETWEEN operator.
SELECT * FROM film_list WHERE length BETWEEN 50 AND 100;

-- 22. Get the top 50 actors using the LIMIT operator.
SELECT * FROM actor LIMIT 50;

-- 23. Get the distinct film IDs from the inventory table.
SELECT DISTINCT film_id FROM inventory;
