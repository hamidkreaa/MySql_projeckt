-------------------------------------------
-- INSERT DATA von CSV --
--------------------------------------



--Regisseure
------------

LOAD DATA INFILE "c:\\xampp\\htdocs\\mysql_kurs\\bootstrap\\sql\\regisseure.csv"
INTO TABLE regisseure
FIELDS TERMINATED BY ";" LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

-- Filme
-----------
LOAD DATA INFILE "c:\\xampp\\htdocs\\mysql_kurs\\bootstrap\\sql\\filme.csv"
INTO TABLE film
FIELDS TERMINATED BY ";" LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

-- Schauspieler
---------------
LOAD DATA INFILE "c:\\xampp\\htdocs\\mysql_kurs\\bootstrap\\sql\\schauspieler.csv"
INTO TABLE actors
FIELDS TERMINATED BY ";" LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

-- Film_Schauspieler
----------------------
LOAD DATA INFILE "c:\\xampp\\htdocs\\mysql_kurs\\bootstrap\\sql\\film_schauspieler.csv"
INTO TABLE filmactors
FIELDS TERMINATED BY ";" LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

-- Genre
-----------
LOAD DATA INFILE "c:\\xampp\\htdocs\\mysql_kurs\\bootstrap\\sql\\genre.csv"
INTO TABLE genre
FIELDS TERMINATED BY ";" LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

-- Film_Genre
-----------
LOAD DATA INFILE "c:\\xampp\\htdocs\\mysql_kurs\\bootstrap\\sql\\filmgenre.csv"
INTO TABLE filmgenre
FIELDS TERMINATED BY ";" LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

