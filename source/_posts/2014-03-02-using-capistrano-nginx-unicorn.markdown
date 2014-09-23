---
layout: post
title: "using capistrano-nginx-unicorn"
date: 2014-03-02 18:23:47 +0800
comments: true
categories: deploy
---



add gem 
```
gem 'capistrano-nginx-unicorn', require: false, group: :development
```


add this line in the END of deploy.rb
```
require 'capistrano-nginx-unicorn'
```


add this to deploy.rb
```
set :nginx_server_name, ""
set :unicorn_workers, 5
```


if " eval: bundle: not found", when running "cap deploy:start"
login your server and 
```
cd /var/www/your_app/current; bundle exec unicorn -D -c /var/www/your_app/shared/config/unicorn.rb -E production
```
