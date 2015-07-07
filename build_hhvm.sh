#!/usr/bin/env bash

mkdir hhvm
cd hhvm

wget http://dl.hhvm.com/ubuntu/pool/main/h/hhvm/hhvm_$HHVM_VER~trusty_amd64.deb
ar vx hhvm_$HHVM_VER~trusty_amd64.deb
rm hhvm_$HHVM_VER~trusty_amd64.deb
tar -xzvf data.tar.gz --directory ../build
