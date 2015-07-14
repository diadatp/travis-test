#!/usr/bin/env bash

wget http://caml.inria.fr/pub/distrib/ocaml-4.02/ocaml-4.02.1.tar.gz
tar -xf ocaml-4.02.1.tar.gz
cd ocaml-4.02.1
./configure
make world.opt && sudo make install
cd ..

git clone git://github.com/bagder/curl.git --depth 1
cd curl
./buildconf
./configure
make && sudo make install
cd ..

svn checkout http://google-glog.googlecode.com/svn/trunk/ google-glog
cd google-glog
./configure
make && sudo make install
cd ..

wget http://www.canonware.com/download/jemalloc/jemalloc-3.6.0.tar.bz2
tar -jxf jemalloc-3.6.0.tar.bz2
cd jemalloc-3.6.0
./configure
make && sudo make install
cd ..
