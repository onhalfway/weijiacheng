# TOC of Notes

- [TOC of Notes](#toc-of-notes)
  - [十大ISP服务商分为](#%e5%8d%81%e5%a4%a7isp%e6%9c%8d%e5%8a%a1%e5%95%86%e5%88%86%e4%b8%ba)
  - [MacOS](#macos)
  - [tools](#tools)
  - [常见 DNS 记录的类型](#%e5%b8%b8%e8%a7%81-dns-%e8%ae%b0%e5%bd%95%e7%9a%84%e7%b1%bb%e5%9e%8b)
  - [Oracle WiFi Hotspot AP Access Point](#oracle-wifi-hotspot-ap-access-point)

## 十大ISP服务商分为

- 中国公用计算机互联网(CHINANET，即中国电信网)
- 中国网通公用互联网(CNCNET，包括金桥网CHINAGBN)
- 中国移动互联网（CMNET）
- 中国联通互联网（UNINET）
- 中国铁通互联网（CRCNET）
- 中国卫星集团互联网（CSNET）
- 中国科技网（CSTNET）
- 中国教育和科研计算机网（CERNET）
- 中国国际经济贸易互联网（CIETNET）
- 中国长城互联网（CGWNET）

## MacOS

MacOS->VS Code->Terminal
The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
localhost:mypython kehuawei$

## tools

- [what is my ip](https://www.whatismyip.com/)
- [search ip](https://ipleak.com/)
- [GeoIP](https://ip.cn/)
- [baidu ip](http://www.ip138.com/)
- [Deli Vault](http://www.nbdeli.com/service/down_search_list.php?id=13916)
- [Deli Vault](http://www.nbdeli.com/images/goods_file0/2019/09/15681863106151.pdf)
- [Deli Vault](https://raw.githubusercontent.com/onhalfway/weijiacheng/master/my/deli-4055.pdf)

## [常见 DNS 记录的类型](https://www.imooc.com/article/26971?block_id=tuijian_wz)

类型: 目的
A: 地址记录，用来指定域名的 IPv4 地址，如果需要将域名指向一个 IP 地址，就需要添加 A 记录。
AAAA: 用来指定主机名(或域名)对应的 IPv6 地址记录。
CNAME: 如果需要将域名指向另一个域名，再由另一个域名提供 ip 地址，就需要添加 CNAME 记录。
MX: 如果需要设置邮箱，让邮箱能够收到邮件，需要添加 MX 记录。
NS: 域名服务器记录，如果需要把子域名交给其他 DNS 服务器解析，就需要添加 NS 记录。
SOA: SOA 这种记录是所有区域性文件中的强制性记录。它必须是一个文件中的第一个记录。
TXT: 可以写任何东西，长度限制为 255。绝大多数的 TXT记录是用来做 SPF 记录(反垃圾邮件)。

## Oracle WiFi Hotspot AP Access Point

- [windows system proxy for socks address](http://socks=127.0.0.1)
- IE setting: http=localhost:1080;https=localhost:1080;ftp=localhost:1080;socks=localhost:1080
Windows不支持socks5代理，只支持socks4/4a代理，放弃吧……用chrome+switchyomega或者firefox
- [如何让【不支持】代理的网络软件，通过代理进行联网（不同平台的 N 种方法）](https://program-think.blogspot.com/2019/04/Proxy-Tricks.html)
- [System proxy proxifier](https://www.proxifier.com/)
L6Z8A-XY2J4-BTZ3P-ZZ7DF-A2Q9C (Portable Edition)
5EZ8G-C3WL5-B56YG-SCXM9-6QZAP (Standard Edition)
P427L-9Y552-5433E-8DSR3-58Z68 (MAC)

Rule:
~~Localhost: localhost; 127.0.0.1; %ComputerName%; ::1~~
proxy: 140.238.11.194:22;

Under Windows 10 System Proxy is disabled and proxifier checker testing www.google.com:80 passed:
Chrome V78 SwitchyOmega direct don't use proxifier as proxy, seems connect by itself.
Firefox V71 SwitchyOmega direct/System Proxy do use proxifier as proxy and can access most website, but receive:
firefox.exe *64 - www.google.com:443 error : Could not connect through proxy 127.0.0.1:1080 - Proxy closed the connection unexpectedly.
don't work: facebook:443; google:443
work: baidu:443; youtube:443 partly (youtube access log)
firefox.exe *64 - r6---sn-n4v7sn7y.googlevideo.com:443 open through proxy 127.0.0.1:1080 SOCKS5
[12.10 09:29:07] firefox.exe *64 - r6---sn-n4v7sn7y.googlevideo.com:443 close, 541 bytes sent, 3512 bytes (3.42 KB) received, lifetime <1 sec
[12.10 09:29:07] firefox.exe *64 - r6---sn-n4v7sn7y.googlevideo.com:443 close, 541 bytes sent, 3512 bytes (3.42 KB) received, lifetime <1 sec
[12.10 09:29:08] firefox.exe *64 - r6---sn-n4v7sn7y.googlevideo.com:443 close, 541 bytes sent, 3512 bytes (3.42 KB) received, lifetime 00:01
[12.10 09:29:08] firefox.exe *64 - r6---sn-n4v7sn7y.googlevideo.com:443 close, 541 bytes sent, 3512 bytes (3.42 KB) received, lifetime 00:01
[12.10 09:31:59] firefox.exe *64 - r6---sn-n4v7sn7y.googlevideo.com:443 error : Could not connect through proxy 127.0.0.1:1080 - Proxy closed the connection unexpectedly.
[12.10 09:31:59] firefox.exe *64 - r6---sn-n4v7sn7y.googlevideo.com:443 error : Could not connect through proxy 127.0.0.1:1080 - Proxy closed the connection unexpectedly.
[12.10 09:32:04] firefox.exe *64 - r4---sn-n4v7knlk.googlevideo.com:443 open through proxy 127.0.0.1:1080 SOCKS5
[12.10 09:32:04] firefox.exe *64 - r4---sn-n4v7knlk.googlevideo.com:443 close, 541 bytes sent, 3145 bytes (3.07 KB) received, lifetime <1 sec
[12.10 09:32:07] firefox.exe *64 - r6---sn-n4v7sn7y.googlevideo.com:443 error : Could not connect through proxy 127.0.0.1:1080 - Proxy closed the connection unexpectedly.
[12.10 09:32:11] firefox.exe *64 - ocsp.pki.goog:80 close, 1214 bytes (1.18 KB) sent, 2105 bytes (2.05 KB) received, lifetime 03:39




If asking as developer there are lot of ways to do this.

    You can hook all winsocket functions in all applications and wrote your own app to route them through a socks proxy.

    You can write a WinSocket LSP and modify all inbound and outbound data packages.

    Creating a virtual network adapter which route all data to a proxy.

But from user perspective you can use:

    Applications that hook into other processes like ProxyCAP (Commercial) http://www.proxycap.com

    Applications which control winsocket using LSP like Proxifier (Commercial) http://www.proxifier.com/

    Using OpenVPN Tap Adapter to create a virtual TAP adapter along with Tun2Socks to redirect traffics to a socks proxy and routing table to send traffics to adapter. (Completely Open Source) http://code.google.com/p/badvpn/wiki/tun2socks


```git bash
$ nslookup www.google.com
$ curl --socks5-hostname 127.0.0.1:1080 www.baidu.com
$ curl --socks5-hostname 127.0.0.1:1080 www.google.com
$ curl --socks5-hostname 127.0.0.1:1080 https://www.google.com
```

- [what is my ip](https://www.whatismyip.com/)
- [search ip](https://ipleak.com/)
- [GeoIP](https://ip.cn/)
- [baidu ip](http://www.ip138.com/)

- System Settings -> Network -> Proxy -> Script (PAC)-> http://wpad/wpad.dat
  - when using Cisco Anyconnect VPN, if using SwitchyOmega plugin with Chrome and Firefox browser, you should select System Proxy, Chrome work but Firefox only partly work for Oracle internal website (https://csaap.oracle.com/oalapp/web/clm/?root=customers, https://global-apex.oraclecorp.com/apex/f?p=123:1:4596323566310:::::) and others Internet doesn't work(https://mysites.oracle.com/home/, baidu.com,). should disable SwithcyOmega addon.
- Windows 10 WiFi Hotspot AP
- can connect AP, can connect AP with Android Mobile but can NOT connect to Internet
- can connect remote IP, so DNS does NOT work
- manually set up DNS to 114.114.114.114, 8.8.8.8, 8.8.4.4, 9.9.9.9 for WLAN or AP or Android client still doesn't work.
- can NOT resolve domain name with nslookup command
- finally find out is reason of McAfee Endpoint Security Firewall, it works after executing McAffee Quick Settings -> Disable Endpoint Security Firewall.

- TODO: [WiFi AP DNS](http://www.winwin7.com/JC/15958.html)
- [Windows hostednetwork](https://zshttp.com/1504.html)
  - CMD/PowerShell run as Administrator
  - netsh wlan set hostednetwork mode=allow ssid=wayap key=WayAccessPoint
    - netsh wlan set hostednetwork mode=allow
    - netsh wlan set hostednetwork ssid=wayap key=WayAccessPoint
  - netsh wlan start hostednetwork
- [netsh wlan set hostednetwork 之后如何删除掉配置](https://www.cnblogs.com/shaivas/p/6489578.html)
- 右键点击开始按钮>运行(Win+R)>ncpa.cpl可以快速打开网络连接设置界面
- services.msc

```cmd
Microsoft Windows [版本 10.0.17763.864]
(c) 2018 Microsoft Corporation。保留所有权利。

C:\WINDOWS\system32>netsh wlan set hostednetwork mode=allow ssid=wayap key=WayAccessPoint
承载网络模式已设置为允许。
已成功更改承载网络的 SSID。
已成功更改托管网络的用户密钥密码。


C:\WINDOWS\system32>netsh wlan start hostednetwork
无法启动承载网络。
组或资源的状态不是执行请求操作的正确状态。



C:\WINDOWS\system32>netsh wlan show drivers

接口名称: WLAN

    驱动程序                  : Intel(R) Dual Band Wireless-AC 8265
    供应商                    : Intel Corporation
    提供程序                  : Intel
    日期                      : 2018/5/9
    版本                      : 20.60.0.7
    INF 文件                  : oem92.inf
    类型                      : 本机 WLAN 驱动程序
    支持的无线电类型          : 802.11b 802.11g 802.11n 802.11a 802.11ac
    支持 FIPS 140-2 模式: 是
    支持 802.11w 管理帧保护 : 是
    支持的承载网络  : 否
    基础结构模式中支持的身份验证和密码:
                                开放式             无
                                开放式             WEP-40bit
                                开放式             WEP-104 位
                                开放式             WEP
                                WPA - 企业        TKIP
                                WPA - 企业        CCMP
                                WPA - 个人        TKIP
                                WPA - 个人        CCMP
                                WPA2 - 企业       TKIP
                                WPA2 - 企业       CCMP
                                WPA2 - 个人       TKIP
                                WPA2 - 个人       CCMP
                                开放式             供应商定义的
                                供应商定义的          供应商定义的
    是否存在 IHV 服务         : 是
    IHV 适配器 OUI            : [00 00 00]，类型: [00]
    IHV 扩展 DLL 路径         : C:\WINDOWS\system32\IntelWifiIhv06.dll
    IHV UI 扩展 ClSID         : {00000000-0000-0000-0000-000000000000}
    IHV 诊断 CLSID            : {00000000-0000-0000-0000-000000000000}
    支持的无线显示器: 是 (图形驱动程序: 是，WLAN 驱动程序: 是)


C:\WINDOWS\system32>
C:\WINDOWS\system32>netsh wlan /?

下列指令有效:

此上下文中的命令:
?              - 显示命令列表。
add            - 在一个表格中添加一个配置项。
connect        - 连接到无线网络。
delete         - 从一个表格中删除一个配置项。
disconnect     - 从无线网络断开连接。
dump           - 显示一个配置脚本。
export         - 将 WLAN 配置文件保存为 XML 文件。
help           - 显示命令列表。
IHV            - 用于 IHV 记录的命令。
refresh        - 刷新承载网络设置。
reportissues   - 生成 WLAN 智能跟踪报告。
set            - 设置配置信息。
show           - 显示信息。
start          - 启动承载网络。
stop           - 停止承载网络。

若需要命令的更多帮助信息，请键入命令，接着是空格，
后面跟 ?。


C:\WINDOWS\system32>netsh wlan show

下列指令有效:

此上下文中的命令:
show all       - 显示完整的无线设备和网络信息。
show allowexplicitcreds - 显示允许共享用户凭据设置。
show autoconfig - 显示是否启用或禁用自动配置逻辑。
show blockednetworks - 显示阻止的网络显示设置。
show createalluserprofile - 显示是否允许所有人创建所有
                 用户配置文件。
show drivers   - 显示系统上无线 LAN 驱动程序的属性。
show filters   - 显示允许和阻止的网络列表。
show hostednetwork - 显示承载网络的属性和状态。
show interfaces - 显示系统上的无线局域网接口
                 的列表。
show networks  - 显示计算机上可见的网络列表。
show onlyUseGPProfilesforAllowedNetworks - 显示在配置 GP 的网络设置上仅使用 GP 配置文件。
show profiles  - 显示计算机上配置的配置文件列表。
show randomization - 显示 MAC 随机化是已启用还是
                 已禁用。
show settings  - 显示无线 LAN 的全局设置。
show tracing   - 显示是否启用或禁用无线局域网跟踪。
show wirelesscapabilities - 显示系统的无线功能
show wlanreport - 生成一个报告，显示最新的无线会话信息。

C:\WINDOWS\system32>netsh wlan hostednetwork
找不到下列命令: wlan hostednetwork。

C:\WINDOWS\system32>netsh wlan show hostednetwork

承载网络设置
-----------------------
    模式                   : 已启用
    SSID 名称              :“wayap”
    最多客户端数  : 100
    身份验证         : WPA2 - 个人
    密码                 : CCMP

承载网络状态
---------------------
    状态                 : 不可用


C:\WINDOWS\system32>
C:\WINDOWS\system32>netsh wlan stop hostednetwork
已停止承载网络。


C:\WINDOWS\system32>netsh wlan set hostednetwork mode=disallow
承载网络模式已设置为禁止。


C:\WINDOWS\system32>
C:\WINDOWS\system32>netsh wlan show hostednetwork

承载网络设置
-----------------------
    模式                   : 已禁用
    SSID 名称              :“wayap”
    最多客户端数  : 100
    身份验证         : WPA2 - 个人
    密码                 : CCMP

承载网络状态
---------------------
    状态                 : 不可用


C:\WINDOWS\system32>netsh wlan show profiles
netsh wlan delete profile name="ProfileName"
```

```powershell run as administrator
net stop wlansvc
Get-ItemProperty "HKLM:\system\currentcontrolset\services\wlansvc\parameters\hostednetworksettings"
Remove-Item "HKLM:\system\currentcontrolset\services\wlansvc\parameters\hostednetworksettings"
net start wlansvc


PS C:\WINDOWS\system32> net stop wlansvc
WLAN AutoConfig 服务正在停止.
WLAN AutoConfig 服务已成功停止。

PS C:\WINDOWS\system32> Get-ItemProperty "HKLM:\system\currentcontrolset\services\wlansvc\parameters\hostednetworksettings"


HostedNetworkSettings : {72, 0, 79, 0...}
EverUsed              : 0
EncryptedSettings     : {1, 0, 0, 0...}
PSPath                : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\system\currentcontrolset\services\wlansv
                        c\parameters\hostednetworksettings
PSParentPath          : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\system\currentcontrolset\services\wlansv
                        c\parameters
PSChildName           : hostednetworksettings
PSDrive               : HKLM
PSProvider            : Microsoft.PowerShell.Core\Registry



PS C:\WINDOWS\system32> Remove-Item "HKLM:\system\currentcontrolset\services\wlansvc\parameters\hostednetworksettings"
PS C:\WINDOWS\system32> net start wlansvc
WLAN AutoConfig 服务正在启动 .
WLAN AutoConfig 服务已经启动成功。

PS C:\WINDOWS\system32>
PS C:\WINDOWS\system32> netsh wlan show hostednetwork

承载网络设置
-----------------------
    模式                   : 已启用
    设置              : <未配置>

承载网络状态
---------------------
    状态                 : 不可用

PS C:\WINDOWS\system32>
```
