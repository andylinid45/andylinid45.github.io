---
layout: post
title: "using capistrano"
date: 2014-03-02 18:21:00 +0800
comments: true
categories: deploy
---



add gem
```
gem "capistrano"
```

cd project folder
```
capify .
```

setup need to run in the first time
```
cap deploy:setup
```

next time, just need to run
```
cap deploy
```

cap your_task
cap -T
cap -vT


this need to config in deploy.rb
```
set :application, ""
set :repository,  ""
set :scm, :git
set :deploy_to, "/var/www/#{application}"
set :user, ""
set :port, 
server "your_server.com", :app, :web
```

https://github.com/capistrano/capistrano/wiki/2.x-Getting-Started
https://github.com/capistrano/capistrano/wiki/2.x-From-The-Beginning
