FROM jenkinsci/jenkins:2.6
MAINTAINER Benoit Verreault <blackknight65@hotmail.com>

USER root
ENV DOCKER_VERSION=1.11.1

RUN apt-get update && \
    apt-get install -y rsync sudo && \
    echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    curl -L https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz > /tmp/docker-${DOCKER_VERSION}.tgz && \
    tar -xvzf /tmp/docker-${DOCKER_VERSION}.tgz && \
    mv docker/docker* /usr/bin/ && \
    rm -rf /tmp/docker-${DOCKER_VERSION}.tgz && \
    rm -rf docker/

VOLUME /var/run/docker.sock

USER jenkins
