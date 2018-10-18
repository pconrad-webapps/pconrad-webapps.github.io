---
topic: "Spring Boot: HTTPS"
desc: "Enabling HTTPS"
layout: default
indent: true
---

* <https://dzone.com/articles/enable-httphttps-spring-boot>

The code at the link above needs the following imports:

```java
import org.apache.catalina.connector.Connector;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.embedded.tomcat.TomcatEmbeddedServletContainerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
```
