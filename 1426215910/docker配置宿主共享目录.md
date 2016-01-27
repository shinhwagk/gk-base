#docker配置容器宿主共享目录

#docker提供-v参数来
```shell
shell# docker -it --privileged=true -v /abc:/acc:rw centos /bin/bash
```
/abc:为宿主目录
/abcc:为容器目录
rw:读写
ro:只读
不需要来手动创建两边的目录，docker会自动创建