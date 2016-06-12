# pconrad-webapps.github.io

This github repo contains the source code for the site: http://pconrad-webapps.github.io

It uses [Jekyll](https://jekyllrb.com/) and is published via [github-pages](https://pages.github.com/).

To contribute content, or make corrections, fork this repo, edit it, and send me a pull request.

----

Jekyll status on Travis-CI: [![Build Status](https://travis-ci.org/pconrad-webapps/pconrad-webapps.github.io.svg?branch=master)](https://travis-ci.org/pconrad-webapps/pconrad-webapps.github.io)

* Click the status image to see this repo on Travis-CI
* To add a status image like this in your README.md, see [these instructions](https://docs.travis-ci.com/user/status-images/)


To test locally:
* One time setup:
    * `git clone` the repo
    * Install rvm (the Ruby version manager)
    * Run `./setup.sh` to install correct ruby version, bundler version, and bundle the gems
* From then on, to test the site locally:
    * Run `./jekyll.sh
    * Point browser to localhost:4000
