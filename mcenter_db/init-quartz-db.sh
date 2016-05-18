#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER docker;
    CREATE DATABASE piserver;
    GRANT ALL PRIVILEGES ON DATABASE piserver  TO docker;
    CREATE DATABASE quartz;
    GRANT ALL PRIVILEGES ON DATABASE quartz  TO docker;
EOSQL
