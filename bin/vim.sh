#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "Vim installation"
    tell sudo apt-get install -y vim
    if [ -f "$HOME/.vimrc" ];then
        tell rm ~/.vimrc
    fi
    tell cp $BASEDIR/../terminal/vimrc $HOME/.vimrc