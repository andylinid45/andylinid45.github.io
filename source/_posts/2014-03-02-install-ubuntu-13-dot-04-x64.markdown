---
layout: post
title: "install ubuntu 13.04 x64"
date: 2014-03-02 20:28:07 +0800
comments: true
categories: ubuntu
---


install some tools
```
sudo apt-get purge ubuntuone-client unity-lens-shopping unity-webapps-common thunderbird gwibber indicator-messages


sudo apt-get install docky git xclip chromium-browser fcitx-googlepinyin ubuntu-restricted-extras stardict mypaint shutter curl openjdk-7-jdk  sshuttle preload indicator-multiload whois filezilla p7zip pidgin rar unrar

```

skype for Ubuntu 13.04
```
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update 
sudo apt-get install skype
```

xbacklight
```
sudo apt-get install xbacklight
xbacklight -set 80

http://askubuntu.com/questions/3841/desktop-doesnt-remember-brightness-settings-after-a-reboot
```

install chinese lang in system setting


echo 'source ~/code/bash/bash'  >> ~/.bashrc 


###need to do some config
- sublime 
- firefox addon

install smartgit from a deb file


install google chrome
```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
```


install word lib
```
wget -c http://hslinuxextra.googlecode.com/files/android.7z
sudo apt-get install p7zip-full
7z e android.7z
sudo mv /usr/share/ibus-pinyin/db/android.db /usr/share/ibus-pinyin/db/android.db.bak
sudo mv android.db /usr/share/ibus-pinyin/db/android.db
```
