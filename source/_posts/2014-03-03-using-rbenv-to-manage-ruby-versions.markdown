---
layout: post
title: "using rbenv to manage ruby versions instead of rvm"
date: 2014-03-03 19:48:48 +0800
comments: true
categories: rbenv
---

remove rvm first
```
rvm implode
```

install rbenv in ubuntu
```
# use brew to install rbenv in osx
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc  # .bash_profile in osx
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc # .bash_profile in osx
exec $SHELL

sudo apt-get -y install curl git-core python-software-properties build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libcurl4-openssl-dev

rbenv install 2.1.0
rbenv global 2.1.0
ruby -v

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
```


go to a exist project
```
rbenv local 2.1.0  # create the .ruby-version file

gem sources --remove https://rubygems.org/
gem sources -a http://ruby.taobao.org/

gem install bundler # if you do not have bundler installed before

rbenv rehash #Run this command after you install a new version of Ruby, or install a gem that provides commands

bundle
```

fixed You Have Already Activated X but Your Gemfile Requires Y
```
bundle exec ***
```

```
http://gorails.com/setup/ubuntu/13.10
https://github.com/ianheggie/rbenv-binstubs
```