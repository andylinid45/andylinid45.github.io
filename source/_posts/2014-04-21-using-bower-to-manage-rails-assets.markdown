---
layout: post
title: "using bower to manage rails assets"
date: 2014-04-21 00:02:56 +0800
comments: true
categories: bower
---

```
cd project_root
echo '{ "directory": "vendor/assets/components" }' > .bowerrc
bower init #just use the default setting is ok

bower install angular
bower install sass-bootstrap
```

in app/assets/javascripts/application.js add:
```
//= require angular/angular
```

in app/assets/stylesheets/application.css add:
```
*= require sass-bootstrap/lib/bootstrap
```