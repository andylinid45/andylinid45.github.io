---
layout: post
title: "using sublime text 2 as ruby on rails ide"
date: 2014-03-02 16:14:09 +0800
comments: true
categories: tools
---


download sublimetext
```
http://www.sublimetext.com/2
```
```
tar xf Sublime\ Text\ 2.0.1\ x64.tar.bz2
sudo mkdir /opt
sudo mv Sublime\ Text\ 2 /opt/
sudo ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime
```

sudo gedit /usr/share/applications/sublime.desktop
```
[Desktop Entry]
Version=1.0
Name=Sublime Text 2
# Only KDE 4 seems to use GenericName, so we reuse the KDE strings.
# From Ubuntu's language-pack-kde-XX-base packages, version 9.04-20090413.
GenericName=Text Editor

Exec=sublime
Terminal=false
Icon=/opt/Sublime Text 2/Icon/48x48/sublime_text.png
Type=Application
Categories=TextEditor;IDE;Development
X-Ayatana-Desktop-Shortcuts=NewWindow

[NewWindow Shortcut Group]
Name=New Window
Exec=sublime -n
TargetEnvironment=Unity
```


And replace all occurrences of gedit.desktop with sublime.desktop.
```
sudo gedit /usr/share/applications/defaults.list
```



install Sublime Package Control
```
http://wbond.net/sublime_packages/package_control/installation
```

ctrl+shift+p
```
install

ctags
RubyFormat # no  BeautifyRuby
```


need install ctags 
```
sudo apt-get install ctags
```

go to project root
```
bundle show --paths | xargs ctags -R -f .gemtags --exclude=*/test/* 
ctags -R -f .tags --exclude=.git --exclude=log --exclude=tmp --exclude=public --exclude=db
```



xml format in ubunut
```
sudo apt-get install tidy
```
https://gist.github.com/coldnebo/1138554



js  json format
```
https://github.com/jdc0589/JsFormat
```


html format : ctrl+shift+h
hide/ collapsible folder pane  ctrl+K, ctrl+B

need to backup user key binding


http://stackoverflow.com/questions/8839753/formatting-html-code-using-sublime-text-2


- format for html 
- format for ruby
- ctags

{"keys": ["ctrl+shift+w"], "command": "toggle_setting", "args": {"setting": "word_wrap"} }


in osx
```
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```