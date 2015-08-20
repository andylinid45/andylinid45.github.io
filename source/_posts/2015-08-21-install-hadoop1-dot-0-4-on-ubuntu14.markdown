---
layout: post
title: "install hadoop1.0.4 on ubuntu14"
date: 2015-08-21 16:33:46 +0800
comments: true
categories: [hadoop, big-data]
---

Download hadoop
```
sudo cp hadoop-1.0.4-bin.tar.gz /opt
cd /opt
sudo tar -vxf hadoop-1.0.4-bin.tar.gz
sudo rm hadoop-1.0.4-bin.tar.gz
sudo mv hadoop-1.0.4/ hadoop
```

sudo gedit /opt/hadoop/conf/hadoop-env.sh  #modify java home
```
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_51
```


gedit ~/.bashrc # do not use 'HADOOP_HOME'
```
export HADOOP_PREFIX=/opt/hadoop
export PATH=$HADOOP_PREFIX/bin:$PATH
```

have a test
```
hadoop jar /opt/hadoop/hadoop-examples-1.0.4.jar pi 4 1000 
```



