---
layout: post
title: "fixing eclipse can not find java on ubuntu"
date: 2015-08-22 11:10:58 +0800
comments: true
categories: [java, ubuntu]
---

gedit ECLIPSE_HOME/eclipse.ini # add below before '-vmargs'
```
-vm 
/usr/lib/jvm/jdk1.8.0_51/bin/java
```

http://wiki.eclipse.org/Eclipse.ini