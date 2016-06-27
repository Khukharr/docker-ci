#!/bin/bash

docker-compose stop
docker-compose rm -af
docker-compose up -d

GID=$(cut -d: -f3 < <(getent group docker))

docker exec -it jenkins_jenkins_1 sudo groupadd -g ${GID} docker
docker exec -it jenkins_jenkins_1 sudo chown jenkins:root /var/run/docker.sock
docker exec -it jenkins_jenkins_1 sudo gpasswd -a jenkins docker
