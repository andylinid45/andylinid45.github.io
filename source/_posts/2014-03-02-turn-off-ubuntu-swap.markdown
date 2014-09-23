---
layout: post
title: "turn off ubuntu swap"
date: 2014-03-02 18:12:33 +0800
comments: true
categories: ubuntu
---


sudo gedit /etc/sysctl.conf
change or add this line
```
vm.swappiness=0
```

Reboot for the change to take effect


http://askubuntu.com/questions/103242/is-it-safe-to-turn-swap-off-permanently
