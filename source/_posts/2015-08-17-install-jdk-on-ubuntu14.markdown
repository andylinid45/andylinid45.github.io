---
layout: post
title: "install jdk on ubuntu14"
date: 2015-08-17 14:40:35 +0800
comments: true
categories: java
---

If you have some problmes with installing jdk using
```
sudo apt-get install default-jdk
```

Have a try with this

Download jdk from Oracle website.
```
sudo mkdir /usr/lib/jvm
sudo tar zxvf ./jdk-8u51-linux-x64.tar.gz  -C /usr/lib/jvm
```
  

gedit ~/.bashrc # add at the end
```
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_51
export JRE_HOME=${JAVA_HOME}/jre 
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH
```

Have a test
```
source ~/.bashrc
java -version
```





