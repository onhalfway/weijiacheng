# TOC of Notes

- [TOC of Notes](#toc-of-notes)
  - [十大ISP服务商分为](#%e5%8d%81%e5%a4%a7isp%e6%9c%8d%e5%8a%a1%e5%95%86%e5%88%86%e4%b8%ba)
  - [MacOS](#macos)
  - [tools](#tools)
  - [常见 DNS 记录的类型](#%e5%b8%b8%e8%a7%81-dns-%e8%ae%b0%e5%bd%95%e7%9a%84%e7%b1%bb%e5%9e%8b)

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
- [Deli Vault](deli-4055.pdf)
- [Deli Vault](http://www.nbdeli.com/images/goods_file0/2019/09/15681863106151.pdf)

## [常见 DNS 记录的类型](https://www.imooc.com/article/26971?block_id=tuijian_wz)

类型: 目的
A: 地址记录，用来指定域名的 IPv4 地址，如果需要将域名指向一个 IP 地址，就需要添加 A 记录。
AAAA: 用来指定主机名(或域名)对应的 IPv6 地址记录。
CNAME: 如果需要将域名指向另一个域名，再由另一个域名提供 ip 地址，就需要添加 CNAME 记录。
MX: 如果需要设置邮箱，让邮箱能够收到邮件，需要添加 MX 记录。
NS: 域名服务器记录，如果需要把子域名交给其他 DNS 服务器解析，就需要添加 NS 记录。
SOA: SOA 这种记录是所有区域性文件中的强制性记录。它必须是一个文件中的第一个记录。
TXT: 可以写任何东西，长度限制为 255。绝大多数的 TXT记录是用来做 SPF 记录(反垃圾邮件)。
