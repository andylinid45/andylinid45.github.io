---
layout: post
title: "disable ipv6 in ubuntu 21.04"
date: 2022-05-10 04:54:20 +0800
comments: true
categories: [production, ubuntu]
---

sudo nano /etc/sysctl.conf
add in the end of the file
```
net.ipv6.conf.all.disable_ipv6=1
net.ipv6.conf.default.disable_ipv6=1
net.ipv6.conf.lo.disable_ipv6=1
```

```
sudo sysctl -p
# check it 
ip a
```

sudo nano /etc/rc.local
create a new file
```
#!/bin/bash
# /etc/rc.local

/etc/sysctl.d
/etc/init.d/procps restart

exit 0
```

```
sudo chmod 755 /etc/rc.local

sudo reboot
```

https://itsfoss.com/disable-ipv6-ubuntu-linux/