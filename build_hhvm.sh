#!/usr/bin/env bash

cd hhvm

# how many virtual processors are there?
export NUMCPUS=$(grep ^processor /proc/cpuinfo | wc -l)

git submodule update --init --recursive
cmake .
ionice -c3 nice -n 19 make -j$NUMCPUS --load-average=$NUMCPUS

# wget http://dl.hhvm.com/ubuntu/pool/main/h/hhvm/hhvm_$HHVM_VER~trusty_amd64.deb
# ar vx hhvm_$HHVM_VER~trusty_amd64.deb
# tar -xvf data.tar.xz --directory ../build
