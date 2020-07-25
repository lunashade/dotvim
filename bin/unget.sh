#!/bin/bash

function main {
    d="$1"
    if [[ "$d" == "" ]]; then
        exit 1
    fi
    git submodule deinit pack/default/start/$d
    git rm pack/default/start/$d
    git commit -m "[auto] Remove package: $d"
}

main $@
