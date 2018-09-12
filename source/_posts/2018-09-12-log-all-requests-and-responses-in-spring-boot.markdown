---
layout: post
title: "Log all requests and responses in Spring Boot"
date: 2018-09-12 16:10:34 +0800
comments: true
categories: [java, spring]
---

add pom.xml
```
<dependency>
	<groupId>org.zalando</groupId>
	<artifactId>logbook-spring-boot-starter</artifactId>
	<version>1.5.0</version>
</dependency>
```

add to application.yml
```
logging.level.org.zalando.logbook: TRACE
```

That's all. Done!


```
https://github.com/zalando/logbook
https://stackoverflow.com/questions/33744875/spring-boot-how-to-log-all-requests-and-responses-with-exceptions-in-single-pl
```