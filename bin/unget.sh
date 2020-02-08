#!/bin/bash

function main {
    d=$1
    git submodule deinit pack/default/start/$d
    git rm pack/default/start/$d
    git commit -m "[auto] Remove package: $d"
}

main $@
