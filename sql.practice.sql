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

    11. GENERALIZATIONS


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

    5. WHERE
    
    6. LIKE I 

    7. LIKE II

    8. IS NULL
    
    9. BETWEEN

    10. AND

    11. OR 

    12. ORDER BY

    13. LIMIT

    14. CASE

    15. REVIEW
