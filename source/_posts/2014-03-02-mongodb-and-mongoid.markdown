---
layout: post
title: "mongodb and mongoid"
date: 2014-03-02 16:36:29 +0800
comments: true
categories: mongodb
---


```
sudo apt-get install mongodb
```

turn off journal and turn on rest in you dev
```
sudo nano /etc/mongodb.conf 

journal = false
rest = true
```


add mongodb to startup
```
sudo update-rc.d mongodb  defaults
```

run
```
mongo

db.test.save( { a: 1 } )
db.test.find()

show collections
db.abc.count()
```

if you can not start mongodb sometime
```
tail /var/log/mongodb/mongodb.log -n 100

sudo rm /var/lib/mongodb/mongod.lock

sudo -u mongodb mongod -f /etc/mongodb.conf --repair
```


check mongodb work
```
http://localhost:28017/
```

```
http://docs.mongodb.org/manual/
http://mongoid.org/en/mongoid/
http://www.precog.com/editions/precog-for-mongodb
https://github.com/bobthecow/genghis
https://github.com/zuk/DrowsyDromedary
```




###mongoid

Gemfile
```
gem 'mongoid'
gem 'bson_ext'
```

```
rails g mongoid:config
```

The Mongoid Demo Application 
```
https://github.com/mongoid/echo
```


create indexes for db
```
rake db:mongoid:create_indexes
rake db:seed
```
