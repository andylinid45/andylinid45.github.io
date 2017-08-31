---
layout: post
title: "install tensorflow in ubuntu 16.04LTS"
date: 2017-08-31 17:41:08 +0800
comments: true
categories: [tensorflow, ai]
---

```
sudo apt-get install python3-pip python3-dev python3-virtualenv

sudo mkdir ~/env
virtualenv --system-site-packages ~/env/tensorflow
```

add to ~/.bashrc
```
alias tensorflow="source~/env/tensorflow/bin/activate"
```

go to https://storage.googleapis.com/tensorflow/  to pick up a version (do not install gpu version at first)
```
tensorflow
pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.3.0-cp27-none-linux_x86_64.whl
pip list
```
