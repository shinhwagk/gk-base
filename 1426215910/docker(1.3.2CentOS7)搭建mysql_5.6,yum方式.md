#docker(1.3.2/CentOS7)�mysql_5.6,yum��ʽ
####1. ��һ��images(CentOS7)
```shell
shell# docker run -i -t centos /bin/bash
```
####2. ��װmysql yum�ֿ�
```shell
shell# rpm -ivh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
```

####3. ��װmysql-server
```shell
shell# yum install mysql-server
```

####4. ��ʼ��mysql���ݿ�
```shell
shell# /usr/bin/mysql_install_db
```

####5. �������ݿ�
```shell
shell# /usr/bin/mysqld_safe --user=root &
```
####6. ����DB
```shell
shell# mysql
```
