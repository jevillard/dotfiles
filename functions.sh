#!/bin/sh

tell() {
    echo "\033[0;33m|-- ${*}\033[0m"
    $* || {
        echo "\033[0;31mFail !" 1>&2 ;
        exit 1 ;
    }
}

explain() {
    echo "\033[0;34m${1}\033[0m"
}

success() {
    echo "\033[0;32m${1}\033[0m"
}