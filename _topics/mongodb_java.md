---
topic: "MongoDB: Java"
desc: "Accessing MongoDB via Java"
indent: true
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
