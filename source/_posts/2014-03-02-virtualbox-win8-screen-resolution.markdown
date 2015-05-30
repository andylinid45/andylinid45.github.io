---
layout: post
title: "virtualbox win7 screen resolution"
date: 2014-03-02 18:41:00 +0800
comments: true
categories: virtualbox
---

run (in ubuntu)
```
/usr/bin/VBoxManage setextradata win7 CustomVideoMode1 1366x768x32
```

(unnecessary in virtualbox 4.3 after installed Extension Pack)



only run (in OSX)
```
vboxmanage setextradata "win7" "CustomVideoMode1" "1440x900x32"
```