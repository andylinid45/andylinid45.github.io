---
layout: post
title: "Angularjs vs Emberjs vs Backbonejs"
date: 2014-04-23 17:12:15 +0800
comments: true
categories: [Angularjs, technical-review]
---

Many blog post compare these three javascript libraries. But I dont think they get the point.  

###1) Two way data binding
Backbonejs does not support two way data bingding native. (You can use a plugin like backbone.stickit http://nytimes.github.io/backbone.stickit/)  

Why two way data binding is so important? Because it help you auto update the view in most cases. It helps you minimize your code.


###2) Dependency injection using directive
Emberjs does not support DI(Dependency injection), so you need to write more code such as 
```
Todos.EditTodoView = Ember.TextField.extend({  ...

Todos.TodoController = Ember.ObjectController.extend({ ...
```

If you use DI, then you code is plain old javascritp object. and easy to test.  


Because of these two main reasons, Angularjs can help you minimize your code.   
Checkout http://todomvc.com/ , a web site helping you select a javascript framework.   

* https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/backbone  
* https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/emberjs  
* https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/angularjs  

We can see how many line of code need these three javascript framework to make a same app.  

so, Angularjs win!  

