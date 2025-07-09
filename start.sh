#!/bin/bash

# create network
docker network create data_engineering && echo "Network created"

# Start Airflow
docker compose -f ./docker/airflow/docker-compose.yml up -d && echo "Airflow started"

# Start postgres
docker compose -f ./docker/postgres/docker-compose.yml up -d && echo "Postgres started"

# Start superset
docker compose -f ./docker/superset/docker-compose.yml up -d && echo "Superset started"
