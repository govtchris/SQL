/*Assignment 1 */
SELECT * FROM tbl_habitat
;

/*Assignment 2 */
SELECT species_name 
FROM tbl_species
WHERE species_order=3
;

/*Assignment 3*/
SELECT nutrition_type
FROM tbl_nutrition
WHERE nutrition_cost<=600.00
;

/*Assignment 4*/
SELECT species_name
FROM tbl_species
INNER JOIN tbl_nutrition
ON tbl_species.species_nutrition=tbl_nutrition.nutrition_id 
WHERE nutrition_id BETWEEN 2202 AND 2206
;

/*Assignment 5*/
SELECT species_name AS 'Species Name:', nutrition_type AS 'Nutrition Type:'
FROM tbl_species
INNER JOIN tbl_nutrition 
ON tbl_nutrition.nutrition_id=tbl_species.species_nutrition
;

/*Assignment 6*/
SELECT specialist_fname, specialist_lname, specialist_contact
FROM tbl_specialist
INNER JOIN tbl_care 
ON tbl_specialist.specialist_id=tbl_care.care_specialist
INNER JOIN tbl_species
ON tbl_care.care_id=tbl_species.species_care
WHERE species_name='penguin'
;




/*Assignment 7*/

/*Create Database*/
CREATE DATABASE pokemon

/*Create Table 1*/
CREATE TABLE starter_types ( 
	pokemon VARCHAR(255) PRIMARY KEY NOT NULL,
	main_type VARCHAR(255) NOT NULL,
	second_type VARCHAR(255), 
	number int NOT NULL
);

/*Create Table 2*/
CREATE TABLE most_popular (
	poll_number INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	pokemon VARCHAR(255)NOT NULL,
	main_type VARCHAR(255) NOT NULL,
	second_type VARCHAR(255), 
	generation int NOT NULL 
);

/*Insert Values into Table 1*/
INSERT INTO starter_types 
	VALUES
	('Venasaur', 'Grass', 'Poison', 3),
	('Charizard', 'Fire', 'Flying', 6),
	('Blastoise', 'Water', NULL, 9),
	('Meganium', 'Grass', NULL, 154),
	('Typhlosion', 'Fire', NULL, 157),
	('Feraligatr', 'Water', NULL, 160),
	('Sceptile', 'Grass', NULL, 254),
	('Blaziken', 'Fire', 'Fighting', 257),
	('Swampert', 'Water', 'Ground', 260),
	('Torterra', 'Grass', 'Ground', 389),
	('Infernape', 'Fire', 'Fighting', 392),
	('Empoleon', 'Water', 'Steel', 395),
	('Serperior', 'Grass', NULL, 497),
	('Emboar', 'Fire', 'Fighting', 500),
	('Samurott', 'Water', NULL, 503),
	('Chesnaught', 'Grass', 'Fighting',652),
	('Delphox', 'Fire', 'Psychic', 655),
	('Greninja', 'Water', 'Dark', 658),
	('Decidueye', 'Grass', 'Ghost', 724),
	('Incineroar', 'Fire', 'Dark',727),
	('Primarina', 'Water', 'Fairy', 730),
	('Rillaboom', 'Grass', NULL, 812),
	('Cinerace', 'Fire', NULL, 815),
	('Inteleon', 'Water', NULL, 818)
;

/*Insert Values Into Table 2 */

INSERT INTO most_popular (pokemon, main_type, second_type, generation)
	VALUES 
	('Greninja', 'Water', 'Dark', 6),
	('Lucario', 'Fighting', 'Steel', 4),
	('Mimikyu', 'Ghost', 'Fairy', 7), 
	('Charizard', 'Fire', 'Flying', 1),
	('Umbreon', 'Dark', NULL, 2),
	('Sylveon', 'Fairy', NULL, 6),
	('Garchomp', 'Dragon', 'Ground', 4), 
	('Rayqueza', 'Dragon', 'Flying', 3),
	('Gardevoir', 'Psychic', 'Fairy', 3),
	('Gengar', 'Ghost', 'Poison', 1),
	('Dragapult', 'Dragon', 'Ghost', 8),
	('Tyranitar', 'Rock', 'Dark', 2),
	('Bulbasaur', 'Grass', 'Poison', 1),
	('Toxtricity', 'Poison', 'Electric', 8),
	('Lugia', 'Psychic', 'Flying', 2)
;

/*Query the name and types of pokemon who are in the top 15 most popular*/

SELECT starter_types.pokemon, starter_types.main_type, starter_types.second_type
FROM starter_types
INNER JOIN most_popular
ON starter_types.pokemon=most_popular.pokemon; 
