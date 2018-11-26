---
topic: "MongoDB: MLab Databases, Users and Collections"
desc: "Next steps after creating a database"
indent: true
category_prefix: "MongoDB: "
---

<div style="display:none;">
https://pconrad-webapps.github.io/topics/mongodb_mlab_database_users_and_collections
</div>

The instructions on this page assume that you've:

* already done the initial set up steps on the page [MongoDB: MLab](/topics/mongodb_mlab/)
to sign up for an mlab account, and create a so-called "new private environment"
* created a database, following the instructions at [MongoDB: MLab Database Creation](/topics/mongodb_mlab_database_creation/)

The next step is to create at least one user, and at least one collection. This page will walk you through the process.

# Start by clicking name of database

From the main menu of the [https://mlab.com](https://mlab.com), click the name of the database to get started, as shown:

![mlab_click_name_of_database.png](mlab_click_name_of_database.png)

# Start by creating a database user

Your application will not be able to access your database unless you associate a user and password with it.  

It is <b>important to note: this is NOT the same as your mlab.com username/password!</b>

Instead, this is a username password that is ONLY used by an application in order to access the database.

You will typically record this username/password in a configuration file or environment variable.  For example, when using Heroku,
the value will likely be stored in one of the Config Variables for your application.   It is considered bad practice to hard code this in code that you commit into a github repo, even a private one.  Instead, put it in a configuration file that is in your .gitignore.

A good practice is to set up the password in a configuration file as a long random string of letters and digits, e.g. 

```
export MONGO_DB_USER=corgisuser
export MONGD_DB_PASSWORD=e8gewFE273WFa9fE0wGe3j18
```

Then, when you create the user and password, you can copy paste from your configuration file.

To create the user, click on the Users tab on this screen:

![mlab-database-click-users-tab.png](mlab-database-click-users-tab.png)

Then, click to create a user:

![mlab-click-add-database-user.png](mlab-click-add-database-user.png)

Enter the information for the user, and click <b>Create</b>:

![mlab_create_database_user_and_set_password.png](mlab_create_database_user_and_set_password.png)

# Add a collection

Finally, in order to use your new database, you will need at least one collection.

To create a collection:

* Click on the Collections tab, and then click the button to create a new collection.
* Enter a name for the collection, as shown below, then  click <b>Create</b>:

![mlab_database_create_collection_airlines.png](mlab_database_create_collection_airlines.png)

# Empty Collection, ready to use

You now have an empty collection, ready to use.  It should look something like this:

![mlab-airlines-collection-with-zero-documents.png](mlab-airlines-collection-with-zero-documents.png)

# Next Steps

Your next steps are to write some code that interacts with your newly created collection.  The way you do that will
depend on the programming language you are using to write your application.

* [MongoDB: Java](/topics/mongodb_java/)
* [MongoDB: Python](/topics/mongodb_python/)
