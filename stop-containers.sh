#!/bin/bash
docker compose -f Traefik/docker-compose.yml down
docker compose -f Heimdall/docker-compose.yml down
docker compose -f Nginx/docker-compose.yml down
docker compose -f RSS-Server/docker-compose.yml down
docker compose -f Wordpress/docker-compose.yml down
#docker compose -f Portainer/docker-compose.yml down
