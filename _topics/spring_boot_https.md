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

You also need to create a keystore:

* <https://support.globalsign.com/customer/en/portal/articles/2121490-java-keytool---create-keystore>

Short version:

```
cd src/main/resources
keytool -genkey -alias mydomain -keyalg RSA -keystore KeyStore.jks -keysize 2048
```

You'll be asked a bunch of questions, and then it will generate a file called `KeyStore.jks` (see the name in the command above.)

Then you configure `src/main/resources/application.properties` as follows:

```
http.port=8081
server.port=8082
server.ssl.key-password=password
server.ssl.key-store=classpath:KeyStore.jks
server.ssl.key-store-type=JKS
```

Then you should have http on port 8081, and https on port 8082.
