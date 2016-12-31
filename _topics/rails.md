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

These instructions use Ruby 2.3.3, which was reasonably up-to-date as of 12/30/2016.    

While it is not strictly necessary to use rvm and bundler, it does make things considerably easier <em>in the long term</em> to start off your Ruby practice that way.

0.  Decide whether you are going to use `sqlite3 or `postgres` as your database.   
    * It is MUCH EASIER to get this right the first time then to try to change horses in midstream.
    * If you are just building a practice app on your local system, and will NOT NEED to deploy this in production later, it's fine to stick with `sqlite3`, which is an easier database to work with.
    * BUT... if you are working with something you may want to actually deploy on Heroku, you should start with postgres right from the start. 
    
1.  If using sqlite3, type `sqlite3 --version` to make sure that you have `sqlite3` on your system.   
    * On MacOS 10.5 and higher, sqlite3 is typically preinstalled.
    
1.  If using postgres:
    * For MacOS, download from <http://postgresapp.com/>

1.  If it isn't already there, install rvm on your system.
    * It isn't absolutely necessary, but it is very helpful, to install the Ruby Version Manager (rvm) first.
    * Working this way, you'll install `rails` through rvm.   This allows you more flexibility in which
        version of rails you use&mdash;the
        rails version and ruby version are selected on a per project basis.
    * Using rvm allows you, when you are working on Rails project, to be always consistently use the same version of
        Ruby and of Rails each time you work on the project, even across different systems.
        
2.  Create and clone a new github repo.   
    * Make it public if you want to be able to use various deployment tools for free (Heroku, Travis-CI, etc.)
    * Use the `.gitignore` for Rails
    
3.  In the repo, add a file called `Gemfile` with these contents:
    ```
    source "https://rubygems.org"
    ruby "2.3.3"
    gem 'rails', '>= 5.0.0.rc2', '< 5.1'
    ```
    
    This is a temporary Gemfile to specify to rvm which version of Ruby and Rails we want to use, so that we can do each of the following things:
    
    * check that `rvm` is working properly 
    * install the "gem" for rails, but *just for this project* (rather than globally on our whole system)
    
4.  Use the `cd` command to change your current working directory to the top level of your repo.  
    * If you are already in that directory, `cd ..` then `cd` back into that directory.
    * The reason is that if `rvm` is working properly, this will signal that you should use the ruby version in the Gemfile, namely `ruby-2.3.3`.
    * If you get the messsage that ruby-2.3.3 is not installed, type `rvm install ruby-2.3.3` to install it.

5.  Try `gem install bundler`

6.  If that works, try `bundle install`
    * Read about bundler here: <http://bundler.io/v1.5/gemfile.html>
        
    * It is quite common to see this error:
    
    ```
    An error occurred while installing nokogiri (1.7.0), and Bundler cannot continue.
    Make sure that `gem install nokogiri -v '1.7.0'` succeeds before bundling.
    ```
    
    * If you see that, just do what the error message says: `gem install nokogiri -v '1.7.0'`  
    * If it still doesn't work:
        * If on Mac: you may need to install the command line tools for Mac, or a newer version of libxml2
        
8.  You are ready to setup a new rails application.   The command in the [standard tutorial here](http://guides.rubyonrails.org/getting_started.html#creating-the-blog-application) is `rails new blog`, but we'll do it
    a bit differently:

    * For postgres, use `rails new . --database=postgresql`
    * For sqlite3, use `rails new .`

    We use `.` so that the new application gets created in the current instead of in a subdirectory called, for example,
    `blog`.

    This will overwrite certain files such `.gitignore` and `Gemfile`, and you'll be prompted to see if that's ok with you.
    Indicate that it is ok to overwrite them.   The original `Gemfile` we set up was just a temporary bootstrap.
    
9. Now manually add the line `ruby "2.3.3"` into the new `Gemfile` after the line `source "https://rubygems.org"`

10. Try running these commands:
    ```
    rake db:setup
    rake db:migrate
    rails server
    ```
    
    Then visit <http://localhost:3000> and see if you have a working rails app.

11. If you have a working rails app, commit the code to the github repo.

12. You should be able to continue with the standard rails tutorial from step <http://guides.rubyonrails.org/getting_started.html#hello-rails-bang>.  You may want to go back and look at the last part of step 3, which explains the structure of the Rails directories.


    
# MacOS Problems

Problem: various bundle install things don't work.

    * Solution: Make sure you have the command line tools installed: `xcode-select --install`


Problem: `Unable to download data from https://rubygems.org/ - SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (https://api.rubygems.org/specs.4.8.gz)`

    * Solution: `rvm osx-ssl-certs update all`

