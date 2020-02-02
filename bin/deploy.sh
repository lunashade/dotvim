#!/bin/bash

there="$(dirname $0)"

function deploy {
    ln -sfvn "${PWD}" "${HOME}/.vim"
}

function main {
    cd ${there}
    cd ..
    deploy
}

main
