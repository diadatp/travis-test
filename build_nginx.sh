#!/usr/bin/env bash


cd nginx

./configure --prefix="../build" \
			--sbin-path="bin/nginx"\
			# --conf-path=/usr/local/nginx/nginx.conf\
			# --pid-path=/usr/local/nginx/nginx.pid\
			# --error-log-path=path\
			# --http-log-path=path\
			# --user=www\
			# --group=www\
			--with-http_ssl_module\
			# --with-pcre=../pcre-4.4\
			--with-pcre-jit
			# --with-zlib=../zlib-1.1.3\

make
make install
