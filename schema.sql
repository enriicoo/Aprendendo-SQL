CREATE DATABASE recordings;
USE recordings;

CREATE TABLE regions (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pokedex (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  type VARCHAR(10),
  region INT,
  PRIMARY KEY (id),
  FOREIGN KEY (region) REFERENCES regions(id)
);
