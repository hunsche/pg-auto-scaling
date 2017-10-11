#!/bin/bash

sed -i 's/#wal_level = replica/wal_level = logical/g' /var/lib/postgresql/data/postgresql.conf
createdb beers_db
psql beers_db -c "
    CREATE TABLE beers (
        id SERIAL PRIMARY KEY,
        name VARCHAR (100),
        price NUMERIC (12, 2)
    );

    CREATE PUBLICATION pub_beers FOR TABLE beers;
"