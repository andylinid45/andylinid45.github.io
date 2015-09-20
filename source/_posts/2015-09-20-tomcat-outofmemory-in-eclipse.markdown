---
layout: post
title: "tomcat OutOfMemory in eclipse"
date: 2015-09-20 15:51:23 +0800
comments: true
categories: java
---

```
add -XX:MaxPermSize=256m to Tomcat in Eclipse: Server > Open Launch Configuration > Arguments
```

http://stackoverflow.com/questions/3179141/java-lang-outofmemoryerror-permgen-space-in-tomcat-with-eclipse

http://www.mkyong.com/eclipse/eclipse-tomcat-java-lang-outofmemoryerror-java-heap-space/