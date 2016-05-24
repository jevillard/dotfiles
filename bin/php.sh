#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "PHP installation"
    tell sudo apt-get install -y php5 php5-cli php5-intl php5-curl