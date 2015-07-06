#!/usr/bin/env bash

cd php-fpm

./buildconf --force
./configure --prefix="$(pwd)/../build" \
			--enable-fpm \
			--with-mysql

make -j$(cat /proc/cpuinfo | grep "cpu cores" | cut -f3 -d' ' | head -n 1) && make test && make install

cd ..
./build/bin/php -i
