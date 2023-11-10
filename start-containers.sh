#!/bin/bash
docker compose -f Traefik/docker-compose.yml up -d
docker compose -f Nginx/docker-compose.yml up -d
docker compose -f RSS-Server/docker-compose.yml up -d
docker compose -f Heimdall/docker-compose.yml up -d
docker compose -f Wordpress/docker-compose.yml up -d
