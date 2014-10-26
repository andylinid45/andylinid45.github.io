---
layout: post
title: "dot files in osx"
date: 2014-10-21 20:45:33 +0800
comments: true
categories: osx
---


```
mkdir ~/.ssh
sudo cp /Users/andy/.ssh/id_rsa  ~/.ssh
sudo cp /Users/andy/.ssh/id_rsa.pub  ~/.ssh

sudo cp /Users/andy/.gitconfig ~
sudo cp /Users/andy/.gitignore ~

echo "
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
export PS1='\u@\h:\w $'
export CLICOLOR=1
export GREP_OPTIONS='--color=auto' " >> ~/.bash_profile

sudo chown  -R new_user  ~/.ssh
sudo chown new_user ~/.gitconfig 
sudo chown new_user ~/.gitignore
```


