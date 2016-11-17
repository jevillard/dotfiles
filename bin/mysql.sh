#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "Mysql installation"
  tell sudo apt-get install mysql-server-5.6