##浏览器:chrome

##Init
```shell
yum install -y git httpd vim
rm -fr /var/www
cd /var
git clone --depth=1 -b read https://github.com/shinhwagk/gk-base www
cd /var/www
git clone --depth=1 -b data https://github.com/shinhwagk/gk-base data
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
