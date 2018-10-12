---
topic: "Spring Boot"
desc: "Yet another Java web framework"
layout: default
category_prefix: "Spring Boot: "
topic_index_top: true
---

<https://spring.io/projects/spring-boot>

# Books on O'Reilly Safari Library

Accessible from On-Campus IP Addresses, or through UCSB VPN:

* <https://proquest.safaribooksonline.com/book/programming/java/9781449374631>

# Lots of samples

* <https://github.com/spring-projects/spring-boot/tree/master/spring-boot-samples>

# Custom Error Pages

* <https://hellokoding.com/spring-boot-hello-world-example-with-freemarker/>

# Making it work on Heroku

You must use this line in the heroku maven task.   The part that says `-Dserver.port=$PORT` is particularly important.

```
<web>java -Dserver.port=$PORT  $JAVA_OPTS -jar target/${project.artifactId}-${project.version}.jar</web>
```
# Template Engines

## Freemarker

* <http://zetcode.com/articles/springbootfreemarker/>

## Thymeleaf


## Mustache

