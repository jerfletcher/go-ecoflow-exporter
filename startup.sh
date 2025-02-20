#!/bin/bash

# Source the .env.local file
if [ -f docker-compose/.env.local ]; then
  set -a
  source docker-compose/.env.local
  set +a
fi

# Run the full-service-compose.yml with build
docker-compose -f docker-compose/full-service-compose.yml up --build
