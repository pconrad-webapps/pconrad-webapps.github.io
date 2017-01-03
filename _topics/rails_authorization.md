---
topic: "Rails: Authorization"
desc: "Adding login/logout, roles and authorizations"
layout: default
indent: true
---

In any moderately complex web application, you are likely to need users to be able to save data to a database.  

This means you need login/logout with usernames and passwords (otherwise, you'll have spammers and vandals filling up your database in no time).

You'll probably then need some kind of differentiation between regular users and admin users.

# Rails gems for authorization and roles

* `devise`: provides basic login/logout with users, passwords
* `omniauth`: provides login/logout via OAuth (e.g. login with github, facebook, google, twitter, etc.)
* `rolify`: provides a way to distinguish between different roles: e.g. `user`/`admin`, or `student`/`ta`/`instructor`/`admin`
* `cancancan`: provides a way to indicate which roles can access which parts of your application

These can be combined in various ways.    A few notes:

* It may not be necessary to use `devise` if you are going to use `omniauth`, unless you are allowing the user multiple ways to login.

