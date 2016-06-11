# Continuous Integration with Travis-CI

Travis-CI offers a continuous integration service&mdash;that is, it will continously test your application each time you update the
code for it in your github.com repository.

This is great for web applications (indeed, for all applications)

In principle, you will thorougly test your web application after each change.  You will have 
created unit tests, integration tests, and end-to-end tests, and you'll run them (by hand) before committing any new change.

In practice, you sometimes forget.   Continuous integration ensures that every time you commit a change, there is a "robot" that 
runs your tests as a "backup", to ensure that all is well.  If all is not well, you'll get a notication of that (for example, 
by email, or by a "status bug" that you can put in the README.md file of your repository.

# TODO: More info on Travis-CI here

# Travis-CI with Ruby

When using Travis-CI with Ruby, it is important to remember to ensure that if you specify a Ruby version in your `Gemfile`, that you
specify the same one in your `.travis.yml` file.  For example:

`Gemfile`:
~~~
source 'https://rubygems.org'
ruby "2.1.7"
...
~~~

`.travis.yml`:
~~~
language: ruby
rvm:
  - 2.1.7
script: "bundle exec jekyll build"
~~~
