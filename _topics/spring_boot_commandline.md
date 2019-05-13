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

Part of the magic of Spring is that you can create a constructor for this class, e.g.

```
  private final HelloService helloService;
  public MyCommandLineRunner(HelloService helloService) {
    this.helloService = helloService;
  }

```

And the cool thing is that:
*  You never actually have to invoke this constructor.  It gets automatically invoked by the Spring Boot framework
*  You never have to invoke the constructor for the `HelloService` instance either.  As long as there is some `Bean`
   that Spring knows about that implements `HelloService`, it will automatically instantiate that `Bean` and pass
   the instance into the constructor.
   
This allows you to change the implementation of `HelloService` while minimizing the changes to the code.
