#!/usr/bin/env bash

cd php-fpm

./buildconf
./configure --prefix="$(pwd)/build'" \
			--enable-fpm \
			--with-mysql

make
make install

cd ..
./build/bin/php -i