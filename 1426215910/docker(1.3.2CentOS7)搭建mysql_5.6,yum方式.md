#docker(1.3.2/CentOS7)搭建mysql_5.6,yum方式
####1. 打开一个images(CentOS7)
```shell
shell# docker run -i -t centos /bin/bash
```
####2. 安装mysql yum仓库
```shell
shell# rpm -ivh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
```

####3. 安装mysql-server
```shell
shell# yum install mysql-server
```

####4. 初始化mysql数据库
```shell
shell# /usr/bin/mysql_install_db
```

####5. 启动数据库
```shell
shell# /usr/bin/mysqld_safe --user=root &
```
####6. 进入DB
```shell
shell# mysql
```
