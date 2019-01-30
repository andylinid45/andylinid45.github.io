---
layout: post
title: "install docker in ubuntu 16.04"
date: 2019-01-30 16:54:02 +0800
comments: true
categories: [docker, ubuntu]
---

install docker
```
# install required packages
sudo apt-get install \
   apt-transport-https \
   ca-certificates \
   curl \
   software-properties-common

# get the GPG key for docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
   sudo apt-key add -

# validating the docker GPG key is installed
sudo apt-key fingerprint 0EBFCD88

# adding the docker repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# update apt-get libraries again
sudo apt-get update

# install docker
sudo apt-get install docker-ce

# validate install with version command
docker --version

# validating functionality by running a container
sudo docker run hello-world
```


install docker-compose
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
```

install portainer as a GUI manager
```
sudo docker image pull portainer/portainer
sudo docker image ls

sudo docker container run -d \
 -p 9000:9000 \
 -v /var/run/docker.sock:/var/run/docker.sock \
 portainer/portainer
```


useful command
```
sudo docker image pull hello-world
sudo docker image ls

sudo docker container ps
sudo docker container ls -a
sudo docker container rm --force $(docker container ls --all --quiet) # remove all
sudo docker container run --detach --name web-server --rm nginx
sudo docker container run --detach -it --name web-server1 -p 80:80 nginx
sudo docker container run -it ubuntu bash
sudo docker container exec web-server1 cat /etc/debian_version
sudo docker container stop web-server
sudo docker container inspect web-server # docker detail
sudo docker container inspect --format '{{json .State}}' web-server1 | jq
sudo docker container stats
sudo docker container stats web-server1 web-server2

sudo docker search ubuntu
sudo docker volume  ls
sudo docker system info
sudo docker network ls 

docker-compose start
docker-compose stop
docker-compose restart
docker-compose pause
docker-compose unpause
```