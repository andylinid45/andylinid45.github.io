---
layout: post
title: "update kernel in ubuntu with command line"
date: 2017-09-04 10:59:48 +0800
comments: true
categories: [ubuntu]
---

check the kernel version
```
uname -r
```

```
sudo apt-get update
apt-cache search linux-image
```

pick up a version, 4.11.0-14 for example
```
sudo apt-get install linux-image-4.11.0-14-generic linux-image-extra-4.11.0-14-generic  linux-headers-4.11.0-14-generic 
```

need reboot after installed!


remove the old kernels
```
sudo apt-get autoremove
```

check the result
```
uname -r
```