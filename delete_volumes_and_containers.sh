#!/bin/sh
docker ps -aq | xargs docker stop | xargs docker rm
docker volume ls -q | xargs docker volume rm
docker ps -a
docker volume ls -q
