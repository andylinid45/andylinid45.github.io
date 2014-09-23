---
layout: post
title: "spinejs and rails"
date: 2014-03-02 18:07:53 +0800
comments: true
categories: rails
---




create a app
```
rails new demo

rails g scaffold post title:string content:string

rake db:migrate
```


Gemfile add spine support
```
gem 'spine-rails'
gem 'eco'
```


```
rails g spine:new

rails g spine:model post title content
```

check localhost:3000

in chrome console
```
#add a post
var post = App.Post.create({title: 'hi', content: 't'});

#get a post
App.Post.fetch();
App.Post.first().content
App.Post.first().destroy()
```


spine scaffold
```
rails g spine:scaffold Post title content
```

remove this line in post controllers js
```
$ = jQuery.sub()
```

done, you can now use spine mvc as a ajax front end
