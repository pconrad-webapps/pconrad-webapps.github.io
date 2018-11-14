---
topic: "MongoDB: Python"
desc: "Accessing MongoDB via Python"
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

# Python access via MongoDB

Here are some useful links:

* <http://blog.dwyer.co.za/2013/10/a-basic-web-app-using-flask-and-mongodb.html>
* <https://api.mongodb.com/python/current/api/pymongo/collection.html#pymongo.collection.Collection>
* <http://ucsd-cse-spis-2016.github.io/webapps/databases_mongodb/>
* <https://github.com/ucsd-cse-spis-2016/spis16-webapps-oauth-and-pymongo-v1>



# More about MongoDB on mLab

MongoDB is a particular implementation of a NoSQL database.   There are multiple hosting providers that offer MongoDB implementations "in the cloud" as a service.

The particular one we'll be using for SPIS 2016 is called mLab (<https://www.mlab.com>.  We are using mLab because:

* there is free tier
* using the free tier does not require entering a credit card

# Use mLab.com *directly*, not via the Heroku mLab add-on

Note that we *NOT* using mLab MongoDB Add-On for Heroku&mdash;instead, we are using mLab directly through its own console at <https://www.mlab.com>. 

# Wait, why aren't we using the mLab add-on.

Although it is slightly more convenient to use the Heroku mLab add-on, that add-on requires entering a credit card into Heroku (even though it is free).      What using the Heroku add-on buys you is that with one click, you can:

* Automatically create the database
* Automatically fill in the five parts of the configuration info for the database directly into Heroku's configuration variables
     * For the record, those are: (host, port, database name, database username, database password) 

When you use mLab directly, you have to do those steps manually.  Fortunately, that isn't very difficult.  It's just slightly tedious, but you typically only have to do it once per application, and then you never have to worry about it again (at least not for that app.)

# As an aside, what *is* free on Heroku?

In fact, the only free services on Heroku that do not require entering a credit card are:

* Up to five running applications (but no more than that)
* The Heroku Postgres add-on (which is for an SQL-based database)
    * We certainly could use Postgres, but its a bit more complicated.
* The Heroku Connect add-on 
    (which is for integration with Salesforce.com, something not of particular interest to us in SPIS.)


# `Flask-PyMongo` Python Module 

There is a Python module called [Flask-PyMongo](http://flask-pymongo.readthedocs.io/en/latest/) that we can install with `pip install` to make working with MongoDB easier.


```
pip install Flask-PyMongo
```


You'll also need to make sure that you add these lines to the `requirements.txt` file for any webapp that you want to 
run on Heroku with MongoDB:

```
Flask-PyMongo==0.4.1
pymongo==3.3.0
```

