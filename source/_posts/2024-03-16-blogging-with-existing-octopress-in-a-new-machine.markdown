---
layout: post
title: "blogging with existing octopress in a new machine"
date: 2024-03-16 15:11:53 +0800
comments: true
categories: octopress
---

```
git clone -b source https://github.com/YOUR_NAME/YOUR_NAME.github.io.git octopress
cd octopress
git clone https://github.com/YOUR_NAME/YOUR_NAME.github.io.git _deploy

bundle exec rake generate
bundle exec rake deploy
```
