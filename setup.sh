#!/bin/env -S bash -v
DOTVIM=$(dirname $BASH_SOURCE)
cd $DOTVIM
git submodule update --init --recursive
cd pack/submodules/start/vim-dcrpc && make
