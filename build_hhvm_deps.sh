#!/usr/bin/env bash

export CMAKE_PREFIX_PATH=$(pwd)/build

wget http://caml.inria.fr/pub/distrib/ocaml-4.02/ocaml-4.02.1.tar.gz
tar xvf ocaml-4.02.1.tar.gz
cd ocaml-4.02.1
# ./configure --prefix=$CMAKE_PREFIX_PATH
./configure
make world.opt
sudo make install
cd ..

git clone git://github.com/bagder/curl.git --depth 1
cd curl
./buildconf
# ./configure --prefix=$CMAKE_PREFIX_PATH
./configure
make
sudo make install
cd ..

svn checkout http://google-glog.googlecode.com/svn/trunk/ google-glog
cd google-glog
# ./configure --prefix=$CMAKE_PREFIX_PATH
./configure
make
sudo make install
cd ..

wget http://www.canonware.com/download/jemalloc/jemalloc-3.6.0.tar.bz2
tar xjvf jemalloc-3.6.0.tar.bz2
cd jemalloc-3.6.0
# ./configure --prefix=$CMAKE_PREFIX_PATH
./configure
make && sudo make install
cd ..
