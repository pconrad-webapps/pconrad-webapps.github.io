---
topic: "MongoDB: Java"
desc: "Accessing MongoDB via Java"
indent: true
category_prefix: "MongoDB: "
---

These instructions assume that you have already created a MongoDB instance somewhere.  

You might have followed these three steps, for example:

* [MongoDB: MLab](/topics/mongodb_mlab/) to:
    * Sign up for an [mlab.com](https://mlab.com) account
    * Set up a so-called "new private environment"
* [MongoDB: MLab Database Creation](/topics/mongodb_mlab_database_creation/) to set up a database
* [MongoDB: MLab Database Users and Collections](/topics/mongodb_mlab_database_users_and_collections/) to
    * set up a database user/password
    * set up at least one collection

If you did so, you'll be able to look up the MongoDB URI, something such as:

```
mongodb://<dbuser>:<dbpassword>@ds050559.mlab.com:50559/corgis
```

<style>
table {border-collapse: collapse; border: 1px solid black;}
table * th {border-collapse: collapse; border: 1px solid black; padding: 2px; }
table * td {border-collapse: collapse; border: 1px solid black; padding: 2px;}


</style>


The pieces of this are as follows:

| hostname | port | database name |
|----------|------|---------------|
| `ds050559.mlab.com` | `50559` | `corgis` |

The `dbuser` and `dbpassword` are whatever you set them to when you [created the database user](/topics/mongodb_mlab_database_users_and_collections/) (they are NOT your [mlab.com](https://mlab.com)  username and password.)

With this, you are ready to start coding.

You may find it helpful, if you are using Spring Boot, to start with this code as an example:

* <https://github.com/pconrad-webapps/simple-java-mlab-demo>

The Spring Boot way of using MongoDB is a bit different from the standard way, i.e. using
the MongoDB Java Driver; Spring Boot
provides some nice "middleware" that hides some of the complexity.

See: <https://pconrad-webapps.github.io/topics/mongodb_spring_boot/> for more details.

# MongoDB Java Driver v3.3 References

(This section may not apply if using Spring Boot; instead, see <https://pconrad-webapps.github.io/topics/mongodb_spring_boot/>)

* Javadoc: <http://api.mongodb.com/java/3.3/>
* Mongo-java-driver v3.3: <http://mongodb.github.io/mongo-java-driver/3.3/>
* Connection Settings: <http://mongodb.github.io/mongo-java-driver/3.3/driver/reference/connecting/connection-settings/>
* Getting Started
    * Maven installation: <http://mongodb.github.io/mongo-java-driver/3.3/driver/getting-started/installation-guide/>
    * Quick Tour: <http://mongodb.github.io/mongo-java-driver/3.3/driver/getting-started/quick-tour/>
    * Quick Tour of DB Admin features: <http://mongodb.github.io/mongo-java-driver/3.3/driver/getting-started/quick-tour-admin/>

* BSON: <http://mongodb.github.io/mongo-java-driver/3.3/bson/documents/>
* GridFS from Java (for, for example, storing image data): <http://mongodb.github.io/mongo-java-driver/3.3/driver/reference/gridfs/>

# Other references

* <https://docs.mongodb.com/ecosystem/drivers/java/>
* <https://docs.mongodb.com/getting-started/java/client/>
* <http://www.mkyong.com/tutorials/java-mongodb-tutorials/>
* <https://www.tutorialspoint.com/mongodb/mongodb_java.htm>
* <https://mongodb.github.io/mongo-java-driver/>
* <http://blog.mongodb.org/post/94065240033/getting-started-with-mongodb-and-java-part-i>
* <http://www.journaldev.com/3963/mongodb-java-crud-example-tutorial>
* <https://github.com/mongodb/mongo-java-driver>
