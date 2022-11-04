DROP TABLE IF EXISTS items;

CREATE TABLE items (id_item INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
			item varchar(24), consumible boolean, cost float, 
			`key` boolean, rarity int, weight float, `usage` int, 
			fusionable boolean, width float, height float, durability int,
			description text, disassamble boolean, id_item_type int UNSIGNED,
 			FOREIGN KEY (id_item_type) REFERENCES items_types(id_item_type)); 

INSERT INTO items (item, consumible, cost, `key`, rarity, weight, `usage`, 
			fusionable, width, height, durability, description, disassamble, id_item_type) 

VALUES ("Queso", true, 40, false, 3, 20, 1, true, 0.1, 0.1, 3, "Queso que sabe a beso", false, 1), 
("Carne de zombi", true, 20, false, 2, 40, 1, true, 0.3, 0.3, 1, "Esto huele mal", false, 1), 
("Fragmento Escarlata", true, 500, false, 45, 10000, 1, true, 0.5, 0.25, -1, "Piedra rara de volcán", false, 2);


CREATE TABLE items_types(
	id_item_type INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	type varchar (24),
	description TEXT,
	icon VARCHAR(16));

INSERT INTO items_types (type, description, icon)
VALUES ("Comida" ,"alimento rico", "food.png"),
("Poción", "te cura o mata o lo que sea", "poción.png"),
("Tesoro", "$_$", "tesoro.png");


  DROP TABLE IF EXISTS weapons;
 DROP TABLE IF EXISTS weapons_types;

CREATE TABLE weapons (id_weapon INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
			weapon varchar(24), grip INT, durability INT, 
			distance FLOAT, quality int, physic_attack float, physic_defense FLOAT,
            magic_attack FLOAT, magic_defense FLOAT, description TEXT, `level` INT, level_min INT,
            id_weapon_type INT UNSIGNED,
            FOREIGN KEY (id_weapon_type) REFERENCES weapons_types (id_weapon_type)); 

INSERT INTO weapons (weapon, grip, durability, distance, quality, physic_attack, physic_defense, magic_attack, magic_defense, description, `level`, level_min, id_weapon_type)


CHARACTERS_WEAPONS

DROP TABLE IF EXISTS characters_weapons;

CREATE TABLE characters_weapons (id_character_weapon INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
				id_character INT UNSIGNED, id_weapon INT UNSIGNED, 
				FOREIGN KEY (id_character) REFERENCES characters (id_character), 
				FOREIGN KEY (id_weapon) REFERENCES weapons (id_weapon));


INSERT INTO characters_weapons (id_character, id_weapon)
VALUES (1, 1), (4, 3), (4, 1);


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







