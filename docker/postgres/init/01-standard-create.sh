#!/bin/bash
set -euo pipefail

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    ALTER DATABASE ${POSTGRES_DB} SET timezone TO 'UTC';
    CREATE EXTENSION IF NOT EXISTS citext;
EOSQL
