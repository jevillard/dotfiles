#!/bin/sh

BASEDIR=$(dirname $0)
. $BASEDIR/../functions.sh

explain "Zsh installation"
    tell sudo apt-get install -y zsh
    tell chsh -s /bin/zsh

explain "OhMyZsh installation"
    if [ -d "$HOME/.oh-my-zsh/" ];then
        tell rm -rf $HOME/.oh-my-zsh
    fi
    tell git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

explain "Zsh configuration"
    if [ -f "$HOME/.zshrc" ];then
        tell rm $HOME/.zshrc
    fi
    tell cp $BASEDIR/../terminal/zshrc $HOME/.zshrc