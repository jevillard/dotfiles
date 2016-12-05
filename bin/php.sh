#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "PHP installation"
    tell sudo apt-get install -y python-software-properties
    tell sudo add-apt-repository ppa:ondrej/php
    tell sudo apt-get update
    tell sudo apt-get install -y php7.1 php7.1-cli php7.1-intl php7.1-curl php7.1-gd php7.1-mysql