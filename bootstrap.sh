#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/functions.sh

explain "Backup old configuration"
    if [ -d "$BASEDIR/_backup" ];then
        tell rm -rf $BASEDIR/_backup
    fi
    tell mkdir $BASEDIR/_backup
    if [ -f "$HOME/.gitconfig" ];then
        tell cp $HOME/.gitconfig $BASEDIR/_backup/.gitconfig
    fi
    if [ -f "$HOME/.gitignore" ];then
        tell cp $HOME/.gitignore $BASEDIR/_backup/.gitignore
    fi
    if [ -f "$HOME/.vimrc" ];then
        tell cp $HOME/.vimrc $BASEDIR/_backup/.vimrc
    fi
    if [ -f "$HOME/.zshrc" ];then
        tell cp $HOME/.zshrc $BASEDIR/_backup/.zshrc
    fi

explain "Update +  upgrade + clean system"
    tell sudo apt-get update && sudo apt-get -y -d dist-upgrade && sudo apt-get -y autoclean && sudo apt-get -y autoremove

explain "Change permission of files"
    tell chmod +x $BASEDIR/bin/*

explain "Tools applications"
    tell ./$BASEDIR/bin/tools.sh
    tell ./$BASEDIR/bin/nodejs.sh
    tell ./$BASEDIR/bin/docker.sh

explain "Terminal applications"
    tell ./$BASEDIR/bin/vim.sh
    tell ./$BASEDIR/bin/zsh.sh

explain "Development applications"
    tell ./$BASEDIR/bin/php.sh
    tell ./$BASEDIR/bin/mysql.sh
    tell ./$BASEDIR/bin/composer.sh
    tell ./$BASEDIR/bin/symfony.sh

explain "Music applications"
    tell ./$BASEDIR/bin/spotify.sh
