---
topic: "MongoDB: Spring Boot (Java)"
desc: "Accessing MongoDB via Spring Boot"
indent: true
category_prefix: "MongoDB: "
---

This repo has a demo:

* <https://github.com/pconrad-webapps/simple-java-mlab-demo>

See also:

* <https://spring.io/guides/gs/accessing-data-mongodb/>

# Setting up Spring Boot with MongoDB

## Setting up the data object

The first step is to set up a plain old java object that:
* has private data members for the data you want
* follows the Java Bean standard (no-arg constructor, getters, setters)
* has a special attribute: `@Id private String id;` which uses the annotation:
   ```
   import org.springframework.data.annotation.Id;
   ```
Here's an example, using Lombok (<https://projectlombok.org/>) to set up the Java Bean boilerplate stuff.  
This also sets up a constructor
for all of the required arguments (the ones we mark with `@NonNull`), which is usually everything
except for the `id`.  

```
package edu.ucsb.cs56.pconrad.mlab.mlabdemo;

import lombok.Data;
import lombok.RequiredArgsConstructor; // generates constructor for fields marked with @NonNull                              
import lombok.NoArgsConstructor;  // @NonNull property ignored by this constructor                                                                                            
import lombok.NonNull;
import org.springframework.data.annotation.Id;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class BuildingCode {

    @Id private String id;
    @NonNull private String code;
    @NonNull private String name;
}
```
