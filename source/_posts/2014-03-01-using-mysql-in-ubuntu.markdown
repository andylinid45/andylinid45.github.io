---
layout: post
title: "using mysql in ubuntu"
date: 2014-03-01 21:12:20 +0800
comments: true
categories: mysql
---

```
sudo apt-get install mysql-server
sudo apt-get install mysql-workbench
sudo apt-get install libmysqlclient-dev 


mysql -uroot -p
mysql> create database dbname character set utf8;
mysql> grant all privileges on *.* to 'app'@'localhost' identified by '******';

shell>mysql -u*** -p*** dbname< init.sql
```
