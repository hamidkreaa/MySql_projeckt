
CREATE TABLE IF NOT EXISTS genres (
id INT(5) PRIMARY KEY AUTO_INCREMENT,
genre VARCHAR(50) NOT NULL
);


LOAD DATA INFILE "C:\\xampp\\htdocs\\dsql\\data\\genres.csv" INTO TABLE genres FIELDS TERMINATED BY "," LINES TERMINATED BY "\r\n";




CREATE TABLE IF NOT EXISTS laender (
id INT(5) PRIMARY KEY AUTO_INCREMENT,
land VARCHAR(50) NOT NULL
);



LOAD DATA INFILE "C:\\xampp\\htdocs\\dsql\\data\\laender.csv" INTO TABLE laender FIELDS TERMINATED BY "," LINES TERMINATED BY "\r\n";