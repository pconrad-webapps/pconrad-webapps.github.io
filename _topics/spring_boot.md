---
topic: "Spring Boot"
desc: "Yet another Java web framework"
layout: default
category_prefix: "Spring Boot: "
topic_index_top: true
---

<https://spring.io/projects/spring-boot>

# Getting Started Video Tutorials

* [From Zero to Hero with Spring Boot (Brian Clozel of Pivotal)](https://www.youtube.com/watch?v=aA4tfBGY6jY) (Dec 14, 2017)
   * Code is here: <https://github.com/bclozel/issues-dashboard>

# Books on O'Reilly Safari Library

Accessible from On-Campus IP Addresses, or through UCSB VPN:

* <https://proquest.safaribooksonline.com/book/programming/java/9781449374631>

# Videos

* [Spring Boot MVC](https://www.youtube.com/watch?v=iCQspqBpOB0)

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
   * <https://github.com/pconrad-webapps/spring-boot-freemarker-zetcode>

## Thymeleaf

* <https://spring.io/guides/gs/handling-form-submission/>
   * Code (works): <https://github.com/ucsb-cs56-pconrad/spring-boot-thymeleaf-forms>
   * More complete version of code: <https://github.com/spring-guides/gs-handling-form-submission.git>
* <http://zetcode.com/articles/springbootthymeleaf/>
    * Code (may not be working yet): <https://github.com/pconrad-webapps/spring-boot-thymeleaf-zetcode>

## Mustache

