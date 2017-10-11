#!/bin/bash

sed -i 's/#wal_level = replica/wal_level = logical/g' /var/lib/postgresql/data/postgresql.conf