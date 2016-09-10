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

But, Maven requires a bit of getting used to.  You'll probably want to read through this [Maven in 5 minutes](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html) tutorial, and work through it at least once on a separate "Hello World" type of project that does NOT involve SparkJava, just to get used to it, before you try Maven on SparkJava.

Once that's done, you can proceed with the steps below.


# A minimal `pom.xml` for a SparkJava project

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

But it is enough to have this pom.xml?  Of course not.  You also need at least one Java source file, e.g. this one:

```java
import static spark.Spark.*;

public class HelloWorld {
    public static void main(String[] args) {
        get("/hello", (req, res) -> "Hello World");
    }
}
```

And that means we have to worry about where to put that `HelloWorld.java` source file in a directory structure.   Maven doesn't want us to just have `HelloWorld.java` and `pom.xml` as siblings in a simple flat directory.   It wants a directory structure more like this one:

For the command:

```
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```

You get:

```
my-app
|-- pom.xml
`-- src
    |-- main
    |   `-- java
    |       `-- com
    |           `-- mycompany
    |               `-- app
    |                   `-- App.java
    `-- test
        `-- java
            `-- com
                `-- mycompany
                    `-- app
                        `-- AppTest.java
```

So, let's try this with a command more appropriate to our local naming conventions.  NOTE: substitute your own id
in place of `jgaucho`, e.g. `jsmith`, `kchen`, etc.

```
mvn archetype:generate -DgroupId=edu.ucsb.cs56.f16.helloSpark.jgaucho \ 
         -DartifactId=HelloSparkJava \
         -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```

Here is the directory tree we get:

```
-bash-4.3$ tree
.
└── HelloSparkJava
    ├── pom.xml
    └── src
        ├── main
        │   └── java
        │       └── edu
        │           └── ucsb
        │               └── cs56
        │                   └── f16
        │                       └── helloSpark
        │                           └── pconrad
        │                               └── App.java
        └── test
            └── java
                └── edu
                    └── ucsb
                        └── cs56
                            └── f16
                                └── helloSpark
                                    └── pconrad
                                        └── AppTest.java

18 directories, 3 files
-bash-4.3$ 
```

The `pom.xml` that results is this one:

```
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-inst
ance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>edu.ucsb.cs56.f16.helloSpark.pconrad</groupId>
  <artifactId>HelloSparkJava</artifactId>
  <packaging>jar</packaging>
  <version>1.0-SNAPSHOT</version>
  <name>HelloSparkJava</name>
  <url>http://maven.apache.org</url>
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
</project>
```

To it, we add the important part, namely this, as a sibling of the other dependency already there, so that now the dependencies part looks like this:

```xml
<dependencies>                                                                                   
    <dependency>                                                                                   
      <groupId>junit</groupId>                                                                     
      <artifactId>junit</artifactId>                                                               
      <version>3.8.1</version>                                                                     
      <scope>test</scope>                                                                          
    </dependency>                                                                                  
    <dependency>                                                                                   
      <groupId>com.sparkjava</groupId>                                                             
      <artifactId>spark-core</artifactId>                                                          
      <version>2.5</version>                                                                       
    </dependency>                                                                                  
  </dependencies>         
```

We also find that way, way down in this directory:

```
HelloSparkJava/src/main/java/edu/ucsb/cs56/f16/helloSpark/pconrad
```

There is an App.java file with these contents:

```java
package edu.ucsb.cs56.f16.helloSpark.pconrad;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
    }
}
```

We are going to replace that with a main program that actually runs a SparkJava webapp.  Note that other than the package name `edu.ucsb.cs56.f16.helloSpark.pconrad`, and the name
of the class (`App` instead of `HelloWorld`), this is identical to the example SparkJava webapp in the tutorial

```java
package edu.ucsb.cs56.f16.helloSpark.pconrad;                                                      

import static spark.Spark.*;                                                                       

public class App {                                                                                 
    public static void main(String[] args) {                                                       
        get("/hello", (req, res) -> "Hello World");                                                
    }                                                                                              
}                                                                                                  
```

Now we are ready to do the maven magic.  We type `mvn package`, which according to the [Maven in 5 minutes guide](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html), has the effect of doing all of the following "phases" of a Maven project:

* validate
* generate-sources
* process-sources
* generate-resources
* process-resources
* compile

When we are done, what do we do to run the thing?   
