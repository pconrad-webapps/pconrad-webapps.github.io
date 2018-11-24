---
topic: "Spring Boot: Heroku"
desc: "Running Spring Boot Applications On Heroku"
layout: default
indent: true
category_prefix: "Spring Boot: "
---

To run a Spring Boot application on Heroku:

1. If you are using the `heroku-maven-plugin` be sure that the `<web>` element includes setting the port number to the 
   one that Heroku wants the application to run on.  In the example below, `jar-file-name-1.0` is just an example.
   It should actually match the name of the jar file created by your `pom.xml`.  It's the `--server.port=$PORT` that 
   you are more likely to be missing.
   
   ```
   <processTypes>
            <web>java $JAVA_OPTS -jar target/jar-file-name-1.0.jar --server.port=$PORT</web>
   </processTypes>
   ```

2. Similarly, if you are using the `Procfile` to start up the application by automatically deploying a branch from the Heroku dashboard,
   then you'll need to be sure the `Profile` contains the `--server.port=$PORT` flag, e.g.
   

# See also

* Heroku's Documentation for Spring Boot: <https://devcenter.heroku.com/articles/deploying-spring-boot-apps-to-heroku>
* DZone documentation for Spring Boot on Heroku: <https://dzone.com/articles/spring-boot-heroku-and-cicd>
