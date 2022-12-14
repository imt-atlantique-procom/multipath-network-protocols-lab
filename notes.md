### VM1 CONSOLE LOGS

```sh
$ ip a
```

```sh
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 02:07:82:9b:ea:86 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 metric 100 brd 10.0.2.255 scope global dynamic enp0s3
       valid_lft 81062sec preferred_lft 81062sec
    inet6 fe80::7:82ff:fe9b:ea86/64 scope link 
       valid_lft forever preferred_lft forever
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:a0:d7:1f brd ff:ff:ff:ff:ff:ff
    inet 10.0.10.10/24 brd 10.0.10.255 scope global enp0s8
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fea0:d71f/64 scope link 
       valid_lft forever preferred_lft forever
4: enp0s9: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:9e:58:e8 brd ff:ff:ff:ff:ff:ff
    inet 10.0.20.10/24 brd 10.0.20.255 scope global enp0s9
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe9e:58e8/64 scope link 
       valid_lft forever preferred_lft forever
5: enp0s10: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:21:a9:3f brd ff:ff:ff:ff:ff:ff
    inet 10.0.30.10/24 brd 10.0.30.255 scope global enp0s10
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe21:a93f/64 scope link 
       valid_lft forever preferred_lft forever
6: enp0s16: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:e1:44:4e brd ff:ff:ff:ff:ff:ff
    inet 10.0.40.10/24 brd 10.0.40.255 scope global enp0s16
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fee1:444e/64 scope link 
       valid_lft forever preferred_lft forever
```

```sh
vagrant@VM1:~$ sudo ip mptcp endpoint show
```

```sh
10.0.10.10 id 1 signal dev enp0s8 
10.0.20.10 id 2 signal dev enp0s9 
10.0.30.10 id 3 signal dev enp0s10 
10.0.40.10 id 4 signal dev enp0s16 
```

```sh
vagrant@VM1:~$ sudo ip mptcp limits show
```

```sh
add_addr_accepted 4 subflows 4 
```

### VM2 CONSOLE LOGS

```sh
vagrant@VM2:~$ sudo ip mptcp endpoint show
```

```sh
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 02:07:82:9b:ea:86 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 metric 100 brd 10.0.2.255 scope global dynamic enp0s3
       valid_lft 81010sec preferred_lft 81010sec
    inet6 fe80::7:82ff:fe9b:ea86/64 scope link 
       valid_lft forever preferred_lft forever
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:60:c9:4b brd ff:ff:ff:ff:ff:ff
    inet 10.0.10.20/24 brd 10.0.10.255 scope global enp0s8
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe60:c94b/64 scope link 
       valid_lft forever preferred_lft forever
4: enp0s9: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:d1:5e:c5 brd ff:ff:ff:ff:ff:ff
    inet 10.0.20.20/24 brd 10.0.20.255 scope global enp0s9
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fed1:5ec5/64 scope link 
       valid_lft forever preferred_lft forever
5: enp0s10: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:64:4f:8e brd ff:ff:ff:ff:ff:ff
    inet 10.0.30.20/24 brd 10.0.30.255 scope global enp0s10
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe64:4f8e/64 scope link 
       valid_lft forever preferred_lft forever
6: enp0s16: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:78:cf:08 brd ff:ff:ff:ff:ff:ff
    inet 10.0.40.20/24 brd 10.0.40.255 scope global enp0s16
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe78:cf08/64 scope link 
       valid_lft forever preferred_lft forever
7: enp0s17: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:81:44:cd brd ff:ff:ff:ff:ff:ff
    inet 10.0.0.20/24 brd 10.0.0.255 scope global enp0s17
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe81:44cd/64 scope link 
       valid_lft forever preferred_lft forever
```

```sh
vagrant@VM2:~$ sudo ip mptcp endpoint show
```
```sh
10.0.10.20 id 1 signal dev enp0s8 
10.0.20.20 id 2 signal dev enp0s9 
10.0.30.20 id 3 signal dev enp0s10 
10.0.40.20 id 4 signal dev enp0s16 
```


```sh
vagrant@VM2:~$ sudo ip mptcp limits show
```

```sh
add_addr_accepted 4 subflows 4 
```

## SCENARIOS

### Without MPTCP

```sh
vagrant@VM1:~$ iperf3 -c 10.0.10.20 -t 10
Connecting to host 10.0.10.20, port 5201
[  5] local 10.0.10.10 port 53764 connected to 10.0.10.20 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   403 MBytes  3.38 Gbits/sec  2397    216 KBytes       
[  5]   1.00-2.00   sec   367 MBytes  3.08 Gbits/sec  1776    188 KBytes       
[  5]   2.00-3.00   sec   395 MBytes  3.31 Gbits/sec  2027    230 KBytes       
[  5]   3.00-4.00   sec   370 MBytes  3.10 Gbits/sec  2373    199 KBytes       
[  5]   4.00-5.00   sec   382 MBytes  3.20 Gbits/sec  1708    222 KBytes       
[  5]   5.00-6.00   sec   354 MBytes  2.97 Gbits/sec  1987    188 KBytes       
[  5]   6.00-7.00   sec   358 MBytes  3.00 Gbits/sec  2117    195 KBytes       
[  5]   7.00-8.00   sec   385 MBytes  3.23 Gbits/sec  2495    216 KBytes       
[  5]   8.00-9.00   sec   377 MBytes  3.16 Gbits/sec  2102    225 KBytes       
[  5]   9.00-10.00  sec   381 MBytes  3.19 Gbits/sec  2119    243 KBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  3.68 GBytes  3.16 Gbits/sec  21101             sender
[  5]   0.00-10.04  sec  3.68 GBytes  3.15 Gbits/sec                  receiver

iperf Done.
vagrant@VM1:~$ iperf3 -c 10.0.10.20 -t 10 -R
Connecting to host 10.0.10.20, port 5201
Reverse mode, remote host 10.0.10.20 is sending
[  5] local 10.0.10.10 port 47770 connected to 10.0.10.20 port 5201
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-1.00   sec   405 MBytes  3.40 Gbits/sec                  
[  5]   1.00-2.00   sec   372 MBytes  3.12 Gbits/sec                  
[  5]   2.00-3.00   sec   375 MBytes  3.15 Gbits/sec                  
[  5]   3.00-4.00   sec   351 MBytes  2.94 Gbits/sec                  
[  5]   4.00-5.00   sec   384 MBytes  3.22 Gbits/sec                  
[  5]   5.00-6.00   sec   317 MBytes  2.66 Gbits/sec                  
[  5]   6.00-7.00   sec   401 MBytes  3.36 Gbits/sec                  
[  5]   7.00-8.00   sec   389 MBytes  3.26 Gbits/sec                  
[  5]   8.00-9.00   sec   347 MBytes  2.91 Gbits/sec                  
[  5]   9.00-10.00  sec   384 MBytes  3.22 Gbits/sec                  
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.06  sec  3.64 GBytes  3.11 Gbits/sec  22225             sender
[  5]   0.00-10.00  sec  3.64 GBytes  3.13 Gbits/sec                  receiver

iperf Done.
```

### With MPTCP

```sh
vagrant@VM1:~$ mptcpize run iperf3 -c 10.0.10.20 -t 10
Connecting to host 10.0.10.20, port 5201
[  5] local 10.0.10.10 port 55730 connected to 10.0.10.20 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   180 MBytes  1.51 Gbits/sec  222    345 KBytes       
[  5]   1.00-2.00   sec   166 MBytes  1.39 Gbits/sec   86    214 KBytes       
[  5]   2.00-3.00   sec   165 MBytes  1.38 Gbits/sec   12    219 KBytes       
[  5]   3.00-4.00   sec   166 MBytes  1.39 Gbits/sec    0    296 KBytes       
[  5]   4.00-5.00   sec   158 MBytes  1.32 Gbits/sec   45    272 KBytes       
[  5]   5.00-6.00   sec   158 MBytes  1.32 Gbits/sec    1    274 KBytes       
[  5]   6.00-7.00   sec   165 MBytes  1.38 Gbits/sec   45    264 KBytes       
[  5]   7.00-8.00   sec   151 MBytes  1.27 Gbits/sec   19    253 KBytes       
[  5]   8.00-9.00   sec   156 MBytes  1.31 Gbits/sec   29    235 KBytes       
[  5]   9.00-10.00  sec   159 MBytes  1.33 Gbits/sec    0    311 KBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  1.59 GBytes  1.36 Gbits/sec  459             sender
[  5]   0.00-10.01  sec  1.58 GBytes  1.36 Gbits/sec                  receiver

iperf Done.
vagrant@VM1:~$ mptcpize run iperf3 -c 10.0.10.20 -t 10 -R
Connecting to host 10.0.10.20, port 5201
Reverse mode, remote host 10.0.10.20 is sending
[  5] local 10.0.10.10 port 60808 connected to 10.0.10.20 port 5201
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-1.00   sec   248 MBytes  2.08 Gbits/sec                  
[  5]   1.00-2.00   sec   239 MBytes  2.01 Gbits/sec                  
[  5]   2.00-3.00   sec   243 MBytes  2.04 Gbits/sec                  
[  5]   3.00-4.00   sec   231 MBytes  1.93 Gbits/sec                  
[  5]   4.00-5.00   sec   228 MBytes  1.91 Gbits/sec                  
[  5]   5.00-6.00   sec   228 MBytes  1.91 Gbits/sec                  
[  5]   6.00-7.00   sec   230 MBytes  1.93 Gbits/sec                  
[  5]   7.00-8.00   sec   225 MBytes  1.89 Gbits/sec                  
[  5]   8.00-9.00   sec   232 MBytes  1.95 Gbits/sec                  
[  5]   9.00-10.00  sec   231 MBytes  1.94 Gbits/sec                  
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  2.28 GBytes  1.96 Gbits/sec  835             sender
[  5]   0.00-10.00  sec  2.28 GBytes  1.96 Gbits/sec                  receiver

iperf Done.
```

#### MPTCP monitor

```sh
vagrant@VM1:~$ sudo ip mptcp monitor

[       CREATED] token=de60c70b remid=0 locid=0 saddr4=10.0.10.10 daddr4=10.0.10.20 sport=55714 dport=5201
[   ESTABLISHED] token=de60c70b remid=0 locid=0 saddr4=10.0.10.10 daddr4=10.0.10.20 sport=55714 dport=5201
[     ANNOUNCED] token=de60c70b remid=1 daddr4=10.0.10.20 dport=0
[     ANNOUNCED] token=de60c70b remid=2 daddr4=10.0.20.20 dport=0
[SF_ESTABLISHED] token=de60c70b remid=2 locid=0 saddr4=10.0.20.10 daddr4=10.0.20.20 sport=45831 dport=5201 backup=0
[     ANNOUNCED] token=de60c70b remid=3 daddr4=10.0.30.20 dport=0
[SF_ESTABLISHED] token=de60c70b remid=3 locid=0 saddr4=10.0.30.10 daddr4=10.0.30.20 sport=42643 dport=5201 backup=0
[     ANNOUNCED] token=de60c70b remid=4 daddr4=10.0.40.20 dport=0
[       CREATED] token=6c264880 remid=0 locid=0 saddr4=10.0.10.10 daddr4=10.0.10.20 sport=55730 dport=5201
[   ESTABLISHED] token=6c264880 remid=0 locid=0 saddr4=10.0.10.10 daddr4=10.0.10.20 sport=55730 dport=5201
[     ANNOUNCED] token=6c264880 remid=1 daddr4=10.0.10.20 dport=0
[     ANNOUNCED] token=6c264880 remid=2 daddr4=10.0.20.20 dport=0
[     ANNOUNCED] token=6c264880 remid=3 daddr4=10.0.30.20 dport=0
[SF_ESTABLISHED] token=6c264880 remid=2 locid=0 saddr4=10.0.20.10 daddr4=10.0.20.20 sport=57023 dport=5201 backup=0
[     ANNOUNCED] token=6c264880 remid=4 daddr4=10.0.40.20 dport=0
[SF_ESTABLISHED] token=6c264880 remid=3 locid=0 saddr4=10.0.30.10 daddr4=10.0.30.20 sport=33565 dport=5201 backup=0
[SF_ESTABLISHED] token=6c264880 remid=4 locid=0 saddr4=10.0.40.10 daddr4=10.0.40.20 sport=57203 dport=5201 backup=0
[        CLOSED] token=6c264880
[        CLOSED] token=de60c70b
^C
vagrant@VM1:~$ sudo ip mptcp monitor
[       CREATED] token=bc8c5c8d remid=0 locid=0 saddr4=10.0.10.10 daddr4=10.0.10.20 sport=60804 dport=5201
[   ESTABLISHED] token=bc8c5c8d remid=0 locid=0 saddr4=10.0.10.10 daddr4=10.0.10.20 sport=60804 dport=5201
[     ANNOUNCED] token=bc8c5c8d remid=1 daddr4=10.0.10.20 dport=0
[     ANNOUNCED] token=bc8c5c8d remid=2 daddr4=10.0.20.20 dport=0
[SF_ESTABLISHED] token=bc8c5c8d remid=2 locid=0 saddr4=10.0.20.10 daddr4=10.0.20.20 sport=47157 dport=5201 backup=0
[       CREATED] token=110385b7 remid=0 locid=0 saddr4=10.0.10.10 daddr4=10.0.10.20 sport=60808 dport=5201
[     ANNOUNCED] token=bc8c5c8d remid=3 daddr4=10.0.30.20 dport=0
[     ANNOUNCED] token=bc8c5c8d remid=4 daddr4=10.0.40.20 dport=0
[   ESTABLISHED] token=110385b7 remid=0 locid=0 saddr4=10.0.10.10 daddr4=10.0.10.20 sport=60808 dport=5201
[     ANNOUNCED] token=110385b7 remid=1 daddr4=10.0.10.20 dport=0
[SF_ESTABLISHED] token=bc8c5c8d remid=3 locid=0 saddr4=10.0.30.10 daddr4=10.0.30.20 sport=59979 dport=5201 backup=0
[     ANNOUNCED] token=110385b7 remid=2 daddr4=10.0.20.20 dport=0
[SF_ESTABLISHED] token=110385b7 remid=2 locid=0 saddr4=10.0.20.10 daddr4=10.0.20.20 sport=39413 dport=5201 backup=0
[     ANNOUNCED] token=110385b7 remid=3 daddr4=10.0.30.20 dport=0
[     ANNOUNCED] token=110385b7 remid=4 daddr4=10.0.40.20 dport=0
[SF_ESTABLISHED] token=110385b7 remid=3 locid=0 saddr4=10.0.30.10 daddr4=10.0.30.20 sport=43147 dport=5201 backup=0
[SF_ESTABLISHED] token=110385b7 remid=4 locid=0 saddr4=10.0.40.10 daddr4=10.0.40.20 sport=52055 dport=5201 backup=0
[     SF_CLOSED] token=110385b7 remid=4 locid=0 saddr4=10.0.40.10 daddr4=10.0.40.20 sport=52055 dport=5201 backup=0
[        CLOSED] token=110385b7
[        CLOSED] token=bc8c5c8d
```

```sh
vagrant@VM2:~$ sudo ip mptcp monitor

[       CREATED] token=edfa7a9b remid=0 locid=0 saddr6=::ffff:10.0.10.20 daddr6=::ffff:10.0.10.10 sport=5201 dport=55714
[   ESTABLISHED] token=edfa7a9b remid=0 locid=0 saddr6=::ffff:10.0.10.20 daddr6=::ffff:10.0.10.10 sport=5201 dport=55714
[     ANNOUNCED] token=edfa7a9b remid=1 daddr4=10.0.10.10 dport=0
[     ANNOUNCED] token=edfa7a9b remid=2 daddr4=10.0.20.10 dport=0
[SF_ESTABLISHED] token=edfa7a9b remid=0 locid=2 saddr6=::ffff:10.0.20.20 daddr6=::ffff:10.0.20.10 sport=5201 dport=45831 backup=0
[     SF_CLOSED] token=edfa7a9b remid=2 locid=0 saddr6=::ffff:10.0.20.20 daddr6=::ffff:10.0.20.10 sport=59347 dport=55714 backup=0
[SF_ESTABLISHED] token=edfa7a9b remid=0 locid=3 saddr6=::ffff:10.0.30.20 daddr6=::ffff:10.0.30.10 sport=5201 dport=42643 backup=0
[     ANNOUNCED] token=edfa7a9b remid=3 daddr4=10.0.30.10 dport=0
[     ANNOUNCED] token=edfa7a9b remid=4 daddr4=10.0.40.10 dport=0
[     SF_CLOSED] token=edfa7a9b remid=4 locid=0 saddr6=::ffff:10.0.40.20 daddr6=::ffff:10.0.40.10 sport=51527 dport=55714 backup=0
[       CREATED] token=da2dabb1 remid=0 locid=0 saddr6=::ffff:10.0.10.20 daddr6=::ffff:10.0.10.10 sport=5201 dport=55730
[   ESTABLISHED] token=da2dabb1 remid=0 locid=0 saddr6=::ffff:10.0.10.20 daddr6=::ffff:10.0.10.10 sport=5201 dport=55730
[     ANNOUNCED] token=da2dabb1 remid=1 daddr4=10.0.10.10 dport=0
[     ANNOUNCED] token=da2dabb1 remid=2 daddr4=10.0.20.10 dport=0
[SF_ESTABLISHED] token=da2dabb1 remid=0 locid=2 saddr6=::ffff:10.0.20.20 daddr6=::ffff:10.0.20.10 sport=5201 dport=57023 backup=0
[     SF_CLOSED] token=da2dabb1 remid=2 locid=0 saddr6=::ffff:10.0.20.20 daddr6=::ffff:10.0.20.10 sport=45971 dport=55730 backup=0 error=111
[     ANNOUNCED] token=da2dabb1 remid=3 daddr4=10.0.30.10 dport=0
[SF_ESTABLISHED] token=da2dabb1 remid=0 locid=3 saddr6=::ffff:10.0.30.20 daddr6=::ffff:10.0.30.10 sport=5201 dport=33565 backup=0
[     ANNOUNCED] token=da2dabb1 remid=4 daddr4=10.0.40.10 dport=0
[SF_ESTABLISHED] token=da2dabb1 remid=0 locid=4 saddr6=::ffff:10.0.40.20 daddr6=::ffff:10.0.40.10 sport=5201 dport=57203 backup=0
[        CLOSED] token=da2dabb1
[        CLOSED] token=edfa7a9b
^C
vagrant@VM2:~$ sudo ip mptcp monitor
[       CREATED] token=57565ab6 remid=0 locid=0 saddr6=::ffff:10.0.10.20 daddr6=::ffff:10.0.10.10 sport=5201 dport=60804
[   ESTABLISHED] token=57565ab6 remid=0 locid=0 saddr6=::ffff:10.0.10.20 daddr6=::ffff:10.0.10.10 sport=5201 dport=60804
[     ANNOUNCED] token=57565ab6 remid=1 daddr4=10.0.10.10 dport=0
[     ANNOUNCED] token=57565ab6 remid=2 daddr4=10.0.20.10 dport=0
[SF_ESTABLISHED] token=57565ab6 remid=0 locid=2 saddr6=::ffff:10.0.20.20 daddr6=::ffff:10.0.20.10 sport=5201 dport=47157 backup=0
[     SF_CLOSED] token=57565ab6 remid=2 locid=0 saddr6=::ffff:10.0.20.20 daddr6=::ffff:10.0.20.10 sport=43809 dport=60804 backup=0
[       CREATED] token=a28a77cd remid=0 locid=0 saddr6=::ffff:10.0.10.20 daddr6=::ffff:10.0.10.10 sport=5201 dport=60808
[   ESTABLISHED] token=a28a77cd remid=0 locid=0 saddr6=::ffff:10.0.10.20 daddr6=::ffff:10.0.10.10 sport=5201 dport=60808
[     ANNOUNCED] token=57565ab6 remid=3 daddr4=10.0.30.10 dport=0
[SF_ESTABLISHED] token=57565ab6 remid=0 locid=3 saddr6=::ffff:10.0.30.20 daddr6=::ffff:10.0.30.10 sport=5201 dport=59979 backup=0
[     ANNOUNCED] token=a28a77cd remid=1 daddr4=10.0.10.10 dport=0
[     ANNOUNCED] token=57565ab6 remid=4 daddr4=10.0.40.10 dport=0
[     ANNOUNCED] token=a28a77cd remid=2 daddr4=10.0.20.10 dport=0
[     SF_CLOSED] token=57565ab6 remid=3 locid=0 saddr6=::ffff:10.0.30.20 daddr6=::ffff:10.0.30.10 sport=60861 dport=60804 backup=0
[     SF_CLOSED] token=a28a77cd remid=2 locid=0 saddr6=::ffff:10.0.20.20 daddr6=::ffff:10.0.20.10 sport=37463 dport=60808 backup=0
[SF_ESTABLISHED] token=a28a77cd remid=0 locid=2 saddr6=::ffff:10.0.20.20 daddr6=::ffff:10.0.20.10 sport=5201 dport=39413 backup=0
[     ANNOUNCED] token=a28a77cd remid=3 daddr4=10.0.30.10 dport=0
[     ANNOUNCED] token=a28a77cd remid=4 daddr4=10.0.40.10 dport=0
[SF_ESTABLISHED] token=a28a77cd remid=0 locid=3 saddr6=::ffff:10.0.30.20 daddr6=::ffff:10.0.30.10 sport=5201 dport=43147 backup=0
[     SF_CLOSED] token=a28a77cd remid=3 locid=0 saddr6=::ffff:10.0.30.20 daddr6=::ffff:10.0.30.10 sport=52323 dport=60808 backup=0
[     SF_CLOSED] token=a28a77cd remid=4 locid=0 saddr6=::ffff:10.0.40.20 daddr6=::ffff:10.0.40.10 sport=56903 dport=60808 backup=0 error=111
[        CLOSED] token=a28a77cd
[        CLOSED] token=57565ab6
```