##浏览器:chrome

###read
```shell
yum install -y git httpd vim
rm /var/www
cd /var
git clone -b read https://github.com/shinhwagk/gk-base www
cd /var/www
git clone -b read https://github.com/shinhwagk/gk-base data
httpd
```
