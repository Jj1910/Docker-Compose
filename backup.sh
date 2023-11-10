#!/bin/bash
docker run --rm --volumes-from Traefik -v $(pwd):/backup busybox tar cvfz /backup/backup-ssl-certs.tar /ssl-certs
docker run --rm --volumes-from FreshRSS -v $(pwd):/backup busybox tar cvfz /backup/backup-freshrss.tar /var/www/FreshRSS/data
docker run --rm --volumes-from Wordpress -v $(pwd):/backup busybox tar cvfz /backup/backup-wordpress-data.tar /var/www/html
docker run --rm --volumes-from Database -v $(pwd):/backup busybox tar cvfz /backup/backup-wordpress-database.tar /var/lib/mysql
docker run --rm --volumes-from Heimdall -v $(pwd):/backup busybox tar cvfz /backup/backup-heimdall.tar /config
