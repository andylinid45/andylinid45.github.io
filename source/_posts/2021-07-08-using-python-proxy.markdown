---
layout: post
title: "using python proxy"
date: 2021-07-08 13:56:38 +0800
comments: true
categories: [production, tools]
---

```
# setup client in windows 10
winget install python
#reopen terminal
pip3 install pproxy
pproxy -r socks5://serverIp:18080#youruser:yourpass --sys -vv
```

```
# setup server in ubuntu 21.04
pip3 install pproxy
useradd --no-create-home -s /usr/sbin/nologin pproxy

cd /etc/init.d/
wget https://raw.githubusercontent.com/fhd/init-script-template/master/template
mv template my-proxy
chmod +x my-proxy
nano my-proxy
```

```
# nano my-proxy
dir="/usr/local/bin"
cmd="pproxy -l socks5://:18080#youruser:yourpass -v"
user="pproxy"
```

```
/etc/init.d/my-proxy start
sudo update-rc.d my-proxy defaults
```

```
https://github.com/qwj/python-proxy
https://github.com/fhd/init-script-template
https://stackoverflow.com/questions/7221757/run-automatically-program-on-startup-under-linux-ubuntu
```
