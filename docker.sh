#!/bin/bash

# Check if the containers are running
postgres_running=$(docker ps -q -f name=express_postgres)
redis_running=$(docker ps -q -f name=express_redis)

# Function to restart Docker Compose services
restart_containers() {
  echo "Restarting all services..."
  docker compose down
  docker compose up -d
}

# Check the status of the containers
if [ -z "$postgres_running" ] || [ -z "$redis_running" ]; then
  echo "One or more containers are not running."
  restart_containers
else
  echo "All containers are running."
fi
