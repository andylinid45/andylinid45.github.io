---
layout: post
title: "hourly cron job in ubuntu"
date: 2018-09-03 15:34:13 +0800
comments: true
categories: [ubuntu]
---


```
cd /etc/cron.hourly
sudo nano test1
# the job script start with #!/bin/bash
sudo chmod +x test1

# hava a test
run-parts --report --test /etc/cron.hourly
run-parts --report /etc/cron.hourly
```


```
https://askubuntu.com/questions/2368/how-do-i-set-up-a-cron-job
https://help.ubuntu.com/community/CronHowto
https://askubuntu.com/questions/7676/function-of-etc-cron-hourly
```
