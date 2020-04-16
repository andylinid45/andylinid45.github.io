---
layout: post
title: "setup wireguard"
date: 2020-04-17 01:23:51 +0800
comments: true
categories: production
---

```
#install wireguard server in ubuntu 18
https://github.com/l-n-s/wireguard-install
```

```
#client side config
#copy config file to /etc/wireguard/mywg.conf
sudo wg-quick up mywg  
sudo wg show
#sudo wg-quick down mywg
```

```
#wireguard is faster than openvpn
https://github.com/pirate/wireguard-docs
```