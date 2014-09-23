---
layout: post
title: "using 'backup' gem to backup ubuntu"
date: 2014-03-02 18:39:16 +0800
comments: true
categories: ubuntu
---



```
gem install backup

backup generate:model --trigger andy --storages=local --compressors=gzip --archives --no-splitter
```

run
```
backup perform --trigger andy --root-path "~/.backups/" --config_file '/home/andy/code/bash/backup/config.rb'
```


