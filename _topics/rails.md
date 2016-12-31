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

# Next Steps if you want to deploy on Heroku

At whatever stage you are ready to deploy on Heroku, here's what you need to do.

1. Hopefully, if you were planning to use Heroku, you started with postgres right from the start.  If not, converting to postgres now is the first thing you'll need to do.     
    
    * See: https://medium.com/@helenflam/how-to-change-your-rails-app-database-from-sqlite-to-postgresql-before-deploying-to-heroku-ae2acc25c7ac#.ytirsfz8c>, or this shorter version:
    * Edit `Gemfile` to remove `gem 'sqlite3'` and insert `gem 'pg'`
    * Run `bundle install`
    * Replace the `config/database.yml` file with appropriate values (See: <http://stackoverflow.com/questions/6710654/change-from-sqlite-to-postgresql-in-a-fresh-rails-project>
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

3. Add a file named `Procfile` in the root of the directory, with the following contents:

   ```
   web: bundle exec puma -C config/puma.rb
   ```
   
   This file is the one that tells Heroku "where to start" in our repository to run our application.  It is the Heroku
   equivalent of running `rails server`.   Commit this file to the repo.

4. At the command line, type `heroku login`, then at the top line of the repo, type `heroku create`.
         
    ```
    Phills-MacBook-Pro:rails-app-practice3 pconrad$ heroku create
    Creating app... done, ⬢ pacific-sierra-80807
    https://pacific-sierra-80807.herokuapp.com/ | https://git.heroku.com/pacific-sierra-80807.git
    Phills-MacBook-Pro:rails-app-practice3 pconrad$ 
    ```
    
    * The first URL, e.g. <https://pacific-sierra-80807.herokuapp.com/> is the one at which you will visit your application.
    * The second, e.g. <https://git.heroku.com/pacific-sierra-80807.git> is the git remote that is now called `heroku`, as in `git push heroku master` (instead of `git push origin master`).
    * To deploy, you type `git push heroku master`
    
# MacOS Problems

Problem: various bundle install things don't work.

    * Solution: Make sure you have the command line tools installed: `xcode-select --install`


Problem: `Unable to download data from https://rubygems.org/ - SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (https://api.rubygems.org/specs.4.8.gz)`

    * Solution: `rvm osx-ssl-certs update all`

