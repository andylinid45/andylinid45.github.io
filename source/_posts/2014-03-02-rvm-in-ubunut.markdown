---
layout: post
title: "rvm in ubunut"
date: 2014-03-02 16:25:48 +0800
comments: true
categories: rvm
---



install rvm
```
curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm requirements
```


usefull script
```
rvm install 1.9.3
rvm use 1.9.3 --default
rvm gemset create 3.2.3
rvm gemset use 3.2.3 
rvm use 1.9.3@3.2.3 --default  
gem sources --remove http://rubygems.org/
gem sources -a http://ruby.taobao.org/
gem install rails -v=3.2.12

rvm list
rvm gemset list
```


remove rvm
```
rvm implode
```


if you can not find rvm in terminal
gedit  .bashrc
and add 
```
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi
```

no rdoc
```
echo -e "install: --no-rdoc --no-ri \nupdate: --no-rdoc --no-ri" >> ~/.gemrc
```

do not use .rvmrc file any more, go to the project folder
```
echo "ruby-1.9.3-p429" >> .ruby-version
echo "myapp" >> .ruby-gemset
```

