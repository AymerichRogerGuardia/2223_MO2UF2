

DROP TABLE IF EXISTS weapons_materails;

DROP TABLE IF EXISTS weapons;
DROP TABLE IF EXISTS materials;

DROP TABLE IF EXISTS weapons_types;

CREATE TABLE materials ( 
	id_materail INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	material VARCHAR (16),
	color CHAR (6),
	cost FLOAT);

INSERT INTO materials (material, color, cost)

VALUES ("Obsidiana", "000000", 40),
	("Madera", "ddeeaa", 10),
	("Carne", "ffff00", 5),
	("Pana", "ffdddd", 50)







