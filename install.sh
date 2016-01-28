#!/bin/bash
yum install -y gcc pcre-devel zlib-devel libxml2-devel wget tar make git php php-fpm

#安装nginx
cd /tmp
wget http://nginx.org/download/nginx-1.8.1.tar.gz
tar zxf nginx-1.8.1.tar.gz
cd nginx-1.8.1
./configure && make && make install 

#配置nginx
echo 'worker_processes  1;' > /usr/local/nginx/conf/nginx.conf
echo 'events {' >> /usr/local/nginx/conf/nginx.conf
echo '    worker_connections  1024;' >> /usr/local/nginx/conf/nginx.conf
echo '}' >> /usr/local/nginx/conf/nginx.conf
echo 'http {' >> /usr/local/nginx/conf/nginx.conf
echo '    include       mime.types;' >> /usr/local/nginx/conf/nginx.conf
echo '    default_type  application/octet-stream;' >> /usr/local/nginx/conf/nginx.conf
echo '    sendfile        on;' >> /usr/local/nginx/conf/nginx.conf
echo '    keepalive_timeout  65;' >> /usr/local/nginx/conf/nginx.conf
echo '    server {' >> /usr/local/nginx/conf/nginx.conf
echo '        listen       80;' >> /usr/local/nginx/conf/nginx.conf
echo '        server_name  localhost;' >> /usr/local/nginx/conf/nginx.conf
echo '        location / {' >> /usr/local/nginx/conf/nginx.conf
echo '            root   html;' >> /usr/local/nginx/conf/nginx.conf
echo '            index  index.html index.htm;' >> /usr/local/nginx/conf/nginx.conf
echo '        }' >> /usr/local/nginx/conf/nginx.conf
echo '        error_page   500 502 503 504  /50x.html;' >> /usr/local/nginx/conf/nginx.conf
echo '        location = /50x.html {' >> /usr/local/nginx/conf/nginx.conf
echo '            root   html;' >> /usr/local/nginx/conf/nginx.conf
echo '        }' >> /usr/local/nginx/conf/nginx.conf
echo '        location ~ \.php$ {' >> /usr/local/nginx/conf/nginx.conf
echo '            root           html/document/php;' >> /usr/local/nginx/conf/nginx.conf
echo '            fastcgi_pass   127.0.0.1:9000;' >> /usr/local/nginx/conf/nginx.conf
echo '            fastcgi_index  index.php;' >> /usr/local/nginx/conf/nginx.conf
echo '            fastcgi_param  SCRIPT_FILENAME  /document$fastcgi_script_name;' >> /usr/local/nginx/conf/nginx.conf
echo '            include        fastcgi_params;' >> /usr/local/nginx/conf/nginx.conf
echo '        }' >> /usr/local/nginx/conf/nginx.conf
echo '    }' >> /usr/local/nginx/conf/nginx.conf
echo '}' >> /usr/local/nginx/conf/nginx.conf
echo '' >> /usr/local/nginx/conf/nginx.conf

/usr/local/nginx/sbin/nginx
/usr/local/php/sbin/php-fpm
