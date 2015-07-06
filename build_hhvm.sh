#!/usr/bin/env bash

cd hhvm

git submodule update --init --recursive

cmake -DENABLE_MCROUTER=false .
make

cd ..
