```shell
[root@www ~]# nslookup [FQDN] [server]
[root@www ~]# nslookup
ѡ���������
1. ����ֱ���� nslookup ���ϴ���ѯ�������������� IP ��[server] ���п��ޣ�
2. ����� nslookup ����û�м����κ��������� IP ���ǽ����� nslookup �Ĳ�ѯ����
   �� nslookup �Ĳ�ѯ���ܵ��У����������������������������ѯ�����磺
   set type=any ���г����е���Ϣ�����ⷽ�������ļ���
   set type=mx  ���г��� mx ��ص���Ϣ��

# 1. ֱ����Ѱ mail.ksu.edu.tw �� IP ��Ϣ 
[root@www ~]# nslookup mail.ksu.edu.tw
```

```shell
[root@www ~]# nslookup  <==���� nslookup ��ѯ����
> 120.114.100.20         <==ִ�з���Ĳ�ѯ
> www.ksu.edu.tw         <==ִ������Ĳ�ѯ
# �������������г����������Ϣ��û��ɶ�˲���ĵط�����
> set type=any           <==�����ѯ�����ǽ��� A��ȫ����Ϣ���г���
> www.ksu.edu.tw
Server:         168.95.1.1
Address:        168.95.1.1#53

Non-authoritative answer:
Name:   www.ksu.edu.tw
Address: 120.114.100.101  <==���Ǵ�

Authoritative answers can be found from: <==���������Ȩ DNS ˵��
ksu.edu.tw      nameserver = dns2.ksu.edu.tw.
ksu.edu.tw      nameserver = dns1.ksu.edu.tw.
dns1.ksu.edu.tw internet address = 120.114.50.1
dns2.ksu.edu.tw internet address = 120.114.150.1
> exit <==�뿪�ɣ�Ƥ����
```