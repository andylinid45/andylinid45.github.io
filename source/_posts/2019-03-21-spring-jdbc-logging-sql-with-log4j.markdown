---
layout: post
title: "Spring JDBC logging SQL with log4j"
date: 2019-03-21 14:54:13 +0800
comments: true
categories: [java, spring]
---

```
<logger name="org.springframework.jdbc.core.JdbcTemplate">
  <level value="debug" />
</logger>
<logger name="org.springframework.jdbc.core.StatementCreatorUtils">
  <level value="trace" />
</logger>
<logger name="org.springframework.jdbc.datasource.DataSourceTransactionManager">
  <level value="debug" />
</logger>
```

https://stackoverflow.com/questions/1792244/spring-jdbc-is-not-logging-sql-with-log4j