#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "cUrl installation"
    tell sudo apt-get install -y curl

explain "Git installation"
    tell sudo apt-get install -y git
    if [ -f "$HOME/.gitconfig" ];then
        tell rm ~/.gitconfig
    fi
    if [ -f "$HOME/.gitignore" ];then
        tell rm ~/.gitignore
    fi
    tell cp $BASEDIR/../git/gitconfig $HOME/.gitconfig
    tell cp $BASEDIR/../git/gitignore $HOME/.gitignore

explain "Htop installation"
    tell sudo apt-get install -y htop

explain "Ncdu installation"
    tell sudo apt-get install -y ncdu