#!/bin/bash
rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
yum install -y gcc pcre-devel zlib-devel libxml2-devel wget tar make git php php-fpm nginx

#配置nginx
echo 'worker_processes  1;' > /etc/nginx/nginx.conf
echo 'events {' >> /etc/nginx/nginx.conf
echo '    worker_connections  1024;' >> /etc/nginx/nginx.conf
echo '}' >> /etc/nginx/nginx.conf
echo 'http {' >> /etc/nginx/nginx.conf
echo '    include       mime.types;' >> /etc/nginx/nginx.conf
echo '    default_type  application/octet-stream;' >> /etc/nginx/nginx.conf
echo '    sendfile        on;' >> /etc/nginx/nginx.conf
echo '    keepalive_timeout  65;' >> /etc/nginx/nginx.conf
echo '    server {' >> /etc/nginx/nginx.conf
echo '        listen       80;' >> /etc/nginx/nginx.conf
echo '        server_name  localhost;' >> /etc/nginx/nginx.conf
echo '        location / {' >> /etc/nginx/nginx.conf
echo '            root   html;' >> /etc/nginx/nginx.conf
echo '            index  index.html index.htm;' >> /etc/nginx/nginx.conf
echo '        }' >> /etc/nginx/nginx.conf
echo '        error_page   500 502 503 504  /50x.html;' >> /etc/nginx/nginx.conf
echo '        location = /50x.html {' >> /etc/nginx/nginx.conf
echo '            root   html;' >> /etc/nginx/nginx.conf
echo '        }' >> /etc/nginx/nginx.conf
echo '        location ~ \.php$ {' >> /etc/nginx/nginx.conf
echo '            root           html/document/php;' >> /etc/nginx/nginx.conf
echo '            fastcgi_pass   127.0.0.1:9000;' >> /etc/nginx/nginx.conf
echo '            fastcgi_index  index.php;' >> /etc/nginx/nginx.conf
echo '            fastcgi_param  SCRIPT_FILENAME  /document$fastcgi_script_name;' >> /etc/nginx/nginx.conf
echo '            include        fastcgi_params;' >> /etc/nginx/nginx.conf
echo '        }' >> /etc/nginx/nginx.conf
echo '    }' >> /etc/nginx/nginx.conf
echo '}' >> /etc/nginx/nginx.conf
echo '' >> /etc/nginx/nginx.conf

nginx
php-fpm &
