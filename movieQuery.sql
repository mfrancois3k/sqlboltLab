CREATE TABLE tableName 
(
    Id	varchar(300),
    Title	varchar(300),
    Director	varchar(300),
    Year	varchar(300),
    Length_minutes 	varchar(300)
);

CREATE TABLE tableName 
(
    Id	varchar(300),
    Title	varchar(300),
    Director	varchar(300),
    Year	varchar(300),
    Length_minutes 	varchar(300)
);

INSERT INTO tableName (Id,Title,Director,Year,Length_minutes )
VALUES
    ('1', 'Toy Story', 'John Lasseter', '1995', '81 '),
    ('2', 'A Bug's Life', 'John Lasseter', '1998', '95 '),
    ('3', 'Toy Story 2', 'John Lasseter', '1999', '93 '),
    ('4', 'Monsters, Inc.', 'Pete Docter', '2001', '92 '),
    ('5', 'Finding Nemo', 'Andrew Stanton', '2003', '107 '),
    ('6', 'The Incredibles', 'Brad Bird', '2004', '116 '),
    ('7', 'Cars', 'John Lasseter', '2006', '117 '),
    ('8', 'Ratatouille', 'Brad Bird', '2007', '115 '),
    ('9', 'WALL-E', 'Andrew Stanton', '2008', '104 '),
    ('10', 'Up', 'Pete Docter', '2009', '101 '),
    ('11', 'Toy Story 3', 'Lee Unkrich', '2010', '103 '),
    ('12', 'Cars 2', 'John Lasseter', '2011', '120 '),
    ('13', 'Brave', 'Brenda Chapman', '2012', '102 '),
    ('14', 'Monsters University', 'Dan Scanlon', '2013', '110');

-- Exercise 13 — Tasks
-- Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)

1. INSERT INTO movies VALUES (4, "Toy Story 4", "El Directore", 2015, 90);


-- 2.Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically 
 -- and 270 million internationally. Add the record to the BoxOffice table.

INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);

--Exercise 14 — Tasks
--1. The director for A Bug's Life is incorrect, it was actually directed by John Lasseter

    UPDATE movies SET director = 'John Lasseter' WHERE id = 2;

-- 2. The year that Toy Story 2 was released is incorrect, it was actually released in 1999
 
    UPDATE movies SET year = 1999 WHERE id = 3;

-- 3. Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich

    UPDATE movies
    SET title = "Toy Story 3", director = "Lee Unkrich"
    WHERE id = 11;

    --Exercise 15 — Tasks

-- 1. This database is getting too big, lets remove all movies that were released before 2005.

    DELETE FROM movies WHERE year < 2005;

--2 Andrew Stanton has also left the studio, so please remove all movies directed by him.
     
    DELETE FROM movies WHERE director = 'Andrew Stanton';

-- Exercise 16 — Tasks
-- Create a new table named Database with the following columns:
–-- Name A string (text) describing the name of the database
-- Version A number (floating point) of the latest version of this database
-- Download_count An integer count of the number of times this database was downloaded
--This table has no constraints.

    CREATE TABLE Database (
        Name	varchar(300),
        Version	varchar(300),
        Download_count	varchar(300)
    );

    -- Exercise 17 — Tasks
-- 1. Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
    
    ALTER TABLE movies ADD COLUMN Aspect_ratio FLOAT;
     
-- 2. Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.

    ALTER TABLE movies ADD COLUMN Language TEXT DEFAULT 'English';

    -- Exercise 18 — Tasks

    --1. We've sadly reached the end of our lessons, lets clean up by removing the Movies table ✓

    DROP TABLE movies;

    --2. And drop the BoxOffice table as well .
    Drop TABLE boxoffice;

    SQL Lesson X: To infinity and beyond!

