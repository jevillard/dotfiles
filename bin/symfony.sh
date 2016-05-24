#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "Composer installation"
    tell sudo curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
    tell sudo chmod a+x /usr/local/bin/symfony