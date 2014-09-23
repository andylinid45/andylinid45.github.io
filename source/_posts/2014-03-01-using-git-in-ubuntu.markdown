---
layout: post
title: "using git in ubuntu"
date: 2014-03-01 21:01:58 +0800
comments: true
categories: git
---

install
```
sudo apt-get install git

git config --global user.name "Andy"
git config --global user.email "Andy"
git config --global color.ui "auto"
git config core.quotepath false  #for chinese char
git config core.filemode false  #ignore chmod to file change


ssh-keygen -t rsa

xclip -sel clip < ~/.ssh/id_rsa.pub

cat ~/.ssh/id_rsa.pub
#copy to https://github.com/account/ssh
#copy to https://bitbucket.org/account/


#testing ssh config in this server
ssh -T git@github.com
ssh -T git@bitbucket.org
```


tag
```
git tag #list tags
git tag before_devise #tag a tag
git tag -a v1.4 -m 'version 1.4' 
```

show history
```
git show SHA1:/path/to/file
```



mistake rm a file 
```
git reset HEAD file
git checkout file
```



git add all
```
git add -A
```

