---
layout: post
title: "fixed gem install linecache19"
date: 2014-03-02 15:34:29 +0800
comments: true
categories: rails
---


when 
```
gem install linecache19 --backtrace
Building native extensions.  This could take a while...
```
and can not go farther

try:
```
gem install ruby-debug19 -- --with-ruby-include=/home/andy/.rvm/src/ruby-1.9.2-p320/
```
and you can go through
