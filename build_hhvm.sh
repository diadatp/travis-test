#!/usr/bin/env bash

cd hhvm

wget http://dl.hhvm.com/ubuntu/pool/main/h/hhvm/hhvm_$HHVM_VER~trusty_amd64.deb
ar vx hhvm_$HHVM_VER~trusty_amd64.deb
# rm hhvm_$HHVM_VER~trusty_amd64.deb debian-binary control.tar.gz _gpgbuilder
tar -xvf data.tar.gz --directory ../build
