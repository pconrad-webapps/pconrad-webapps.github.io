---
topic: "Spring Boot: Configuration"
desc: "The src/resources/application.yml file, and how to fix 'Could not resolve placeholder ${salt}' type errors"
layout: default
indent: true
---

If you get a message such as this at run time:

```
Could not resolve placeholder 'salt' in value "${salt}"
```

Here's how to resolve it:
* Short version:  Type this before you do `mvn spring-boot:run`.  Substitute the name of the missing variable in place of `salt`, and and appropriate value in place of `foobar`.  
   ```
   export export SPRING_APPLICATION_JSON='{"salt":"foobar"}'
   ``` 
* If there is more than one placeholder variable that cannot be resolved, using JSON syntax to define every name/value pair:
   ```
   export export SPRING_APPLICATION_JSON='{"thing1":"peanut butter","thing2":"jelly"}'
   ``` 

* For the longer version, see below.

# The longer version

You can use this Linux command line trick: `grep salt -r src`
* `grep` is a "search for string match" program (grep stands for: global regular expression print)
* `grep salt` searches for the string `salt`.  
* `-r src` "recursively searchs" under `src` for any file containing the string `salt`

We get this result:

```
$ grep salt -r src
src/main/java/com/zetcode/config/Pac4jConfig.java:    @Value("${salt}")
src/main/java/com/zetcode/config/Pac4jConfig.java:    private String salt;
src/main/resources/application.yml:salt: asd8fa9e8fja9we8fje
$ 
```

In context, the code looks like this:

```java
  @Value("${salt}")
  private String salt;
```

That codes says: at run time, go initialize the value of the private `String` instance variable `salt` from the `application.properties` file (or the equivalant) defined for this application.     This is typically a file on the disk where we can set various configuration properties
for your application that are resolved at run time instead of compile time.  This allows you to change things without having to recompile your application.   

Under `/src/main/resources/` the file called `application.properties`  can be used to set various configuration properties
for your application.  As an alternative, the file can be called `application.yml`, and YAML syntax can be used instead of the usual syntax for Java properties files.  (More on this at the links below.  Note that using `.yml` may require an extra dependency in `pom.xml`).

You can also override properties in this file using environment variables; this allows you to separate out 
some parts of the configuration so that they don't go into version control.  This is *particularly important for sensitive information* such as 
*application secrets* for OAuth, *database passwords*, etc.  

The environment variable `SPRING_APPLICATION_JSON` can be used to override values in `application.properties` (or `application.yml`).

For example, suppose you create a file called `env.sh` that defines this environment variable by reading data from `app.json`:

```
export SPRING_APPLICATION_JSON=`cat app.json`
```

You can type `. env.sh` or `source env.sh` before running your application to initialize the value of `SPRING_APPLICATION_JSON` from the contents of `app.json`.

The file `app.json` can define additional values not defined in `application.properties` or `application.yml`.
* It should be written using JSON syntax.
* `app.json` values can also override values deined there (values from `SPRING_APPLICATION_JSON` take precdence).  
* If values in `app.json` contain any secrets, `app.json` should NOT be put under version control (i.e. it should appear in your `.gitignore`

An example `app.json` (with fake data, of course):

```json
{
    "github": {
        "client": {
            "clientId": "b0cfake66fakesdfi8923r",
            "clientSecret": "619fake9491fake6fakes98jffake09dsf"
        }
    }
}
```

# Using YAML

You may need this in `pom.xml`.  Some "parent" POM instances already include this, but it's safer to specify it just in case.sy

```
<!-- https://mvnrepository.com/artifact/org.yaml/snakeyaml -->
<dependency>
    <groupId>org.yaml</groupId>
    <artifactId>snakeyaml</artifactId>
    <version>1.23</version>
</dependency>
```

# More on external configuration

For more information, see: 

* Documentation on Externalized Configuration: <https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-external-config.html>

