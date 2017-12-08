
-- Add a column named verfuegung into table film
--------------------------------------------
ALTER TABLE film ADD COLUMN verfuegung boolean DEFAULT '0';

-- Update film.verfuegung where id > 20
--------------------------------------------
UPDATE film set verfuegung='1' where id >20;

