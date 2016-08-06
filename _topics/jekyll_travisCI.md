---
topic: Jekyll on TravisCI
desc: "Setting up a Jekyll site on TravisCI (see error messages for broken site builds)"
layout: default
---

You may want to set up your Jekyll site (whether hosted on Github page, or Heroku) to automatically push builds to TravisCI.

Doing so has these advantages:
* If you are using github pages, you won't see the error messages if/when the site build is broken.   TravisCI is the
    one of two ways that Github Pages suggests for making these error messages visible.  (The other way is to run Jekyll locally
    on your own machine (setting up the site on localhost:4000).
    
* When the site is broken, TravisCI will send you emails until the site is fixed.

Here's how to do it:

