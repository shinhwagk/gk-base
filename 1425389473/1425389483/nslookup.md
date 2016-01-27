```shell
[root@www ~]# nslookup [FQDN] [server]
[root@www ~]# nslookup
选项与参数：
1. 可以直接在 nslookup 加上待查询的主机名或者是 IP ，[server] 可有可无；
2. 如果在 nslookup 后面没有加上任何主机名或 IP ，那将进入 nslookup 的查询功能
   在 nslookup 的查询功能当中，可以输入其他参数来进行特殊查询，例如：
   set type=any ：列出所有的信息『正解方面配置文件』
   set type=mx  ：列出与 mx 相关的信息！

# 1. 直接搜寻 mail.ksu.edu.tw 的 IP 信息 
[root@www ~]# nslookup mail.ksu.edu.tw
```

```shell
[root@www ~]# nslookup  <==进入 nslookup 查询画面
> 120.114.100.20         <==执行反解的查询
> www.ksu.edu.tw         <==执行正解的查询
# 上面这两个仅列出正反解的信息，没有啥了不起的地方啦！
> set type=any           <==变更查询，不是仅有 A，全部信息都列出来
> www.ksu.edu.tw
Server:         168.95.1.1
Address:        168.95.1.1#53

Non-authoritative answer:
Name:   www.ksu.edu.tw
Address: 120.114.100.101  <==这是答案

Authoritative answers can be found from: <==这是相关授权 DNS 说明
ksu.edu.tw      nameserver = dns2.ksu.edu.tw.
ksu.edu.tw      nameserver = dns1.ksu.edu.tw.
dns1.ksu.edu.tw internet address = 120.114.50.1
dns2.ksu.edu.tw internet address = 120.114.150.1
> exit <==离开吧！皮卡丘
```