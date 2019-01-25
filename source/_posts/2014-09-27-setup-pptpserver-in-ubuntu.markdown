---
layout: post
title: "setup PPTPServer in ubuntu"
date: 2014-09-27 22:19:50 +0800
comments: true
categories: [ubuntu, production]
---

all the same, tested with Ubuntu 14.4 Server
```
https://help.ubuntu.com/community/PPTPServer
```

debuging, both in server side and client side
```
sudo tail -f /var/log/syslog
```

in client side
```
Gateway : You ip address of pptp server Or FDDN ( Fully Qualified Domain Name )
User Name
Password
Click on Advanced
Click on " Use point to point encryption " Click OK & Save
```