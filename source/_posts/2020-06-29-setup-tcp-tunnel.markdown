---
layout: post
title: "setup TCP tunnel"
date: 2020-06-29 05:52:01 +0800
comments: true
categories: production
---

Server
```
sudo snap install go --classic
go get -v github.com/jpillora/chisel

crontab -e
@reboot /root/go/bin/chisel server -p 9312 --socks5 --pid -v --key supperkey --auth user:pass &
# change your supperkey, user and pass
```

Client
```
sudo snap install go --classic
go get -v github.com/jpillora/chisel
~/go/bin/chisel client -fingerprint 12:34:56 --auth user:pass vps:9312 socks
# change your fingerprint, user and pass

#Point your SOCKS5 clients (e.g. OS/Browser) to:  localhost:1080
```

socks5.sh in ubuntu
```
gsettings set org.gnome.system.proxy mode 'manual'
gsettings set org.gnome.system.proxy.socks host 'localhost'
gsettings set org.gnome.system.proxy.socks port 1080
gsettings set org.gnome.system.proxy ignore-hosts "['localhost', '127.0.0.0/8', '::1']"

finish() {
  echo '  Trapped Ctrl-C, socks5 down!'
  gsettings set  org.gnome.system.proxy mode 'none'
}

trap finish EXIT

~/go/bin/chisel client -fingerprint 12:34:56 --auth user:pass -v vps:9312 socks
```


