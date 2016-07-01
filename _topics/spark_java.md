---
topic: SparkJava
desc: "A minimalist framework for Java Web Apps"
tags:
- java
---

The [Spark framework for Java](/topics/spark-java.md) is a minimalist framework for building webapps in Java.

It is sometimes called SparkJava to differentiate it from the [popular cluster computing platform called Apache Spark](https://spark.apache.org/docs/1.1.0/index.html), with which it has nothing in common except the name "Spark".

You can read more about SparkJava at:

* the [SparkJava page on this site](/topics/spark-java/)
* [SparkJava's own website](http://sparkjava.com/)

# Why SparkJava, and not Servlets, JSP, Spring, etc.?

Java was the language of choice for some of the earliest enterprise level web applications.  The Java Servlet API, combined with Java Server Pages, was the basis of many large-scale web applications that are still in use today.

Writing web applications using Java Servlets can be a tedious undertaking with a steep learning curve.
The *very first* book in the O'Reilly *Head First* series was a book on this topic, with the unwieldy full title:

> Head First Servlets and JSP: Passing the Sun Certified Web Component Developer Exam

That book is now in its [2nd edition](http://shop.oreilly.com/product/9780596516680.do)

Various frameworks arose to try to simplify the process, including the popular [Spring](https://projects.spring.io/spring-framework/) framework
for *dependency injection*.

All of these frameworks, however, have a steep learning curve.  To get even the simplest application running, i.e. a "Hello World" that simply prints "Hello World" on the root page of the application, requires an elaborate set up of several files, including an XML deployment descriptor, a specific set of directories, configuring a *servlet container*, etc.

With SparkJava, by contrast, with a single source code file (and a proper Maven environment to download the dependencies), you are off and running.     The servlet container is built in to the framework, so there is no separate configuration.

