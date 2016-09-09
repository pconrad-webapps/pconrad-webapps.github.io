---
topic: "SparkJava: Getting Started"
desc: "A more clear tutorial"
tags:
- java
---

To get started with SparkJava, you should have, at a minimum, the following in your computing environment:

* Java 1.8 or higher (this is needed because SparkJava depends on Lambda functions which were introduced in Java 1.8)
    * To check for Java 1.8, use `java -version`
* Maven 
    * To check for Maven, use `mvn -version`
    
Here's an example of sane output for a suitable computing environment (this happens to be from `csil.cs.ucsb.edu` during September 2016:

```
-bash-4.3$ java -version
openjdk version "1.8.0_91"
OpenJDK Runtime Environment (build 1.8.0_91-b14)
OpenJDK 64-Bit Server VM (build 25.91-b14, mixed mode)
-bash-4.3$ mvn -version
Apache Maven 3.2.5 (NON-CANONICAL_2015-04-01T06:42:27_mockbuild; 2015-03-31T23:42:27-07:00)
Maven home: /usr/share/maven
Java version: 1.8.0_91, vendor: Oracle Corporation
Java home: /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.91-2.b14.fc22.x86_64/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "4.4.14-200.fc22.x86_64", arch: "amd64", family: "unix"
-bash-4.3$ 
```

Here's 




# More about Maven

Maven is a build manager similar to the `make` utility used with C/C++, or the `ant` utility commonly used with Java.

Instead of a `makefile` or a `build.xml` file, Maven uses a file called `pom.xml` which stands for *Project Object Model*.

For the most part, this is all you need to know about Maven&mdash;anything else you need to know, we'll introduce as we go
through the tutorial.



 
