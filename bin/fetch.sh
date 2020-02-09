#!/bin/bash

function main {
    path=${1:-$HOME}
    git clone http://github.com/lunashade/dotvim $path/dotvim
}

main $@
