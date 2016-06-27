#!/bin/bash

docker-compose stop nginx
docker-compose rm --all -f
docker-compose up -d
