---
topic: "Spring Boot: Configuration"
desc: "The src/resources/application.yml file, and how to fix 'Could not resolve placeholder ${salt}' type errors"
layout: default
indent: true
---

Under `/src/resources/` the file called `application.properties` or `application.yml` can be used to set various configuration properties
for your application that are resolved at run time instead of compile time.  This allows you to change things without having to recompile your
application.

You can also override properties in this file using environment variables; this allows you to separate out 
some parts of the configuration so that they don't go into version control.  This is *particularly important for sensitive information* such as 
*application secrets* for OAuth, *database passwords*, etc.

As an example, you can create a file called `env.sh` that defines this environment variable by reading data from `app.json`:

```
export SPRING_APPLICATION_JSON=`cat app.json`
```

Type `. env.sh` or `source env.sh` before running your application.

The file `app.json` can define additional values not defined in `application.properties` or `application.yml`.  
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

For more information, see: 

* Documentation on Externalized Configuration: <https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-external-config.html>

