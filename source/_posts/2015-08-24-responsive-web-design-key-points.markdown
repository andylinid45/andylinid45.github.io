---
layout: post
title: "Responsive Web Design key points"
date: 2015-08-24 03:14:10 +0800
comments: true
categories: front-end
---

```
Using media queries to change the navigation or layout or resize an image 
Using the fluid grid layout
```

```
@media screen and ( max-width: 800px ) {
.small-menu { display:inline; }
.large-menu { display:none; }
}

@media screen and ( min-width: 801px ) and ( max-width: 1024px ) {
.small-menu { display:none; }.
.large-menu { display:inline; }
}

@media screen and ( min-width: 1025px ) {
.small-menu { display:none; }
.large-menu { display:inline; }
}
```