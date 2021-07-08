---
layout: post
title: "setup wireguard"
date: 2020-04-17 01:23:51 +0800
comments: true
categories: production
---

```
#install wireguard server in ubuntu 21  (new way)
https://github.com/angristan/wireguard-install

curl -O https://raw.githubusercontent.com/angristan/wireguard-install/master/wireguard-install.sh
chmod +x wireguard-install.sh
./wireguard-install.sh
```

```
#install wireguard server in ubuntu 18
https://github.com/l-n-s/wireguard-install

wget https://raw.githubusercontent.com/l-n-s/wireguard-install/master/wireguard-install.sh -O wireguard-install.sh
bash wireguard-install.sh
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