CREATE TABLE regions (
  id INT NOT NULL AUTO_INCREMENT,
  region_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pokedex (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  type VARCHAR(10),
  evolution INT,
  region_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (region_id) REFERENCES regions(id)
);

INSERT INTO regions(region_name)
VALUES ('Kanto'), ('Johto'), ('Hoenn');

INSERT INTO pokedex (name, type, evolution, region_id)
VALUES ('Bulbasaur', 'grass', 1, 1), ('Venusaur', 'grass', 2, 1), 
('Charmander', 'fire', 1, 1), ('Charizard', 'fire', 2, 1), 
('Squirtle', 'water', 1, 1), ('Blastoise', 'water', 2, 1),
('Chikorita', 'grass', 1, 2), ('Meganium', 'grass', 2, 2), 
('Cyndaquil', 'fire', 1, 2), ('Typhlosion', 'fire', 2, 2),
('Totodile', 'water', 1, 2), ('Feraligatr', 'water', 2, 2),
('Treecko', 'grass', 1, 3), ('Sceptile', 'grass', 2, 3), 
('Torchic', 'fire', 1, 3), ('Blaziken', 'fire', 2, 3),
('Mudkip', 'water', 1, 3), ('Swampert', 'water', 2, 3)

SELECT pokedex.id, pokedex.name, pokedex.type, regions.region_name
FROM pokedex LEFT JOIN regions ON pokedex.region_id = regions.id
WHERE region_id = 1;

SELECT pokedex.id, pokedex.name, pokedex.type, regions.region_name
FROM pokedex LEFT JOIN regions ON pokedex.region_id = regions.id
WHERE evolution = 1;
