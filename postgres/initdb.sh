    #!/bin/bash
    set -e
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
     CREATE USER mov WITH PASSWORD 'qwerty';
     CREATE DATABASE mov_db;
     GRANT ALL PRIVILEGES ON DATABASE mov_db TO mov;
    EOSQL