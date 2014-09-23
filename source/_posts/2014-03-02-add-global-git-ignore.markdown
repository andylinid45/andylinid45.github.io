---
layout: post
title: "add global git ignore"
date: 2014-03-02 18:14:02 +0800
comments: true
categories: git
---



```
git config --global core.excludesfile ~/.gitignore

echo .tags  >> ~/.gitignore
echo .tags_sorted_by_file  >> ~/.gitignore
echo .gemtags  >> ~/.gitignore
echo *.sublime-project  >> ~/.gitignore
echo *.sublime-workspace  >> ~/.gitignore
echo andy_doc  >> ~/.gitignore
echo andy_pass  >> ~/.gitignore
```