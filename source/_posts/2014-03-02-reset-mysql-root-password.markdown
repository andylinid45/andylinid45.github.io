---
layout: post
title: "reset mysql root password"
date: 2014-03-02 15:36:36 +0800
comments: true
categories: mysql
---

```
sudo /etc/init.d/mysql stop
sudo mysqld_safe --user=mysql --skip-grant-tables --skip-networking &
mysql -u root mysql

mysql> UPDATE mysql.user SET Password=PASSWORD('YOUR-NEW-MYSQL-PASSWORD') WHERE User='root';
mysql> FLUSH PRIVILEGES;
mysql> quit

sudo /etc/init.d/mysql restart

mysql -u root -p
Enter password:

```