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

Here's output where Java works, but Maven doesn't:

```
Phills-MacBook-Pro:~ pconrad$ java -version
java version "1.8.0_31"
Java(TM) SE Runtime Environment (build 1.8.0_31-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.31-b07, mixed mode)
Phills-MacBook-Pro:~ pconrad$ mvn -version
-bash: mvn: command not found
Phills-MacBook-Pro:~ pconrad$ 
```

Since Maven is pure Java software, installing is as simple as downloading the distribution, and then making sure the appropriate `bin` directory is in your path.      We'll defer the details of that process for now, and leave it as an exercise to the student to figure it out&mdash;or just use a platform where it is already installed (such as CSIL.)

# More about Maven

Maven is a build manager similar to the `make` utility used with C/C++, or the `ant` utility commonly used with Java.

Instead of a `makefile` or a `build.xml` file, Maven uses a file called `pom.xml` which stands for *Project Object Model*.

For the most part, this is all you need to know about Maven&mdash;anything else you need to know, we'll introduce as we go
through the tutorial.

# Starting with a minimal `pom.xml`

As [explained here](https://sparktutorials.github.io/2015/04/02/setting-up-a-spark-project-with-maven.html) a minimal `pom.xml` file for a SparkJava hello world project might start out looking like this.

```xml
<project>
    <!-- model version - always 4.0.0 for Maven 2.x POMs -->
    <modelVersion>4.0.0</modelVersion>

    <!-- project coordinates - values which uniquely identify this project -->
    <groupId>com.mycompany.app</groupId>
    <artifactId>my-app</artifactId>
    <version>1.0</version>

    <!-- library dependencies -->
    <dependencies>
        <dependency>
            <groupId>com.sparkjava</groupId>
            <artifactId>spark-core</artifactId>
            <version>2.5</version>
        </dependency>
    </dependencies>
</project>
```

A few things to note:

* The highest level xml element is `<project>`
* The `<groupId>` element should probably be changed from `com.mycompany.app` to something that uniquely identifies your course, quarter, and either your UCSBNetID, githubid, or csil username, e.g. `edu.ucsb.cs56.f16.lab03.jgaucho`
* The most important part that actually matters in terms of making the thing work properly is the place where
    the `<dependency>` element where it indcates that this project depends on an artifact called `spark-core` version `2.5` from `com.sparkjava`.   This part is the part that will cause the appropriate jar files, and any jar files those jar 
    files depend on, to get downloaded, and put into the classpath.

