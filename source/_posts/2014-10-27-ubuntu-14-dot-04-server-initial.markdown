---
layout: post
title: "ubuntu 14.04 server initial"
date: 2014-10-27 00:01:07 +0800
comments: true
categories: production
---

login as root
```
adduser deploy

echo 'deploy ALL=(ALL) NOPASSWD: ALL' |sudo tee -a /etc/sudoers

nano /etc/ssh/sshd_config 
# edit two lines
PermitRootLogin no
PasswordAuthentication no 

service ssh restart  # do not use , no use /etc/init.d/ssh  restart 

sudo apt-get update
sudo apt-get upgrade
```

in local
```
ssh-copy-id deploy@ip
```
