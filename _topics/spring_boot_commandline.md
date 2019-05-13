---
topic: "Spring Boot: Command Line"
desc: "A Command Line program within the Spring Boot framework"
category_prefix: "Spring Boot: "
indent: true
---

To write a command line program that works inside the Spring Boot framework, you can use:

```java

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;


@Component
public class MyCommandLineRunner implements CommandLineRunner {

  @Override
  public void run(String args...) throws Exception {
  
  }
}
```

This video shows an example: <https://content.pivotal.io/springone-platform-2017/its-a-kind-of-magic-under-the-covers-of-spring-boot-brian-clozel-st%C3%A9phane-nicoll>


The `@Component` annotation is explained here: <http://zetcode.com/springboot/component/>
