-- 002_video_tec_db Data Insert
-- -------------------------------

USE videothek_hamid;


-- Values in Tabelle benutzer
--------------------------
INSERT INTO benutzer(anrede,vorname,nachname,benutzername,passwort,typ) values
('Herr','Max','Schmit','max','max','N'),
('Frau','Petra','Schultz','petra','petra','N'),
('Herr','John','Khan','john','john','N'),
('Herr.','Hamid','Kreaa','hamid','hamid','A'),
('Frau','Silke','Peterson','silke','silke','N'),
('Frau','Maria','Goldbach','maria','maria','N');
