---
layout: post
title: "write a executable gem"
date: 2014-04-11 15:05:49 +0800
comments: true
categories: gem
---

```
cd my_gem
mkdir bin
touch bin/my_gem
chmod +x bin/my_gem
```

edit my_gem
```
#!/usr/bin/env ruby

require 'my_gem'

MyGem.hi
```

edit my_gem.gemspec
```
spec.executables = ["my_gem"]
```
or commit change to git, so you need not change the gemspec file

build and install
```
gem build my_gem.gemspec
gem install --local ./my_gem-0.0.1.gem
```

restart terminal and run
```
my_gem
```