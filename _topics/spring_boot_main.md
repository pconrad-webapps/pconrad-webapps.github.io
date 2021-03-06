---
topic: "Spring Boot: main"
desc: "What the main program looks like in a Spring Boot Application"
layout: default
indent: true
---

The main in a Spring Boot application typically looks something like this.

```
package com.example.hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class HelloApp {

  public static void main(String [] args) {
     SpringApplication.run(HelloApp.class, args)
  }  
}

```

You can find an example in this tutorial: <https://content.pivotal.io/springone-platform-2017/its-a-kind-of-magic-under-the-covers-of-spring-boot-brian-clozel-st%C3%A9phane-nicoll>

# The annotation `@SpringBootApplication`

The annotation `@SpringBootApplication` is an abbreviation for three annotations:

```
@SpringBootConfiguration
@ComponentScan
@EnableAutoConfiguration
```

See: <https://www.youtube.com/watch?time_continue=331&v=jDchAEHIht0>

# The annotation `@ComponentScan`

If this occurs on a class in `com.example.hello`, it will scan:

* `com.example.hello`
* subpackages of `com.example.hello`, e.g.
   * `com.example.hello.alpha`
   * `com.example.hello.bravo`
   * `com.example.hello.charlie`
   
But it will NOT scan:

* `com.example.charlie`

So the `@SpringBootApplication` needs to be on a class that is at the root of your package structure.
