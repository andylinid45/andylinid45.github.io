---
layout: post
title: "install Maven on ubuntu14"
date: 2015-08-20 19:12:51 +0800
comments: true
categories: java
---

Download maven
```
mv Downloads/apache-maven-3.3.3-bin.tar.gz /usr/local/
cd /usr/local/
sudo tar -xvf apache-maven-3.3.3-bin.tar.gz
sudo rm apache-maven-3.3.3-bin.tar.gz 
```

gedit ~/.bashrc # add at the end
```
export M2_HOME="/usr/local/apache-maven-3.3.3"
export PATH=${PATH}:${M2_HOME}/bin
```

Have a test
```
source .profile
mvn --version
```