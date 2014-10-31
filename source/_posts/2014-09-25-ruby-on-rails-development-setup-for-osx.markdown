---
layout: post
title: "Ruby on Rails development setup for OSX"
date: 2014-09-25 02:13:09 +0800
comments: true
categories: [rails, osx, rbenv]
---

Install Command Line Tools
```
xcode-select --install
```

install brew
http://brew.sh/

install ruby
```
brew install rbenv ruby-build rbenv-gem-rehash
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby 2.1.3 and set it as the default version
rbenv install 2.1.3
rbenv global 2.1.3

ruby -v
# ruby 2.1.3
```

install rails
```
echo "gem: --no-document" >> ~/.gemrc
gem install rails
rbenv rehash
rails -v
```

install database
```
brew install sqlite3

brew install mysql

# To have launchd start mysql at login:
ln -sfv /usr/local/opt/mysql/*plist ~/Library/LaunchAgents

# Then to load mysql now:
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

# or start manual
brew services start mysql


brew install postgresql

# To have launchd start postgresql at login:
ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents

# Then to load postgresql now:
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

```

install git
```
brew install git
```


https://gorails.com/setup/osx/10.9-mavericks
http://www.createdbypete.com/articles/ruby-on-rails-development-setup-for-mac-osx/


