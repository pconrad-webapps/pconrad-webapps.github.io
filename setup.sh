#!/usr/bin/env bash

echo "Installing software needed to run Jekyll locally... "
rvm install ruby-2.4.0
rvm use 2.4.0
gem install bundler
bundle install --path vendor/bundle
echo "Done."
