#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "NodeJS 6x installation"
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
    tell sudo apt-get install -y nodejs

explain "Global Gulp installation"
    tell sudo npm install -g gulp

explain "Global Bower installation"
    tell sudo npm install -g bower