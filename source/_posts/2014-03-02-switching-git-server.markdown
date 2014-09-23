---
layout: post
title: "switching git server"
date: 2014-03-02 18:34:29 +0800
comments: true
categories: git
---



```
git remote -v

git branch

git remote add bitbucket git@bitbucket.org:<<username>>/<<repo>>

git remote rm origin

git remote rename bitbucket origin

git push -u origin --all
```