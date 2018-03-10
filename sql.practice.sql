i. MANIPULATION
    1. INTRODUCTION
        SELECT * FROM celebs;

    2. RELATIONAL DATABASES
        
    3. STATEMENTS

    4. CREATE
       CREATE TABLE celebs (id INTEGER, name TEXT, age INTEGER);

    5. INSERT
        INSERT INTO celebs (id, name, age) VALUES (1, 'Justin Bieber', 21);
        SELECT * FROM celebs;

        INSERT INTO celebs (id, name, age) VALUES (2, 'Beyonce Knowles', 33); 
        INSERT INTO celebs (id, name, age) VALUES (3, 'Jeremy Lin', 26); 
        INSERT INTO celebs (id, name, age) VALUES (4, 'Taylor Swift', 26);
        SELECT name FROM celebs;

    6. SELECT
        UPDATE celebs
        SET age = 22
        WHERE id = 1;
        SELECT * FROM celebs;   

    7. UPDATE
        ALTER TABLE celebs ADD COLUMN twitter_handle TEXT;
        SELECT * FROM celebs;

    8. ALTER
        UPDATE celebs SET twitter_handle = '@taylorswift13' WHERE id = 4;
        SELECT * FROM celebs;

        DELETE FROM celebs WHERE twitter_handle IS NULL;
        SELECT * FROM celebs;

    9. DELETE
        CREATE TABLE awards (
        id INTEGER PRIMARY KEY,
        recipient TEXT NOT NULL,
        award_name TEXT DEFAULT "Grammy");

    10. CONSTRAINTS


ii. GENERALIZATIONS
    1. INTRODUCTION
        SELECT * FROM movies;

    2. SELECT
        SELECT name, genre FROM movies;

        SELECT name, genre, year FROM movies;

    3. AS
        SELECT name AS 'Star Wars' FROM movies;

        SELECT imdb_rating AS 'IMDb' FROM movies;

    4. DISTINCT
        SELECT DISTINCT genre FROM movies;

        SELECT DISTINCT year FROM movies;

    5. WHERE
        SELECT * FROM movies WHERE imdb_rating < 5;

        SELECT * FROM movies WHERE year > 2014;

    6. LIKE I 
        SELECT * FROM movies WHERE name LIKE 'Se_en';

    7. LIKE II
        SELECT * FROM movies WHERE name LIKE '%man%';

        SELECT * FROM movies WHERE name LIKE 'The%';

    8. IS NULL
        SELECT name FROM movies WHERE imdb_rating IS NULL;

    9. BETWEEN
        SELECT * FROM movies WHERE name BETWEEN 'D' AND 'G'; 

        SELECT * FROM movies WHERE year BETWEEN 1970 AND 1979;

    10. AND
        SELECT * FROM movies WHERE year BETWEEN 1970 AND 1979 AND imdb_rating > 8;

        SELECT * FROM movies WHERE year < 1985 AND genre = 'horror';

    11. OR 
        SELECT * FROM movies WHERE year > 2014 OR genre = 'action';

        SELECT * FROM movies WHERE genre = 'romance' OR genre = 'comedy';

    12. ORDER BY
        SELECT name, year FROM movies ORDER BY name;

        SELECT name, year, imdb_rating FROM movies ORDER BY imdb_rating DESC;

    13. LIMIT
        SELECT * FROM movies ORDER BY imdb_rating DESC LIMIT 3 ;

    14. CASE
        SELECT name,
	        CASE
            	WHEN genre = 'romance' THEN 'fun'
                WHEN genre = 'comedy' THEN 'fun'
                ELSE 'serious'
            END as 'mood' 
        FROM movies;


iii. AGGREGATE FUNCTIONS
    1. INTRODUCTION
        SELECT * FROM fake_apps;

    2. COUNT
        SELECT COUNT (*) FROM fake_apps;

        SELECT COUNT (*) FROM fake_apps WHERE price = 0 ;
        
    3. SUM
        SELECT SUM (downloads) FROM fake_apps;

    4. MAX/MIN
        SELECT MIN (downloads) FROM fake_apps;

        SELECT MAX (price) FROM fake_apps;

    5. AVERAGE
        SELECT AVG (downloads) FROM fake_apps;

        SELECT AVG (price) FROM fake_apps;

    6. ROUND
        SELECT name, ROUND (price, 0) FROM fake_apps;

        SELECT ROUND (AVG (price), 2) FROM fake_apps;

    7. GROUP BY I
        SELECT price, COUNT (*) FROM fake_apps GROUP BY price;

        SELECT price, COUNT (*) FROM fake_apps WHERE downloads > 20000 GROUP BY price;

        SELECT category, SUM (downloads) FROM fake_apps GROUP BY category;

    8. GROUP BY II
        SELECT category, price, AVG (downloads) FROM fake_apps GROUP BY category, price;

    9. HAVING
        SELECT price, ROUND (AVG (downloads) ) FROM fake_apps GROUP BY price HAVING COUNT (price) > 9;


iv. MULTIPLE TABLES
    1. WORKING WITH MULTIPLE TABLES
        SELECT * 
        FROM orders;
        SELECT *
        FROM subscriptions;
        SELECT *
        FROM customers;

    2. COMBINING TABLES MANUALLY
        Sports Magazine --- answering a question about the information connected to an example join table.

        Joe Schmo --- answering a question about the information connected to an example join table.

    3. COMBINING TABLES WITH SQL
        SELECT * FROM orders JOIN subscriptions ON orders.subscription_id = subscriptions.subscription_id;
            // IMO why would you name the table plural and the id singular??

        SELECT * FROM orders JOIN subscriptions ON subscriptions.subscription_id = orders.subscription_id WHERE description = "Fashion Magazine";

    4. INNER JOINS 
        SELECT COUNT (*) FROM newspaper;
        SELECT COUNT (*) FROM online;
        SELECT COUNT(*) FROM newspaper JOIN online ON newspaper.id = online.id;

    5. LEFT JOINS
        SELECT * FROM newspaper LEFT JOIN online ON newspaper.id = online.id;
        SELECT * FROM newspaper LEFT JOIN online ON newspaper.id = online.id WHERE online.id IS NULL;
    
    6. PRIMARY KEYS VS FOREIGN KEYS
        SELECT * FROM classes INNER JOIN students ON classes.id = students.class_id;

    7. CROSS JOIN
        SELECT COUNT (*) FROM newspaper WHERE start_month < 3 AND end_month > 3;
        SELECT * FROM newspaper CROSS JOIN months;
        SELECT * FROM newspaper CROSS JOIN months WHERE start_month < month AND end_month > month;
        SELECT month, COUNT (*) as subscribers FROM newspaper CROSS JOIN months WHERE start_month < month AND end_month > month GROUP BY month;

    8. UNION
        SELECT * FROM newspaper UNION SELECT * FROM online;

    9. WITH
        WITH previous_query AS (SELECT customer_id, COUNT (subscription_id) as subscriptions FROM orders GROUP BY customer_id)
        SELECT customers.customer_name, previous_query.subscriptions FROM previous_query JOIN customers ON customers.customer_id = previous_query.customer_id;