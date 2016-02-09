##浏览器:chrome

###Init
```shell
yum install -y git httpd vim
rm /var/www
cd /var
git clone -b read https://github.com/shinhwagk/gk-base www
cd /var/www
git clone -b data https://github.com/shinhwagk/gk-base data
httpd
```
###write
```shell
chown apache:apache -R /var/www/data 
```

###read
```shell
None
```
