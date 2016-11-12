---
topic: "MongoDB: MLab Database Creation"
desc: "Setting up a new database"
indent: true
---

<div style="display:none;">
https://pconrad-webapps.github.io/topics/mongodb_mlab_databases
</div>

The instructions on this page assume that you've already done the initial set up steps on the page [MongoDB: MLab](/topics/mongodb_mlab/)
to sign up for an mlab account, and create a so-called "new private environment".

# Setting up a new deployment (database)

To set up a new deployment (which is what MongoDB calls a database), start from the main page.  In the section with the heading "Mongo DB Deployments" click on the button that says "Create New", as shown here:

![mlab-create-deployment-click-create-new.png](mlab-create-deployment-click-create-new.png)


# Choose Single-Node to get to the free plans

On the screen that follows, <b>you have to hunt a bit</b> to find the <b>free</b> plans.

The first step is to click the "Single-Node" button, as shown in the picture below.

![mlab-create-new-deployment-click-single-node.png](mlab-create-new-deployment-click-single-node.png)

# Then, choose one of the free Sandbox plans

The screen that follows has buttons for Amazon, Google and Microsoft cloud services.  As of this writing (November 2016), there is a free sandbox plan based on each of those providers, but each is offered in only one data center so you may have to hunt a bit to find the right settings.  The image below shows one example, based on Microsoft Azure.   Examples of the others are available if you click through the links below.

In any case, enter a database name, and click the "Create new Mongo DB Deployment" button.

![mlab-create-new-deployment-azure-db-name-and-create-button.png](mlab-create-new-deployment-azure-db-name-and-create-button.png)

Click to see free sandbox examples based on [Amazon](mlab-create-new-deployment-amazon-sandbox.png){: data-ajax="false" }  [Google](mlab-create-new-deployment-google-sandbox.png){: data-ajax="false" }.  You may have to scroll down in those, past the price tables, to get to the place where you [Enter the database name and click the create button](mlab-create-new-deployment-scroll-down-to-db-name-and-create-button.png){: data-ajax="false" }

# After creating the database, create a User and a Collection

After creating the database, you must create at least one "User" and at least one "Collection".

Instructions for that are on a separate web page: [MongoDB: mlab database users and collections](/topics/mongodb_mlab_database_users_and_collections/)

