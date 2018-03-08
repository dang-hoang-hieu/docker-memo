#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER project WITH PASSWORD 'project123';
    CREATE DATABASE db_test1;
    CREATE DATABASE db_test2;
    GRANT ALL PRIVILEGES ON DATABASE db_test1, db_test2 TO project;
EOSQL