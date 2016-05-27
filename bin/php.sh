#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "PHP installation"
    tell sudo apt-get install -y python-software-properties
    tell sudo add-apt-repository ppa:ondrej/php
    tell sudo apt-get update
    tell sudo apt-get install -y php7.0 php7.0-cli php7.0-intl php7.0-curl php7.0-gd php7.0-mysql