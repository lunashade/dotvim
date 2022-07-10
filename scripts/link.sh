#!/bin/bash
# link this directory to $HOME/.vim
ROOT=$(dirname $0)/..

VIMDIR=$HOME/.vim
if [[ -d "$VIMDIR" ]]; then
    if [[ "$(cd $VIMDIR; git status --short | wc -l)" != "0" ]]; then
        echo "existing dotvim seems dirty. make sure commit/push before or remove by hand."
        exit 1
    else
        rm -rf $VIMDIR
    fi
fi
ln -sfvn $(realpath $ROOT) ~/.vim
