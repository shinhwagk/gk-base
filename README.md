# gk-base

##chrome

###read
```shell
yum install -y git httpd
cd /tmp
git clone -b read https://github.com/shinhwagk/gk-base
cd gk-base
cp -r /tmp/gk-base/cgi-bin/ /var/www/
cp -r /tmp/gk-base/html/ /var/www/
git checkout data
mkdir /var/www/data/
cp -r /tmp/gk-base/* /var/www/data/
```
