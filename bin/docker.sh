#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "Docker installation"
    sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
    sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
    sudo apt-get update
    apt-cache policy docker-engine
    sudo apt-get install docker-engine
    sudo service docker start
    sudo usermod -a -G docker $USER
    newgrp docker

explain "Docker compose installation"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose