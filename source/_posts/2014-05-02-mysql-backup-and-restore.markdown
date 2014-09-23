---
layout: post
title: "mysql backup and restore"
date: 2014-05-02 17:44:37 +0800
comments: true
categories: mysql
---

backup
```
mysqldump -u*** -p*** dbname > backup`date +%F`.sql
```

just some tables
```
mysqldump -u*** -p*** dbname table1 table2> backup`date +%F`.sql
```

restore
```
mysql -u*** -p*** dbname < data.sql
```