---
layout: post
title: "config hadoop for pseudo distributed mode"
date: 2015-08-21 17:17:03 +0800
comments: true
categories: [hadoop, big-data]
---

install ssh
```
sudo apt-get install openssh-client=1:6.6p1-2ubuntu1
sudo apt-get install openssh-server
ssh-keygen
cp .ssh/id_rsa.pub .ssh/authorized_keys
ssh localhost
```


sudo nano /opt/hadoop/conf/core-site.xml
```
<property>
<name>fs.default.name</name>
<value>hdfs://localhost:9000</value>
</property>

<property>
<name>hadoop.tmp.dir</name>
<value>/var/lib/hadoop</value>
</property>
```


sudo nano /opt/hadoop/conf/hdfs-site.xml
```
<property>
<name>dfs.replication</name>
<value>1</value>
</property>
```

sudo nano /opt/hadoop/conf/mapred-site.xml
```
<property>
<name>mapred.job.tracker</name>
<value>localhost:9001</value>
</property>
```

make temp dir for hadoop
```
sudo mkdir /var/lib/hadoop
sudo chmod 777 /var/lib/hadoop
```

make log dir for hadoop
```
sudo mkdir /opt/hadoop/logs 
sudo chmod 777 /opt/hadoop/logs/
```

run just for the first time to format file system
```
hadoop namenode -format
```

start it
```
start-dfs.sh
start-mapred.sh
hadoop fs -ls /  # have a test
```

web UI for it
```
http://localhost:50030/
http://localhost:50070/
```

