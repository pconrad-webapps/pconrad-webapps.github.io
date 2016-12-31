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

0.  Type `sqlite3 --version` to make sure that you have `sqlite3` on your system.   
    * Alternatively, you can use `postgres`, which is the preferred option is you are going to deploy on Heroku
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
    ```
4.  Use the `cd` command to change your current working directory to the top level of your repo.  
    * If you are already in that directory, `cd ..` then `cd` back into that directory.
    * The reason is that if `rvm` is working properly, this will signal that you should use the ruby version in the Gemfile, namely `ruby-2.3.3`.
    * If you get the messsage that ruby-2.3.3 is not installed, type `rvm install ruby-2.3.3` to install it.

5.  Try `gem install bundler`
6.  If that works, try `bundle install`
    * Read about bundler here: <http://bundler.io/v1.5/gemfile.html>
    
7.  If that works, add the following line to your Gemfile, and do `bundle install` again:

    ```
    gem 'rails', '>= 5.0.0.rc2', '< 5.1'
    ```
    
    * It is quite common to see this error:
    
    ```
    An error occurred while installing nokogiri (1.7.0), and Bundler cannot continue.
    Make sure that `gem install nokogiri -v '1.7.0'` succeeds before bundling.
    ```
    
    * If you see that, just do what the error message says: `gem install nokogiri -v '1.7.0'`  
    * If it still doesn't work:
        * If on Mac: you may need to install the command line tools for Mac, or a newer version of libxml2
        
8.  You are ready for the `rails new .` command, as in `rails new blog` from the [standard tutorial here](http://guides.rubyonrails.org/getting_started.html#creating-the-blog-application).  We use `.` so that the new application
gets created in the current directory.

    * This will overwrite `.gitignore` and `Gemfile`.  That's ok.
    * BETTER: `rails new . --database=postgresql` so that your app uses postgres from the get go.
    
9. You'll want to manually add the line `ruby "2.3.3"` into that `Gemfile` as the second line   

10. You should be able to continue with the standard rails tutorial from step <http://guides.rubyonrails.org/getting_started.html#hello-rails-bang>.  You may want to go back and look at the last part of step 3, which explains the structure of the Rails directories.

# Next Steps if you want to deploy on Heroku

At whatever stage you are ready to deploy on Heroku, here's what you need to do.

1. Convert from sqlite3 to postgres if you haven't already.    See: https://medium.com/@helenflam/how-to-change-your-rails-app-database-from-sqlite-to-postgresql-before-deploying-to-heroku-ae2acc25c7ac#.ytirsfz8c>, or this shorter version:
    * Edit `Gemfile` to remove `gem 'sqlite3'` and insert `gem 'pg'`
    * Run `bundle install`
    * Replace the `config/database.yml` file with appropriate values (TODO: FILL THIS IN)
    * Use `rake db:setup` and `rake db:migrate` to set up the database.
    * Try `rails server` to see if app still works.

2. Get the Heroku Toolbelt installed on your local system if possible. 
    * <b>If you are working in an academic computing environment</b> (e.g. CSIL at UCSB, ACMS at UCSD), you'll probably
         want to switch to using your own laptop or desktop machine, or a virtual machine where you have root access.
    * The reason is that in an academic computing environment where you don't have root, (e.g. CSIL at UCSB, 
         ACMS at UCSD)  getting the Heroku toolbelt installed involves some nasty hacks, and may require more 
         disk space than you have available (at least that was true as of Fall 2016.  It may or may not be better now.)
    * Most things can be done without the heroku toolbelt, through the Heroku web interface.  One exception is when
         you need to do a command such as "heroku exec ...", e.g. for database operations.


         
         
# MacOS Problems

Problem: various bundle install things don't work.

    * Solution: Make sure you have the command line tools installed: `xcode-select --install`


Problem: `Unable to download data from https://rubygems.org/ - SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (https://api.rubygems.org/specs.4.8.gz)`

    * Solution: `rvm osx-ssl-certs update all`

