---
layout: post
title: "nginx and unicorn"
date: 2014-03-02 18:44:27 +0800
comments: true
categories: deploy
---



nginx
```
sudo /etc/init.d/nginx start
sudo /etc/init.d/nginx restart
```

config files
```
/etc/nginx/sites-enabled/
/etc/nginx/sites-available/ 
```
```
/usr/share/doc/nginx-doc/examples/
```

logs 
```
more /var/log/nginx/access.log
more /var/log/nginx/error.log
```

default site
```
ls /usr/share/nginx/www
```

```
http://wiki.nginx.org/Pitfalls
http://wiki.nginx.org/QuickStart
http://wiki.nginx.org/Configuration
```




### unicorn
```
gem "unicorn"
```
run 
```
unicorn -c unicorn.rb -E production 
```
```
http://unicorn.bogomips.org/unicorn_1.html
http://unicorn.bogomips.org/Unicorn/Configurator.html
```