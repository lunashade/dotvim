#!/bin/bash

there="$(dirname $0)"

function deploy {
	ln -sfvn "$(realpath $(pwd))" "${HOME}/.vim"
}

function main {
    cd ${there}
    cd ..
    deploy
}

main
