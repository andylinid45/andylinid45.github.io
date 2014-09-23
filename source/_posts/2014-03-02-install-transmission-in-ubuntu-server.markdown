---
layout: post
title: "install transmission in ubuntu server"
date: 2014-03-02 20:46:16 +0800
comments: true
categories: ubuntu
---



```
sudo apt-get install transmission-daemon

sudo service transmission-daemon stop

# modify setting after stop the service
sudo nano /etc/transmission-daemon/settings.json

sudo service transmission-daemon start

```
