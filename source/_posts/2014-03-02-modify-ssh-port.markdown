---
layout: post
title: "modify ssh port"
date: 2014-03-02 16:01:21 +0800
comments: true
categories: ssh
---


```
sudo nano /etc/ssh/sshd_config

#modify the port

service ssh restart
```