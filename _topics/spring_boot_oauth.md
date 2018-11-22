---
topic: "Spring Boot: OAuth"
desc: "Social login with Spring Boot"
layout: default
indent: true
---


Two main alternatives:
* pac4j: <https://github.com/pac4j/spring-webmvc-pac4j>
* spring-boot's own approach 

# Pac4j:

Start with this: 

* pac4j: <https://github.com/pac4j/spring-webmvc-pac4j>

# Spring boot's own approach

<https://spring.io/guides/tutorials/spring-boot-oauth2/>

Note that you may also need this information for managing the configuration secrets securely:

* <https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-external-config.html>

This may be more useful

* <https://github.com/spring-projects/spring-boot/tree/master/spring-boot-samples/spring-boot-sample-oauth2-client>

Section 4 of this document, which describes the OAuth2 client, may also be relevant:
* <https://docs.spring.io/spring-security-oauth2-boot/docs/current-SNAPSHOT/reference/htmlsingle/>

The format of the Callback URL should apparently be:

```
http://localhost:8080/login/oauth2/code/github
```

OR

```
https://my-heroku-app-name.herokuapp.com/login/oauth2/code/github
```

# OAuth with Spring Boot

* spring-boot-try-github-oauth

# More notes

* There seems to be some movement in terms of updating libraries from an older version to a newer version: <https://groups.google.com/forum/?hl=en#!topic/pac4j-users/VeOMuiYiI6A>
