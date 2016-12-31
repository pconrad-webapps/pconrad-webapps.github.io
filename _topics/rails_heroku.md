---
topic: "Rails: heroku"
desc: "Deploying rails apps on Heroku"
layout: default
indent: true
---


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

5. After typing `git push heroku master` you can monitor the progress of the deploy by navigating to the heroku dashboard for
    the app, and navigating to the activity tab.  
    
    * For example:
        * If your app is `pacific-sierra-80807`, then
        * The activity link is: <https://dashboard.heroku.com/apps/pacific-sierra-80807/activity>
