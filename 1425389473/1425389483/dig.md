```shell
[root@www ~]# dig [options] FQDN [@server]
ѡ���������
@server ��������� /etc/resolv.conf ���趨����Ϊ DNS ��ѯ�����ڴ����������� IP
options����صĲ����ܶ࣬��Ҫ�� +trace, -t type �Լ� -x �������
  +trace �����Ǵ� . ��ʼ׷�٣��� 19.1.2 ����̸���ˣ���ͷ����ȥ��
  -t type����ѯ��������Ҫ�� mx, ns, soa �����ͣ�������� 19.4 ������
  -x     ����ѯ������Ϣ���ǳ���Ҫ����Ŀ��
```

```shell
# 1. ʹ��Ĭ��ֵ��ѯ linux.vbird.org �ɣ�
[root@www ~]# dig linux.vbird.org
; <<>> DiG 9.7.0-P2-RedHat-9.7.0-5.P2.el6_0.1 <<>> linux.vbird.org
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 37415
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 2, ADDITIONAL: 0

;; QUESTION SECTION:     <==���������Ĳ���
;linux.vbird.org.               IN      A

;; ANSWER SECTION:       <==��Ҫ�Ļش�׶�
linux.vbird.org.        600     IN      A       140.116.44.180

;; AUTHORITY SECTION:    <==������˴λش��йصĲ���
vbird.org.              600     IN      NS      dns.vbird.org.
vbird.org.              600     IN      NS      dns2.vbird.org.

;; Query time: 9 msec
;; SERVER: 168.95.1.1#53(168.95.1.1)
;; WHEN: Thu Aug  4 14:12:26 2011
;; MSG SIZE  rcvd: 86
```
������������У����ǿ��Կ���������ʾ����ѶϢ�����м������֣�

QUESTION(����)����ʾ��Ҫ��ѯ�����ݣ���Ϊ�����ǲ�ѯ linux.vbird.org �� IP������������ʾ A (Address)��
ANSWER(�ش�)�����ݸոյ� QUESTION ȥ��ѯ���õ��Ľ�����𰸾��ǻش� IP ����
AUTHORITY(��֤)�����������ǿ���֪�� linux.vbird.org �����Ĳ� DNS ���������ṩ�Ĵ𰸣� ����� dns.vbird.org �� dns2.vbird.org ��������������ġ����⣬�Ǹ� 600 ��ɶ���ˣ�ͼ 19.1-4 �ᵽ�������̣����������ѯ���ܹ�������ʼ�¼��õ���˼ (��ȡ)���� linux.vbird.org ���趨�У�Ԥ����Ա��� 600 �롣