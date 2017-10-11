
CREATE DATABASE beers_db;

CREATE TABLE beers (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100),
    price NUMERIC (12, 2)
);

CREATE SUBSCRIPTION sub_beers
CONNECTION 'host=master port=5432 dbname=beers_db' 
PUBLICATION pub_beers;