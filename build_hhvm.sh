#!/usr/bin/env bash

cd hhvm

git submodule update --init --recursive
export CMAKE_PREFIX_PATH=$(pwd)/..

cmake -DENABLE_MCROUTER=false .
make

cd ..
