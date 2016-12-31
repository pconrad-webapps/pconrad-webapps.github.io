---
topic: Rails
desc: Developing web apps in Ruby on Rails
layout: default
category_prefix: "Rails: "
topic_index_top: true
---

Ruby on Rails, often just called  *Rails* is a web development platform based on the programming language Ruby.

# Deployment

For apps developed in Rails:

* They can be deployed in the cloud on [Heroku](/topics/heroku)
* Continous integration is available through [Travis-CI](/topics/travis-ci/)

# Getting Started

These instructions use Ruby 2.2.4, per the instructions that were [here for Heroku as of 12/30/2016](https://devcenter.heroku.com/articles/ruby-versions).

1.  Install rvm.
    * It isn't absolutely necessary, but it is very helpful, to install the Ruby Version Manager (rvm) first.
    * Installing rvm allows you, when you are working on Rails project, to be always consistently use the same version of
        Ruby and of Rails each time you work on the project, even across different systems.
2.  Create and clone a new github repo.   
    * Make it public if you want to be able to use various deployment tools for free (Heroku, Travis-CI, etc.)
    * Use the `.gitignore` for Rails
3.  In the repo, add a file called `Gemfile` with these contents:
    ```
    source "https://rubygems.org"
    ruby "2.2.4"
    ```
4.  Type `rvm use ruby-2.2.4` 
    * If you get the messsage that ruby-2.2.4 is not installed, type `rvm install ruby-2.2.4` to install it.
    


# MacOS Problems


Problem: `Unable to download data from https://rubygems.org/ - SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (https://api.rubygems.org/specs.4.8.gz)`

    * Solution: `rvm osx-ssl-certs update all`

