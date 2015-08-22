---
layout: post
title: "using HDFS FS Shell"
date: 2015-08-22 11:00:09 +0800
comments: true
categories: [hadoop, big-data]
---


```
hadoop fs -mkdir /user
hadoop fs -mkdir /user/andy
hadoop fs -ls /user


echo "This is a test." >> test.txt
hadoop dfs -copyFromLocal test.txt /user/andy
hadoop dfs -ls /user/andy
hadoop dfs -cat /user/andy/test.txt


hadoop dfs -mkdir data
hadoop dfs -cp test.txt data
hadoop dfs -ls data
hadoop jar /opt/hadoop/hadoop-examples-1.0.4.jar wordcount data out
hadoop fs -ls out
hadoop fs -cat out/part-r-00000
hadoop jar /opt/hadoop/hadoop-examples-1.0.4.jar
```



