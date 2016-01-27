```shell
[root@www ~]# dig [options] FQDN [@server]
选项与参数：
@server ：如果不以 /etc/resolv.conf 的设定来作为 DNS 查询，可在此填入其他的 IP
options：相关的参数很多，主要有 +trace, -t type 以及 -x 三者最常用
  +trace ：就是从 . 开始追踪，在 19.1.2 里面谈过了！回头瞧瞧去！
  -t type：查询的数据主要有 mx, ns, soa 等类型，相关类型 19.4 来介绍
  -x     ：查询反解信息，非常重要的项目！
```

```shell
# 1. 使用默认值查询 linux.vbird.org 吧！
[root@www ~]# dig linux.vbird.org
; <<>> DiG 9.7.0-P2-RedHat-9.7.0-5.P2.el6_0.1 <<>> linux.vbird.org
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 37415
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 2, ADDITIONAL: 0

;; QUESTION SECTION:     <==提出的问题的部分
;linux.vbird.org.               IN      A

;; ANSWER SECTION:       <==主要的回答阶段
linux.vbird.org.        600     IN      A       140.116.44.180

;; AUTHORITY SECTION:    <==其他与此次回答有关的部分
vbird.org.              600     IN      NS      dns.vbird.org.
vbird.org.              600     IN      NS      dns2.vbird.org.

;; Query time: 9 msec
;; SERVER: 168.95.1.1#53(168.95.1.1)
;; WHEN: Thu Aug  4 14:12:26 2011
;; MSG SIZE  rcvd: 86
```
在这个范例当中，我们可以看到整个显示出的讯息包括有几个部分：

QUESTION(问题)：显示所要查询的内容，因为我们是查询 linux.vbird.org 的 IP，所以这里显示 A (Address)；
ANSWER(回答)：依据刚刚的 QUESTION 去查询所得到的结果，答案就是回答 IP 啊！
AUTHORITY(验证)：由这里我们可以知道 linux.vbird.org 是由哪部 DNS 服务器所提供的答案！ 结果是 dns.vbird.org 及 dns2.vbird.org 这两部主机管理的。另外，那个 600 是啥咚咚？图 19.1-4 提到过的流程，就是允许查询者能够保留这笔记录多久的意思 (快取)，在 linux.vbird.org 的设定中，预设可以保留 600 秒。