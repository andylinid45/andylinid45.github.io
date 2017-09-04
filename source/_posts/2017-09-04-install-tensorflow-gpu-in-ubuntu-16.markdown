---
layout: post
title: "install tensorflow gpu in ubuntu 16"
date: 2017-09-04 17:35:28 +0800
comments: true
categories: [tensorflow, ai]
---

download cuda and install
```
#https://developer.nvidia.com/cuda-downloads
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda
```

download cuDNN and install(cuDNN version depends on your tensorflow version, cuDNN v6 if on TF v1.3)
```
#https://developer.nvidia.com/cudnn
sudo dpkg -i libcudnn5_5.1.10-1+cuda8.0_amd64.deb
sudo dpkg -i libcudnn5-dev_5.1.10-1+cuda8.0_amd64.deb
```

```
sudo apt-get install libcupti-dev
pip install 'tensorflow-gpu==1.3.0'
```

if "libEGL.so.1 is not a symbolic link", and run
```
sudo mv /usr/lib/nvidia-375/libEGL.so.1 /usr/lib/nvidia-375/libEGL.so.1.org
sudo mv /usr/lib32/nvidia-375/libEGL.so.1 /usr/lib32/nvidia-375/libEGL.so.1.org
sudo ln -s /usr/lib/nvidia-375/libEGL.so.375.39 /usr/lib/nvidia-375/libEGL.so.1
sudo ln -s /usr/lib32/nvidia-375/libEGL.so.375.39 /usr/lib32/nvidia-375/libEGL.so.1
```

verify your installation
```
tensorflow # if you are using virtualenv
python
import tensorflow as tf
hello = tf.constant('Hello TensorFlow!')
sess = tf.Session()
print(sess.run(hello))
```