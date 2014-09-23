---
layout: post
title: "fixed failed to fetch from registry: bower, in ubuntu 13"
date: 2014-04-20 16:19:57 +0800
comments: true
categories: bower
---

```
sudo apt-get purge nodejs npm

sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get install nodejs
sudo npm install -g bower
```