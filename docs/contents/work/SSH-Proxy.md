# 用 SSH 搭建一个简单代理服务器

- Keywords: SSH, Tunnel, Proxy, SSH-Tunnel, sshproxy

TOC

- [用 SSH 搭建一个简单代理服务器](#%e7%94%a8-ssh-%e6%90%ad%e5%bb%ba%e4%b8%80%e4%b8%aa%e7%ae%80%e5%8d%95%e4%bb%a3%e7%90%86%e6%9c%8d%e5%8a%a1%e5%99%a8)
  - [概述](#%e6%a6%82%e8%bf%b0)
  - [SSH端口转发](#ssh%e7%ab%af%e5%8f%a3%e8%bd%ac%e5%8f%91)
    - [端口转发分类](#%e7%ab%af%e5%8f%a3%e8%bd%ac%e5%8f%91%e5%88%86%e7%b1%bb)
    - [本地端口转发](#%e6%9c%ac%e5%9c%b0%e7%ab%af%e5%8f%a3%e8%bd%ac%e5%8f%91)
    - [远程端口转发](#%e8%bf%9c%e7%a8%8b%e7%ab%af%e5%8f%a3%e8%bd%ac%e5%8f%91)
    - [动态端口转发](#%e5%8a%a8%e6%80%81%e7%ab%af%e5%8f%a3%e8%bd%ac%e5%8f%91)
  - [端口转发实践](#%e7%ab%af%e5%8f%a3%e8%bd%ac%e5%8f%91%e5%ae%9e%e8%b7%b5)
    - [防火墙穿透](#%e9%98%b2%e7%81%ab%e5%a2%99%e7%a9%bf%e9%80%8f)
    - [简单的代理服务器](#%e7%ae%80%e5%8d%95%e7%9a%84%e4%bb%a3%e7%90%86%e6%9c%8d%e5%8a%a1%e5%99%a8)
      - [TODO](#todo)
    - [内网穿透](#%e5%86%85%e7%bd%91%e7%a9%bf%e9%80%8f)
  - [结束语](#%e7%bb%93%e6%9d%9f%e8%af%ad)
  - [Firefox](#firefox)
  - [SSH 命令的三种代理功能（-L/-R/-D）](#ssh-%e5%91%bd%e4%bb%a4%e7%9a%84%e4%b8%89%e7%a7%8d%e4%bb%a3%e7%90%86%e5%8a%9f%e8%83%bd-l-r-d)
    - [正向代理：](#%e6%ad%a3%e5%90%91%e4%bb%a3%e7%90%86)
    - [反向代理](#%e5%8f%8d%e5%90%91%e4%bb%a3%e7%90%86)
    - [本地 socks5 代理](#%e6%9c%ac%e5%9c%b0-socks5-%e4%bb%a3%e7%90%86)
    - [使用优化](#%e4%bd%bf%e7%94%a8%e4%bc%98%e5%8c%96)
    - [功能对比](#%e5%8a%9f%e8%83%bd%e5%af%b9%e6%af%94)
    - [iptable port-forwarding](#iptable-port-forwarding)

## 概述

问题：

1. 所在网路因防火墙限制，导致一些协议、端口不能使用。
2. 想用 VPN ，但配置太麻烦。
3. 不通过 VPN ，想从公司访问家庭网络，或在家访问公司网络等。

如果你有遇到过上面的这些情况，本文会给你提供一种简单的解决方法。

## SSH端口转发

SSH 端口转发是 SSH 提供的一种机制，通过 Server 和 Client 之间的加密连接中继其它端口的流量。因为连接是加密的，所以对于传输使用未加密协议（如IMAP、VNC或IRC）的信息非常有用。

### 端口转发分类

SSH 端口转发一般分为两类：

1. 本地端口转发
2. 远程端口转发

### 本地端口转发

本地端口转发的作用是把 Client 的某个端口的流量通过 SSH 连接转发到 Server ，如图1所示。

![本地端口转发](../../img/ssh/figure-1.webp)

图1 本地端口转发

命令格式如下：

```bash
ssh -L <local port>:<remote host>:<remote port> <SSH hostname>
```

假设 Client 地址是 192.168.111.2，Server 地址是 192.168.111.3。在Client 端执行如下命令：

```shellscript
root@client $ ssh -L 2222:localhost:22 192.168.111.3
```

通过上面的命令连接上 Server 后，即实现了本地端口转发。只要在 Client 上连接本地的 2222 端口等同于连接 Server 的 22 端口，如下两条命令是等价的，均是连接 Server 的 22 端口：

```shellscript
root@client $ ssh 127.0.0.1 -p 2222
root@client $ ssh 192.168.111.3 -p 22
```

但是这儿有个问题，就是 Client 的 2222 端口是监听在 lo 接口上的，因此只有 Client 可以连接，为了让其他主机也可以连接 Client 的 2222 端口，上面的命令需要加一个 -g 参数。

```shellscript
root@client $ ssh -gL 2222:localhost:22 192.168.111.3
```

这样外部其他主机也可以连接 Client 的 2222 端口了。

### 远程端口转发

与本地端口转发相对应的是远程端口转发，其作用是把 Server 的某个端口的流量通过 SSH 连接转发到 Client ，如图2所示。

![本地端口转发](../../img/ssh/figure-2.webp)

图2 远程端口转发

命令格式如下：

```shellscript
ssh -R <remote port>:<local host>:<local port> <SSH hostname>
```

Client 上执行如下命令：

```shellscript
root@client $ ssh -R 2222:localhost:22 192.168.111.3
```

连接 Server 后，远程端口转发生效。此时在 Server 上连接本地的 2222 端口等同于连接 Client 的 22 端口，如下两条命令是等价的，均是连接 Client 的 22 端口：

```shellscript
root@server $ ssh 127.0.0.1 -p 2222
root@server $ ssh 192.168.111.2 -p 22
```

与本地端口转发不同，远程端口转发不能通过设置 -g 选项使外部主机连接 Server 的 2222 端口。

### 动态端口转发

另外除了本地端口转发和远程端口转发外，还有一个更方便的动态端口转发。与本地端口转发和远程端口转发把流量转发到某个固定主机的固定端口不同，动态端口转发是根据数据包的目的IP和目的端口实现动态转发的，工作机制类似于代理，如图3所示。

![本地端口转发](../../img/ssh/figure-3.webp)

图3 动态端口转发

命令格式如下：

```shellscript
ssh -D <local port> <SSH hostname>
```

Client 上执行如下命令：

```shellscript
root@client $ ssh -D 1080 192.168.111.3
```

为了让外部机器也可以连接，需要添加-g 参数：

```shellscript
root@client $ ssh -gD 1080 192.168.111.3
```

如此，发往 Client 1080 端口的数据包将通过 SSH 连接发往 Server ，并在 Server 上重新发起请求。

## 端口转发实践

经过上面对 SSH 端口转发的介绍，了解了其基本用法。接下来我们着手解决文章开始列出的那几个问题。

### 防火墙穿透

假设现在有 A、B、C 三台服务器，C 服务器提供 MySQL 服务，并且防火墙限制只信任来自 B 服务器的流量，其他任何主机均拒绝访问任何端口。有时为了测试需要临时从 A 访问，此时如果修改防火墙策略的话会有些麻烦，还需要测试完后恢复。如果用 SSH 本地端口转发的话，一条命令就解决了，当测试完成后断开此连接即可恢复，此情况如图4所示。

![本地端口转发](../../img/ssh/figure-4.webp)

图4 本地端口转发实例

命令如下：

```shellscript
root@A ssh -gL 3306:192.168.111.4:3306 192.168.111.3 -p 22
```

现在即可通过连接 A 服务器的 3306 端口，访问 C 服务的MySQL 服务了。

### 简单的代理服务器

在你用公共 WiFi 上网时，指不定有什么人在窥探你的数据包。为了保护自己的隐私，VPN 是一个很好的选择，但 VPN 配置有点麻烦，对于一些新手来说有点难度。此时通过 SSH 动态端口转发可以实现和 VPN 类似的效果。

为了用此功能，你首先需要一台有公网 IP 的服务器及 SSH 登陆权限。

接下来就是客户端的配置，此处以 Windows 为例（需要 SSH 连接工具 Putty ），配置如图5所示。

![本地端口转发](../../img/ssh/figure-5.webp)

图5 Putty 配置

配置好点 open ，输入账号密码登陆即可。现在一个简单的代理服务已经运行起来了。接下来是浏览器的配置，这里以 Chrome 为例，配置如图6所示。

![本地端口转发](../../img/ssh/figure-6.webp)

图6 浏览器配置

这里我用到了一个很好用的 Chrome 插件 “SwitchyOmega”，用于设置浏览器的代理。用其他代理插件或 Windows 自带的代理设置也是同样的配置：

```text
Proto: socks
Server: 127.0.0.1
Port: 1080
```

浏览器配置好后，在百度中搜索“IP”，即可看到我们的 IP 已经变成上面连接的那台服务器的地址了，如图7所示。

![本地端口转发](../../img/ssh/figure-7.webp)

图7 代理测试

#### TODO

```shellscript
```shellscript
$ curl --socks5-hostname 127.0.0.1:1080 www.baidu.com
$ curl --socks5-hostname 127.0.0.1:1080 www.google.com
$ curl --socks5-hostname 127.0.0.1:1080 https://www.google.com
```
```
curl测试成功，Firefox可以通过Manual proxy configuration方式连接，Chrome可以通过插件 “Proxy SwitchyOmega”方式连接。但是Firefox和Chrome无法通过system proxy方式连接。

### 内网穿透

随着 IPv4 地址的枯竭，对于家庭用户而言很难获得一个公网 IP 地址，就我自己家的宽带来说，每次拨号只能获得一个私有 IP 地址。此时如果想在公司访问家庭网络的话，很难实现。

如果你有一台拥有公网 IP 的主机及 SSH 权限的话，上面的情况将迎刃而解。

由于远程端口转发的限制，需要做两次端口转发：一次远程端口转发把公网的 2221（因为绑定在 lo 上，所以只能本机访问） 端口转发到家庭主机的 22 端口，一次本地端口转发把公网的 2222 端口转发到 2221 端口，如图8所示。

![本地端口转发](../../img/ssh/figure-8.webp)

图8 内网穿透

所需命令如下：

家庭主机上执行：

```shellscript
root@home $ ssh -R 2221:localhost:22 35.194.*.*
```

公网主机上执行：

```shellscript
root@public $ ssh -gL 2222:localhost:2221 localhost
```

此时准备工作已经完成。在任何 Internet 联通的地方，只要连接公网服务器的 2222 端口，即可登陆到家庭网络的主机上。

命令如下：

```shellscript
user@anywhere $ ssh -D 1080 35.194.*.* -p 2222
```

上面命令我们添加了动态端口转发参数。此时如果想访问家庭网络中其他主机上的资源的话，只要指定这个代理即可。

## 结束语

至此，我们已经完成了[SSH 端口转发](http://m.sohu.com/a/272431090_609423)的简要介绍，并通过几个实例展示了其在工作生活中的应用。

## Firefox

- [Web browsing over SSH](https://www.bitvise.com/ssh-web-browsing)

The recommended browser for this purpose is Firefox, because it can be configured to resolve DNS names through the SOCKS proxy, so the names of the websites you're browsing don't leak out through DNS queries.

## SSH 命令的三种代理功能（-L/-R/-D）

[SSH 命令的三种代理功能（-L/-R/-D）](https://zhuanlan.zhihu.com/p/57630633)

ssh 命令除了登陆外还有三种代理功能：

正向代理（-L）：相当于 iptable 的 port forwarding
反向代理（-R）：相当于 frp 或者 ngrok
socks5 代理（-D）：相当于 ss/ssr
如要长期高效的服务，应使用对应的专用软件。如没法安装软件，比如当你处在限制环境下想要访问下某个不可达到的目标，或者某个临时需求，那么 ssh 就是你的兜底方案。

### 正向代理：

所谓“正向代理”就是在本地启动端口，把本地端口数据转发到远端。

用法1：远程端口映射到其他机器

HostB 上启动一个 PortB 端口，映射到 HostC:PortC 上，在 HostB 上运行：

HostB$ ssh -L 0.0.0.0:PortB:HostC:PortC user@HostC
这时访问 HostB:PortB 相当于访问 HostC:PortC（和 iptable 的 port-forwarding 类似）。

用法2：本地端口通过跳板映射到其他机器

HostA 上启动一个 PortA 端口，通过 HostB 转发到 HostC:PortC上，在 HostA 上运行：

HostA$ ssh -L 0.0.0.0:PortA:HostC:PortC  user@HostB
这时访问 HostA:PortA 相当于访问 HostC:PortC。

两种用法的区别是，第一种用法本地到跳板机 HostB 的数据是明文的，而第二种用法一般本地就是 HostA，访问本地的 PortA，数据被 ssh 加密传输给 HostB 又转发给 HostC:PortC。

### 反向代理

所谓“反向代理”就是让远端启动端口，把远端端口数据转发到本地。

HostA 将自己可以访问的 HostB:PortB 暴露给外网服务器 HostC:PortC，在 HostA 上运行：

HostA$ ssh -R HostC:PortC:HostB:PortB  user@HostC
那么链接 HostC:PortC 就相当于链接 HostB:PortB。使用时需修改 HostC 的 /etc/ssh/sshd_config，添加：

GatewayPorts yes
相当于内网穿透，比如 HostA 和 HostB 是同一个内网下的两台可以互相访问的机器，HostC是外网跳板机，HostC不能访问 HostA，但是 HostA 可以访问 HostC。

那么通过在内网 HostA 上运行 ssh -R 告诉 HostC，创建 PortC 端口监听，把该端口所有数据转发给我（HostA），我会再转发给同一个内网下的 HostB:PortB。

同内网下的 HostA/HostB 也可以是同一台机器，换句话说就是内网 HostA 把自己可以访问的端口暴露给了外网 HostC。

按照前文《内网穿透：在公网访问你家的 NAS》中，相当于再 HostA 上启动了 frpc，而再 HostC 上启动了 frps。

### 本地 socks5 代理

在 HostA 的本地 1080 端口启动一个 socks5 服务，通过本地 socks5 代理的数据会通过 ssh 链接先发送给 HostB，再从 HostB 转发送给远程主机：

HostA$ ssh -D localhost:1080  HostB
那么在 HostA 上面，浏览器配置 socks5 代理为 127.0.0.1:1080，看网页时就能把数据通过 HostB 代理出去，类似 ss/ssr 版本，只不过用 ssh 来实现。

### 使用优化

为了更好用一点，ssh 后面还可以加上：-CqTnN 参数，比如：

$ ssh -CqTnN -L 0.0.0.0:PortA:HostC:PortC  user@HostB
其中 -C 为压缩数据，-q 安静模式，-T 禁止远程分配终端，-n 关闭标准输入，-N 不执行远程命令。此外视需要还可以增加 -f 参数，把 ssh 放到后台运行。

这些 ssh 代理没有短线重连功能，链接断了命令就退出了，所以需要些脚本监控重启，或者使用 autossh 之类的工具保持链接。

### 功能对比

正向代理（-L）的第一种用法可以用 iptable 的 port-forwarding 模拟，iptable 性能更好，但是需要 root 权限，ssh -L 性能不好，但是正向代理花样更多些。反向代理（-R）一般就作为没有安装 frp/ngrok/shootback 时候的一种代替，但是数据传输的性能和稳定性当然 frp 这些专用软件更好。

socks5 代理（-D）其实是可以代替 ss/ssr 的，区别和上面类似。所以要长久使用，推荐安装对应软件，临时用一下 ssh 挺顺手。

### iptable port-forwarding

补充下 iptable 的 port-forwarding 怎么设置，十分管用的功能，两个函数即可：

```bash
#! /bin/sh

# create forward rule by source interface
# http://serverfault.com/questions/532569/how-to-do-port-forwarding-redirecting-on-debian
PortForward1() {
    local IN_IF=$1
    local IN_PORT=$2
    local OUT_IP=$3
    local OUT_PORT=$4
    local IPTBL="/sbin/iptables"
    echo "1" > /proc/sys/net/ipv4/ip_forward
    $IPTBL -A PREROUTING -t nat -i $IN_IF -p tcp --dport $IN_PORT -j DNAT --to-destination ${OUT_IP}:${OUT_PORT}
    $IPTBL -A FORWARD -p tcp -d $OUT_IP --dport $OUT_PORT -j ACCEPT
    $IPTBL -A POSTROUTING -t nat -j MASQUERADE
}

# create forward rule by source ip
# http://blog.csdn.net/zzhongcy/article/details/42738285
ForwardPort2() {
    local IN_IP=$1
    local IN_PORT=$2
    local OUT_IP=$3
    local OUT_PORT=$4
    local IPTBL="/sbin/iptables"
    echo "1" > /proc/sys/net/ipv4/ip_forward
    $IPTBL -t nat -A PREROUTING --dst $IN_IP -p tcp --dport $IN_PORT -j DNAT --to-destination ${OUT_IP}:${OUT_PORT}
    $IPTBL -t nat -A POSTROUTING --dst $OUT_IP -p tcp --dport $OUT_PORT -j SNAT --to-source $IN_IP
}
```

第一个函数是按照网卡名称设置转发：

PortForward1 eth1 8765 202.115.8.2 8765
这时，本地 eth1 网卡的 8765 端口就会被转发给 202.115.8.2 的 8765 端口。

第二个函数是按照本机的 ip 地址，比如本机是 192.168.1.2：

PortForward2 192.168.1.2 8765 202.115.8.2 8765
那么任何访问本机 192.168.1.2 这个地址 8765 端口，都会被转发到 202.115.8.2:8765

这个 iptable 的 port forwarding 是内核层运行的，性能极好，只不过每次重启都需要重新设置下。
