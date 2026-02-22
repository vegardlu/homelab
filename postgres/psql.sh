#!/usr/bin/env bash
# Script to connect to the PostgreSQL database in the homelab environment

# Container name as defined in homelab/postgres/compose.yaml
CONTAINER_NAME="postgres"

# Default credentials matching the compose file
DB_USER="lundedev"
DB_NAME="lundedev"

echo "================================================================"
echo "🐘 Connecting to PostgreSQL database '$DB_NAME' as '$DB_USER'..."
echo "Type '\\q' to exit, '\\d' to list tables, '\\dt' to list only data tables."
echo "================================================================"
echo ""

# Execute psql interactively inside the running container
docker exec -it "$CONTAINER_NAME" psql -U "$DB_USER" -d "$DB_NAME"
