#!/bin/sh
docker-compose start
docker exec lamp1 sh -c 'exec service mariadb restart'
docker exec lamp1 sh -c 'exec service apache2 restart'
