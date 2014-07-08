#!/bin/bash

git submodule foreach git pull origin master

cd bundle/YouCompleteMe/
git submodule update --init --recursive
./install.sh --clang-completer --system-libclang
