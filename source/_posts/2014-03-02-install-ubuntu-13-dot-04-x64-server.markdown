---
layout: post
title: "install ubuntu 13.04 x64 server"
date: 2014-03-02 20:41:23 +0800
comments: true
categories: ubuntu
---


```
sudo apt-get update
sudo apt-get upgrade
```

add a new user
```
adduser newuser
```

sudo /usr/sbin/visudo
```
# User privilege specification
root    ALL=(ALL:ALL) ALL
newuser    ALL=(ALL:ALL) ALL
```
Press ‘cntrl x’ to exit the file and then ‘Y’ to save it. 


server install
```
sudo apt-get install git zip nginx
```


need to config
```
hostname need to config
ssh port 
ssh without password
transmission
```

