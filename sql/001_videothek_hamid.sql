-- 001_video_tec_db_erstellen.sql
-- -------------------------------

-- USE videothek_hamid;

-- alte datenbank gelöscht
-- -------------------------------
-- DROP TABLE IF EXISTS film;
-- DROP TABLE IF EXISTS actors;
-- DROP TABLE IF EXISTS regisseure;
-- DROP TABLE IF EXISTS genre;
-- DROP TABLE IF EXISTS benutzer;
-- DROP TABLE IF EXISTS filmactors;
-- DROP TABLE IF EXISTS filmgenre;

DROP SCHEMA IF EXISTS videothek_hamid;


-- SCHEMA ERSTELLEN
-- ------------------
CREATE SCHEMA IF NOT EXISTS videothek_hamid

DEFAULT CHARACTER SET=utf8;

USE videothek_hamid;


-- TABELE ERSTELLEN
-- -----------------

-- Tabelle benutzer
CREATE TABLE IF NOT EXISTS benutzer
	(id INT(8) PRIMARY KEY AUTO_INCREMENT, 
	anrede VARCHAR (20) NOT NULL,
	vorname VARCHAR (50) NOT NULL,
	nachname VARCHAR (60) NOT NULL,
	benutzername VARCHAR(20) NOT NULL,
	passwort VARCHAR(20) NOT NULL,
	typ VARCHAR(1) NOT NULL DEFAULT 'N'
);
	
-- Tabelle Regisseure
CREATE TABLE IF NOT EXISTS regisseure
	(id INT(3) PRIMARY KEY AUTO_INCREMENT , 
	regisseur VARCHAR(60) NOT NULL
);
	
	-- Tabelle Film
CREATE TABLE IF NOT EXISTS film
	(id INT(4) PRIMARY KEY AUTO_INCREMENT,
	titel VARCHAR(60) NOT NULL, 
	regisseur_id INT(3) NOT NULL,
	jahr VARCHAR(4) NOT NULL, 
	beschreibung text not null,
	Runtime varchar (20),
	bild varchar (100),
	land varchar (50),
	FOREIGN KEY (regisseur_id)
		REFERENCES regisseure(id)
		ON DELETE CASCADE
);

-- Tabelle Regisseure
CREATE TABLE IF NOT EXISTS regisseure
	(id INT(3) PRIMARY KEY AUTO_INCREMENT , 
	regisseur VARCHAR(60) NOT NULL
);

-- Tabelle schauspieler
CREATE TABLE IF NOT EXISTS actors 
	(id INT(3) PRIMARY KEY AUTO_INCREMENT , 
	schauspieler VARCHAR(60) NOT NULL
);

-- Tabelle filme_schauspieler
CREATE TABLE IF NOT EXISTS filmactors
	(id INT(3) PRIMARY KEY AUTO_INCREMENT , 
	film_id INT(3) NOT NULL,
	actor_id INT(3) NOT NULL
);

-- Tabelle genre
CREATE TABLE IF NOT EXISTS genre(
	id int (3) PRIMARY KEY auto_increment,
	genre varchar(30) NOT NULL
);

-- Tabelle filme_genre
CREATE TABLE IF NOT EXISTS filmgenre
	(id INT(3) PRIMARY KEY AUTO_INCREMENT , 
	film_id int (3) NOT NULL,
	genre_id int (3) NOT NULL
);



