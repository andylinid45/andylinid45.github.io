---
layout: post
title: "make your own gem"
date: 2014-04-11 12:16:16 +0800
comments: true
categories: gem
---

create the gem
```
bundle gem my_gem
```

edit my_gem.rb
```
module MyGem
  def self.hi
    puts "Hello world!"
  end
end
```

build
```
gem build my_gem.gemspec
```

install
```
gem install --local ./my_gem-0.0.1.gem
```

run it 
```
irb
irb(main):001:0> require 'my_gem'
=> true
irb(main):002:0> MyGem.hi
Hello world!
=> nil
```

Publishing your gem
```
gem push xxx.gem
```