DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS diets;

CREATE TABLE diets(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type VARCHAR(25), NOT NULL UNIQUE,

);

INSERT INTO diets(animal_name, diet_type){
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type VARCHAR(25) NOT NULL UNIQUE
};

INSERT INTO diets(animal_name, diet_type)
VALUES
('Herbivore'),
('Omnivore'),
('Carnivore'),
('Piscivore');


CREATE TABLE animals(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(150) NOT NULL, --add NOTNULL this so it doesn't take null values
    genus VARCHAR(75) NOT NULL,
    biome VARCHAR(200),
    avg_weight FLOAT(6, 2) NOT NULL,
    is_vertebrate BOOLEAN NOT NULL,
    is_cute BOOLEAN DEFAULT true,
    diet_id INTEGER REFERENCES diets(id)
    --FOREIGN KEY (diet_it) REFERENCES diet(id)
);

INSERT INTO animals (name, genus, biome, avg_weight, is_vertebrate, diet_id, is_cute)
VALUES
('Red Panda', 'Ailurus', 'Temporate Forest', 7.4, true, 1, true),
('Raven', 'Corvid', 'Urban', 2.5, TRUE, 2, TRUE),
('Tiger', 'Panthera', 'Savanna', 400, true, 3, true),
('Llama', 'lama', 'upland mountain plateaus', 440, true, 1 , true),
('Rusty-spotted Cat', 'Prionailurus', 'Wooded Grassland', 3, true, 2, true) ,
('Blob Fish', 'Spineless sculpins', 'mesopelagic ocean zone', 20, false, 2, false),
('Lowland Streaked Tenrec', 'Hemicentetes', 'tropical lowland rain forests', 4.4, TRUE, 2, TRUE),
('Western Lowland Gorilla', 'Gorilla', 'Rainforest', 310, true, 1, true),
('Pallas''s cat', 'Otocolobus', 'Desert Shrublands', 7.7, true, 3, true),
('Shoebill Stork', 'Balaeniceps', 'Swamp', 12, true, 4, false),
('Orangutan', 'Pongo', 'Rain Forest', 120, true, 2, false),
('Sloth', 'Bradypus', 'Tropical Rain Forests', 14,  TRUE, 2, TRUE),
('Milk Snake', 'Lampropeltis', 'Forests', .5, true, 2, false);


CREATE TABLE biomes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    example_location, VARCHAR(150)
);
