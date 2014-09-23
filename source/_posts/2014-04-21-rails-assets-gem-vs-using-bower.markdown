---
layout: post
title: "rails assets gem vs bower"
date: 2014-04-21 01:26:18 +0800
comments: true
categories: technical-review
---


There are many ways to manage assets in rails.

##let us compare these two ways.
###1)use rails assets gem. https://rails-assets.org/

Rails Assets is the frictionless proxy between Bundler and Bower.

it need to add a gem source to your gem file
```
source 'https://rails-assets.org'
```

and add assets like this to gem file
```
gem 'rails-assets-BOWER_PACKAGE_NAME'
```

###2)use bower directly


###use bower directly win!

I think rails-assets adds an unnecessary layer.
I want to make things simple.


PS: there is a gem called 'bower-rails', helping you use bower. 

It provides a DSL configuration in Bowerfile at the project's root similar to Bundler.

But I think this gem also add an unnecessary layer. so DON'T use this gem! It just wastes your time!


