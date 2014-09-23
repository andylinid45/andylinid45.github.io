---
layout: post
title: "reinstall octopress"
date: 2014-04-14 23:22:20 +0800
comments: true
categories: octopress
---


```
git clone git://github.com/imathis/octopress.git octopress
cd octopress
bundle exec rake install

bundle exec rake setup_github_pages

bundle exec rake generate
bundle exec rake deploy
```

files need to backup
```
_posts
robots.txt
CNAME

octopress/source/_includes/custom/asides/tag_cloud.html
octopress/plugins/tag_cloud.rb

octopress/source/_includes/custom/navigation.html
```