
CREATE DATABASE beers_db;

CREATE TABLE beers (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100),
    price NUMERIC (12, 2)
);

CREATE PUBLICATION pub_beers FOR TABLE beers;


