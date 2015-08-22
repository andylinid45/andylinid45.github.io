---
layout: post
title: "how to execute a ruby script in terminal using shebang"
date: 2015-08-22 12:14:08 +0800
comments: true
categories: [ruby, ubuntu]
---

```
sudo apt-get install ruby
```

which ruby
```
/usr/bin/ruby
```

please the shebang line on the first line of your script
```
#!/usr/bin/ruby -w
```

```
chmod +x your_script.rb
./your_script.rb
```