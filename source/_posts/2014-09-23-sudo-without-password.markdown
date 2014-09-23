---
layout: post
title: "sudo without password in osx and ubuntu"
date: 2014-09-23 10:10:16 +0800
comments: true
categories: [ubuntu, osx]
---
```
echo 'account_name ALL=(ALL) NOPASSWD: ALL' |sudo tee -a /etc/sudoers
```