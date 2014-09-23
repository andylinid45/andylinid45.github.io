---
layout: post
title: "using postgresql in ubuntu"
date: 2014-03-02 15:40:07 +0800
comments: true
categories: postgresql
---


install
```
sudo apt-get install postgresql
sudo apt-get install libpq-dev
sudo apt-get install postgresql-client
sudo apt-get install pgadmin3
psql --version #or psql -V
```

connect to the default PostgreSQL template database
```
sudo -u postgres psql template1
ALTER USER postgres with encrypted password 'your_password'; #and then, you can ues pgadmin3 to connection you db
```

use MD5 authentication with the postgres user
after the line #Database administrative login by Unix domain socket
replace the 'peer' by 'md5'
```
sudo gedit /etc/postgresql/9.1/main/pg_hba.conf

local all postgres md5

sudo /etc/init.d/postgresql restart
```

create a database
```
sudo -u postgres createdb mydb
```

useful script
```
pg_dump dbname > outfile
sudo -u postgres psql dbname < infile
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d db_name test.dump
```

config files in
```
/etc/postgresql/9.1/main
```


https://help.ubuntu.com/12.04/serverguide/postgresql.html 
https://help.ubuntu.com/community/PostgreSQL



[updated]
install pg9.2 in ubuntu13

add a source
```
deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main 
```

```
sudo apt-get update
sudo apt-get install postgresql-9.2
```
