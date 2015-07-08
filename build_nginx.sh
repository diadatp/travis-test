#!/usr/bin/env bash

cd nginx

./configure --prefix="../build" \
			--with-http_ssl_module \
			--with-pcre-jit \
			--with-file-aio \
			--with-ipv6 \
			--with-http_ssl_module \
			--with-http_spdy_module \
			--with-http_realip_module \
			--with-http_addition_module \
			--with-http_sub_module \
			--with-http_gunzip_module \
			--with-http_gzip_static_module \
			--with-http_random_index_module \
			--with-http_secure_link_module \
			--with-http_degradation_module \
			--with-http_stub_status_module \
			--with-mail \
			--with-mail_ssl_module \
			--with-pcre \
			--with-google_perftools_module \
			--with-debug
#			--with-http_geoip_module \
#			--with-http_xslt_module \
#			--with-http_perl_module \
#			--with-http_dav_module \
#			--with-http_flv_module \
#			--with-http_mp4_module \
#			--with-zlib=../zlib-1.1.3 \
#			--with-pcre=../pcre-4.4 \
#			--with-http_image_filter_module \
#			--sbin-path="bin/nginx" \
#			--conf-path=/usr/local/nginx/nginx.conf \
#			--pid-path=/usr/local/nginx/nginx.pid \
#			--error-log-path=path \
#			--http-log-path=path \
#			--user=www \
#			--group=www \

make && make install

cd ..
./build/sbin/nginx -V
