
-------------------
-- SQL Aufgaben----
-------------------


-- 1. Alle Regisseuere
-----------------------
SELECT regisseur FROM regisseure;


-- 2. Alle Filme (Titel, Erscheinungsjahr, Regisseur, land)
-------------------------------------------------------------
SELECT titel, jahr, regisseur, land FROM film
JOIN regisseure ON regisseur_id=regisseure.id
ORDER BY titel ASC;


-- 3.Filme von bestimmte Genre (Crime, Fantasy, Thriller, …) bzw. Genres.
-----------------------------------------------------------------
	-- Crime
SELECT titel, genre FROM film
JOIN filmgenre ON film_id = film.id
JOIN genre ON genre_id=genre.id
WHERE genre LIKE 'Crime';



-- 4. Filme der 90er Jahre von bestimmte Genre und Schauspieler  
---------------------------------------------------------------
	SELECT schauspieler, titel, genre, jahr FROM film
JOIN filmactors ON filmactors.film_id = film.id
JOIN actors ON actor_id = actors.id
JOIN filmgenre ON filmgenre.film_id = film.id
JOIN genre ON genre_id = genre.id
WHERE (jahr BETWEEN '1989' AND '2000') AND (schauspieler = 'Harvey Keitel') AND (genre LIKE 'Drama');

	-- Robert de Niro
SELECT schauspieler, titel, genre, jahr FROM film
JOIN filmactors ON filmactors.film_id = film.id
JOIN actors ON actor_id = actors.id
JOIN filmgenre ON filmgenre.film_id = film.id
JOIN genre ON genre_id = genre.id
WHERE (jahr BETWEEN '1979' AND '2000') AND (schauspieler = 'Robert de Niro') AND (genre LIKE 'Crime');


-- 5. Filme mit einem/er bestimmten Schauspieler/in
---------------------------------------------------
SELECT , titel, jahr FROM actors 
JOIN filmactors ON actor_id = actors.id 
JOIN film ON film.id = film_id 
WHERE actors.schauspieler='Clint Eastwood';

-- 6. Liste der Filme, bzw Spiele die zur Verfuegung stehen.
---------------------------------------------
SELECT titel, jahr, land, beschreibung FROM film
WHERE verfuegung = '0';

-- 7. Filme von einem bestimmten Regisseur.
---------------------------------------------
SELECT regisseur, titel, jahr FROM film
JOIN regisseure ON regisseur_id = regisseure.id
WHERE regisseur = 'George Lucas';


