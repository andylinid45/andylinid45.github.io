---
layout: post
title: "setup octopress 2.0 environment using docker in ubuntu 23.10"
date: 2024-03-17 01:07:17 +0800
comments: true
categories: octopress
---
install docker
```
snap install docker
```

nano .gitconfig
```
[user]
    name = Andy
    email = you@example.com
[push]
    default = simple
```

nano Dockerfile
```
FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get -y install locales locales-all tzdata sudo gcc make git nano less curl ruby ruby-dev python2.7 python-pip python-dev
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV TZ=Asia/Shanghai
WORKDIR /root
ADD .gitconfig /root/.gitconfig
ADD Gemfile /root/Gemfile
# prevent bundle install twice
ADD Gemfile.lock /root/Gemfile.lock
RUN gem install bundler -v '1.15.4'
RUN bundle install
WORKDIR /work
```

build and run
```
docker build . -t ubuntu_octopress
docker run -it ubuntu_octopress /bin/bash
```

using volume to save the code
```
docker volume create octopress-volume
docker run --mount source=octopress-volume,target=/work -it ubuntu_octopress /bin/bash
```

useful command
```
docker image ls #ls images
docker image rm -f IMAGE_ID # remove image
docker volume ls
docker volume rm VOLUME_NAME
```
