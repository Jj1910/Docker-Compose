#!/bin/bash
docker run --rm --volumes-from Traefik -v $(pwd):/backup busybox sh -c "cd /ssl-certs && tar xvf /backup/backup-ssl-certs.tar --strip 1"
docker run --rm --volumes-from FreshRSS -v $(pwd):/backup busybox sh -c "cd /var/www/FreshRSS/data && tar xvf /backup/backup-freshrss.tar --strip 1"
docker run --rm --volumes-from Wordpress -v $(pwd):/backup busybox sh -c "cd /var/www/html && tar xvf /backup/backup-wordpress-data.tar --strip 1"
docker run --rm --volumes-from Database -v $(pwd):/backup busybox sh -c "cd /var/lib/mysql && tar xvf /backup/backup-wordpress-database.tar --strip 1"
docker run --rm --volumes-from Heimdall -v $(pwd):/backup busybox sh -c "cd /config && tar xvf /backup/backup-heimdall.tar --strip 1"
docker run --rm --volumes-from Portainer -v $(pwd):/backup busybox sh -c "cd /data && tar xvf /backup/backup-portainer.tar --strip 1"
