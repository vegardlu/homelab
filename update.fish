#!/usr/bin/env fish

# Pull latest images
echo "Pulling latest images..."
docker compose pull $argv

# Recreate containers
echo "Updating containers..."
docker compose up -d $argv

echo "Done!"
