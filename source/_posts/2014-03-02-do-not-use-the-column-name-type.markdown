---
layout: post
title: "do not use the column name 'type'"
date: 2014-03-02 18:35:56 +0800
comments: true
categories: rails
---

or you need to manually set the column name to something pointless:

```
self.inheritance_column = :_type_disabled
```