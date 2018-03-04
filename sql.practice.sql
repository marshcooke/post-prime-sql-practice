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

