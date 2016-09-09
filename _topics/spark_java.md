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

# Getting Started with SparkJava locally

The standard [tutorial for getting started with SparkJava](http://sparkjava.com/documentation.html#getting-started) assumes familiarity with a few things that you may not already
know about, including these:

* Maven details such as:
   * pom.xml files
   * dependencies
* Java Lambda Functions
* Web application development concepts, including:
    * routes
    * sessions
    * request/response objects
    * forms

So, I've created my own tutorial that starts from first principles and tries to explain these things along the way.

That tutorial can be found here: [SparkJava: Getting Started](/topics/spark_java_getting_started/)

# Getting Started with SparkJava on Heroku

There are several tutorials for getting started with SparkJava on Heroku:
* Here's one from [SparkJava's tutorials](https://sparktutorials.github.io/2015/08/24/spark-heroku.html)
* As of 2016-07-01, Heroku's [Getting Started with Java](https://devcenter.heroku.com/articles/getting-started-with-java#introduction) uses SparkJava.  (Note: Heroku changes their tutorial articles from time to time, so by the time you read this, it may no longer be the case.)
* If you are a UCSB student working on CSIL (or a student elsewhere working in a similar "lab computer" environment where you have a Unix account, but you don't have root), this [lab from UCSB's CMPSC56 M16 course](http://ucsb-cs56-m16.github.io/lab/lab03/) may be helpful in getting around the difficulties with installing the Heroku toolbelt on Linux/Unix when you don't have sudo (root) access.



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

