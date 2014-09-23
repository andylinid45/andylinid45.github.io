---
layout: post
title: "rails command"
date: 2014-03-02 20:17:46 +0800
comments: true
categories: rails
---
```
rake db:drop RAILS_ENV=development
rake db:drop RAILS_ENV=production
rake db:drop 
rake db:create 
rake db:migrate 
rake db:seed
rake db:reset  #db:setup => db:create db:schema:load db:seed
rake db:test:load
rake db:test:prepare
rake routes

integer
string
datetime
text

rails generate scaffold user email:string name:string password:string
rails generate controller user info
rails generate model Site address:string  url:string
rails generate migration AddAvailable available:boolean
```