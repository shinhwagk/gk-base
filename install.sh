#!/bin/bash
yum install -y gcc pcre-devel zlib-devel libxml2-devel wget tar make git

#安装php
cd /tmp
wget http://cn2.php.net/distributions/php-5.6.17.tar.gz
tar zxf php-5.6.17.tar.gz
cd php-5.6.17
./configure --prefix=/usr/local/php --enable-fpm --with-config-file-path=/usr/local/php && make && make install
cp /usr/local/php/etc/php-fpm.conf.default /usr/local/php/etc/php-fpm.conf

#安装nginx
cd /tmp
wget http://nginx.org/download/nginx-1.8.1.tar.gz
tar zxf nginx-1.8.1.tar.gz
cd nginx-1.8.1
./configure && make && make install 

/usr/local/nginx/sbin/nginx
/usr/local/php/sbin/php-fpm
