#!/bin/bash
export POSTGRES_USER="postgres"
export POSTGRES_PASSWORD="postgres"
export POSTGRES_DB="postgres"
export POSTGRES_PORT="5433"
export PGADMIN_DEFAULT_EMAIL="pgadmin@local.de"
export PGADMIN_DEFAULT_PASSWORD="pgadmin"
export PGADMIN_CONFIG_FILE="./pgadminconfig/servers.json"

echo "
{
    \"Servers\": {
        \"1\": {
            \"Name\": \"Default\",
            \"Group\": \"Servers\",
            \"Port\": \"5432\",
            \"Username\": \"${POSTGRES_USER}\",
            \"Host\": \"postgresdb\",
            \"SSLMode\": \"prefer\",
            \"MaintenanceDB\": \"${POSTGRES_DB}\"
        }
    }
}
" > $PGADMIN_CONFIG_FILE

docker-compose up
