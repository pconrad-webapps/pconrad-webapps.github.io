---
topic: "Jekyll on Travis-CI"
desc: "Setting up a Jekyll site on Travis-CI (so you can see the error messages)"
layout: default
---

# Why should I set up continuous integration for a [Jekyll](/topics/jekyll/) site on Travis-CI

Setting up a [Jekyll](/topics/jekyll/) site on Github Pages is super convenient.

But one thing Github Pages didn't provide is *access to the error messages* that you get when your site is set up 
incorrectly.   Instead, you just get a "404 unavailable" message, or your site doesn't update (your changes don't 
seem to have any effect.)

The best way to remedy this&mdash;in fact its Github Pages own suggestion&mdash;is to set up continuous integration for
your Jekyll site via Travis-CI.

Doing so has these advantages:

* If you are using github pages, you won't see the error messages if/when the site build is broken.   TravisCI is the
    one of two ways that Github Pages suggests for making these error messages visible.  (The other way is to run Jekyll locally
    on your own machine (setting up the site on localhost:4000).
    
* When the site is broken, TravisCI will send you emails until the site is fixed.

Here's how to do it:

1.  Add a .travis.yml file to the root of your repo, with the following contents:

    ```
    language: ruby
    rvm:
      - 2.1.7
    script: "bundle exec jekyll build"
    ```

2.  Make sure this line is in your _config.yml:

    ```
    exclude: [vendor]
    ```
    
